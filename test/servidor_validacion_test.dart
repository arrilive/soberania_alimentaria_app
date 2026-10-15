import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:soberania_alimentaria_app/data/app_database.dart';
import 'package:soberania_alimentaria_app/data/respuestas_repository.dart';
import 'package:soberania_alimentaria_app/services/sync_service.dart';

import 'helpers/csv_parser.dart';
import 'helpers/generador_escenarios.dart';

/// Prueba manual contra el servidor central de producción.
/// Se ejecuta únicamente cuando se provee la API_KEY en tiempo de compilación:
/// flutter test test/servidor_validacion_test.dart --dart-define=API_KEY=tu_llave
void main() {
  const apiKey = String.fromEnvironment('API_KEY');

  test(
    'Validación manual de sincronización y exportación CSV contra servidor central',
    () async {
      final db = AppDatabase(NativeDatabase.memory());
      final repository = RespuestasRepository(db);
      final httpClient = http.Client();

      try {
        final escenarios = generarEscenariosServidor();
        final foliosCreados = <String>[];

        // ignore: avoid_print
        print('=== VALIDACIÓN CONTRA SERVIDOR CENTRAL ===');

        final csvUri = Uri.parse(
            'https://siemai.mx/soberania_alimentaria/exportar_csv.php');

        // Comprobar que el host de csvUri sea siemai.mx
        expect(csvUri.host, 'siemai.mx',
            reason: 'El host de csvUri debe ser estrictamente siemai.mx');

        // 1. ANTES DE INSERTAR CUALQUIER REGISTRO:
        //    Descargar el CSV y verificar que la respuesta sea 200, que el CSV parsee,
        //    que la cabecera contenga 'folio' y que no existan folios ZT remanentes.
        // ignore: avoid_print
        print('Verificando estado inicial del servidor central en $csvUri ...');
        final respuestaCsvPrevia = await httpClient.get(csvUri);

        expect(respuestaCsvPrevia.statusCode, 200,
            reason:
                'Error al descargar el archivo CSV inicial desde el servidor: HTTP ${respuestaCsvPrevia.statusCode}');

        final lineasCsvPrevias = parsearCsv(respuestaCsvPrevia.body);
        expect(lineasCsvPrevias, isNotEmpty,
            reason:
                'El CSV inicial descargado desde el servidor no contiene líneas o no se pudo parsear');

        final cabeceraPrevia = lineasCsvPrevias.first;
        final indiceFolioPrevio = cabeceraPrevia.indexOf('folio');
        expect(indiceFolioPrevio, isNot(-1),
            reason:
                'La cabecera del CSV descargado en la verificación previa no contiene la columna "folio"');

        final foliosZtExistentes = <String>[];
        for (int i = 1; i < lineasCsvPrevias.length; i++) {
          final fila = lineasCsvPrevias[i];
          if (fila.length > indiceFolioPrevio) {
            final folioFila = fila[indiceFolioPrevio].trim();
            if (folioFila.startsWith('ZT')) {
              foliosZtExistentes.add(folioFila);
            }
          }
        }

        if (foliosZtExistentes.isNotEmpty) {
          fail(
            'Se encontraron ${foliosZtExistentes.length} folios ZT previos en el servidor central '
            '(${foliosZtExistentes.take(5).join(', ')}${foliosZtExistentes.length > 5 ? '...' : ''}).\n'
            'Para evitar falsos positivos por duplicados de corridas anteriores, '
            'solicite o ejecute la limpieza antes de correr esta prueba:\n'
            "DELETE FROM respuestas_diagnostico WHERE folio LIKE 'ZT%';",
          );
        }

        // ignore: avoid_print
        print('Servidor limpio de folios ZT.');
        // ignore: avoid_print
        print('Se van a crear ${escenarios.length} folios ZT de prueba...');

        // 2. Insertar cada escenario y sincronizar mediante HTTP real
        for (final escenario in escenarios) {
          foliosCreados.add(escenario.folio);

          await repository.guardarRespuesta(
            schema: escenario.schema,
            respuestas: escenario.respuestas,
            otros: escenario.otros,
            idLocal: escenario.idLocal,
          );

          await (db.update(db.respuestasDiagnostico)
                ..where((t) => t.idLocal.equals(escenario.idLocal)))
              .write(RespuestasDiagnosticoCompanion(
            folio: Value(escenario.folio),
            latitud: Value(escenario.latitud),
            longitud: Value(escenario.longitud),
          ));
        }

        // 3. Sincronizar todos los escenarios con el cliente HTTP real
        final resultadoSync = await sincronizarPendientes(
          repository: repository,
          client: httpClient,
          apiKey: apiKey,
        );

        expect(resultadoSync.errorAutenticacion, isFalse,
            reason:
                'La sincronización falló por autenticación (API_KEY no autorizada)');
        expect(resultadoSync.enviados, escenarios.length,
            reason:
                'Se esperaba enviar exitosamente ${escenarios.length} registros');
        expect(resultadoSync.fallidos, 0,
            reason:
                'Hubo fallos durante la sincronización de registros hacia el servidor');

        // 4. Escenario de reenvío: volver a poner un registro ZT como pendiente (único que repite un folio a propósito)
        final primerEscenario = escenarios.first;
        await (db.update(db.respuestasDiagnostico)
              ..where((t) => t.idLocal.equals(primerEscenario.idLocal)))
            .write(const RespuestasDiagnosticoCompanion(
          syncStatus: Value('pendiente'),
        ));

        final resultadoReenvio = await sincronizarPendientes(
          repository: repository,
          client: httpClient,
          apiKey: apiKey,
        );

        expect(resultadoReenvio.enviados, 1,
            reason:
                'El reenvío de un folio ZT ya sincronizado debe responder exitosamente (idempotente)');
        expect(resultadoReenvio.fallidos, 0);

        // 5. Descargar el archivo CSV exportado desde producción
        final respuestaCsv = await httpClient.get(csvUri);

        expect(respuestaCsv.statusCode, 200,
            reason:
                'Error al descargar el archivo CSV desde el servidor: HTTP ${respuestaCsv.statusCode}');

        // 6. Parsear el CSV en memoria (sin escribir a disco) respetando RFC-4180 y BOM
        final lineasCsv = parsearCsv(respuestaCsv.body);
        expect(lineasCsv, isNotEmpty,
            reason: 'El CSV descargado no contiene líneas');

        final cabecera = lineasCsv.first;
        expect(cabecera, contains('folio'),
            reason: 'La cabecera del CSV debe contener la columna "folio"');

        // Verificar que la cabecera contiene folio y las 93 columnas restantes
        for (final col in columnasEndpointOrden) {
          expect(cabecera.contains(col), isTrue,
              reason:
                  'La cabecera del CSV no incluye la columna esperada "$col"');
        }

        final mapaIndices = <String, int>{};
        for (int i = 0; i < cabecera.length; i++) {
          mapaIndices[cabecera[i]] = i;
        }

        final indiceFolio = mapaIndices['folio']!;

        // 7. Filtrar filas ZT respetando estrictamente la privacidad de producción
        final filasCsvPorFolio = <String, List<Map<String, String>>>{};

        for (int i = 1; i < lineasCsv.length; i++) {
          final fila = lineasCsv[i];
          if (fila.length <= indiceFolio) continue;
          final folioFila = fila[indiceFolio].trim();

          // REGLA CRÍTICA DE PRIVACIDAD: NUNCA procesar, registrar ni imprimir filas que no inicien con ZT
          if (folioFila.startsWith('ZT')) {
            final mapaFila = <String, String>{};
            for (final entry in mapaIndices.entries) {
              final colName = entry.key;
              final colIndex = entry.value;
              mapaFila[colName] = colIndex < fila.length ? fila[colIndex] : '';
            }
            filasCsvPorFolio.putIfAbsent(folioFila, () => []).add(mapaFila);
          }
        }

        // 8. Validar el escenario de reenvío: debe existir exactamente una fila con ese folio en el CSV
        final filasPrimerFolio = filasCsvPorFolio[primerEscenario.folio] ?? [];
        expect(filasPrimerFolio.length, 1,
            reason:
                'El folio reenviado "${primerEscenario.folio}" debe aparecer exactamente 1 vez en el CSV');

        // 9. Comparar columna por columna cada escenario enviado contra el CSV
        for (final escenario in escenarios) {
          final filasEncontradas = filasCsvPorFolio[escenario.folio];
          expect(filasEncontradas, isNotNull,
              reason:
                  'El folio "${escenario.folio}" no fue encontrado en el CSV exportado');
          expect(filasEncontradas!.length, 1,
              reason:
                  'Se esperaba exactamente 1 fila en el CSV para el folio "${escenario.folio}"');

          final filaCsv = filasEncontradas.first;
          final esperado = calcularEsperadoIndependiente(escenario);

          // Imprimir SOLO información de la fila ZT
          // ignore: avoid_print
          print(
              'Verificando fila CSV folio: ${escenario.folio} (${escenario.nombre})');

          for (final columna in columnasEndpointOrden) {
            final valorEsperado = esperado[columna];
            final valorCsvCrudo = filaCsv[columna]?.trim() ?? '';

            if (columna == 'latitud' || columna == 'longitud') {
              if (valorEsperado == null) {
                expect(valorCsvCrudo.isEmpty, isTrue,
                    reason:
                        'Folio ${escenario.folio} columna "$columna": se esperaba vacío/null pero el CSV tiene "$valorCsvCrudo"');
              } else {
                final valorNumEsperado = (valorEsperado as num).toDouble();
                final valorNumCsv = double.tryParse(valorCsvCrudo);
                expect(valorNumCsv, isNotNull,
                    reason:
                        'Folio ${escenario.folio} columna "$columna": "$valorCsvCrudo" no es un número válido');
                final diferencia = (valorNumCsv! - valorNumEsperado).abs();
                expect(diferencia <= 1e-4, isTrue,
                    reason:
                        'Folio ${escenario.folio} columna "$columna": diferencia ($diferencia) excede la tolerancia 1e-4 (esperado: $valorNumEsperado, csv: $valorNumCsv)');
              }
            } else {
              // Tratar NULL y cadena vacía como equivalentes
              final espNormalizado =
                  valorEsperado == null ? '' : valorEsperado.toString().trim();
              expect(valorCsvCrudo, espNormalizado,
                  reason:
                      'Folio ${escenario.folio} discrepancia en columna "$columna": esperado "$espNormalizado", encontrado en CSV "$valorCsvCrudo"');
            }
          }
        }

        // 10. Imprimir resumen de folios ZT y la consulta SQL para limpieza
        // ignore: avoid_print
        print('\n=== RESUMEN DE PRUEBA EN PRODUCCIÓN ===');
        // ignore: avoid_print
        print(
            'Total de folios ZT creados y validados: ${foliosCreados.length}');
        // ignore: avoid_print
        print(
            '\nConsulta para eliminar los registros de prueba en la base de datos:');
        // ignore: avoid_print
        print("DELETE FROM respuestas_diagnostico WHERE folio LIKE 'ZT%';");
      } finally {
        httpClient.close();
        await db.close();
      }
    },
    skip: apiKey.isEmpty
        ? 'Prueba manual contra producción omitida porque no hay API_KEY (definir con --dart-define=API_KEY=...)'
        : false,
  );
}
