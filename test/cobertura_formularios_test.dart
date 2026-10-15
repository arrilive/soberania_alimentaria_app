import 'dart:convert';
import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:soberania_alimentaria_app/data/app_database.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/data/respuestas_repository.dart';
import 'package:soberania_alimentaria_app/models/form_models.dart';
import 'package:soberania_alimentaria_app/services/sync_service.dart';

import 'helpers/generador_escenarios.dart';

/// CASOS DOCUMENTADOS COMO NO CUBIERTOS A NIVEL REPOSITORIO/SYNC:
/// 1. Respuestas ocultas (P22 cuando P21 deja de ser "Sí, me han limitado"):
///    NO CUBIERTO a nivel base de datos / sincronización porque el filtrado de
///    visibilidad reside exclusivamente en `_campoVisible` (método privado dentro
///    de `_DynamicFormScreenState` en `lib/screens/dynamic_form_screen.dart`).
///    El repositorio no inspecciona si una pregunta está visible u oculta al
///    guardar, por lo que la limpieza de respuestas huérfanas corresponde a la UI.
/// 2. Corte de consentimiento (P2 = "No"):
///    NO CUBIERTO a nivel repositorio/sync porque la decisión de no guardar y
///    mostrar la pantalla `_PantallaConsentimientoRechazado` se toma en el `build`
///    de `DynamicFormScreen`. El repositorio es agnóstico a la regla de negocio y
///    guarda cualquier respuesta que reciba.

void main() {
  group('Cobertura de formularios y validación de columnas del endpoint (CI)',
      () {
    late AppDatabase db;
    late RespuestasRepository repository;

    setUp(() {
      db = AppDatabase(NativeDatabase.memory());
      repository = RespuestasRepository(db);
    });

    tearDown(() async {
      await db.close();
    });

    final escenarios = generarEscenariosCobertura();

    for (final escenario in escenarios) {
      test('Escenario: ${escenario.nombre} (${escenario.schema.id})', () async {
        // 1. Guardar la respuesta en la base de datos en memoria
        await repository.guardarRespuesta(
          schema: escenario.schema,
          respuestas: escenario.respuestas,
          otros: escenario.otros,
          idLocal: escenario.idLocal,
        );

        // 2. Establecer folio y coordenadas deseadas para el escenario
        await (db.update(db.respuestasDiagnostico)
              ..where((t) => t.idLocal.equals(escenario.idLocal)))
            .write(RespuestasDiagnosticoCompanion(
          folio: Value(escenario.folio),
          latitud: Value(escenario.latitud),
          longitud: Value(escenario.longitud),
        ));

        // 3. Capturar el payload exacto enviado por sincronizarPendientes con MockClient
        Map<String, dynamic>? payloadCapturado;

        final mockClient = MockClient((request) async {
          expect(request.method, 'POST');
          payloadCapturado = jsonDecode(request.body) as Map<String, dynamic>;
          return http.Response(jsonEncode({'ok': true}), 200);
        });

        final resultado = await sincronizarPendientes(
          repository: repository,
          client: mockClient,
          apiKey: 'test-api-key',
        );

        expect(resultado.enviados, 1,
            reason: 'El registro debió enviarse correctamente');
        expect(resultado.fallidos, 0);
        expect(payloadCapturado, isNotNull,
            reason: 'No se capturó el payload HTTP del registro');

        final payload = payloadCapturado!;

        // 4. Verificar que el payload contiene EXACTAMENTE las 94 claves esperadas
        final clavesPayload = payload.keys.toSet();
        final clavesEsperadas = columnasEndpointOrden.toSet();

        final clavesFaltantes = clavesEsperadas.difference(clavesPayload);
        final clavesSobrantes = clavesPayload.difference(clavesEsperadas);

        expect(clavesFaltantes, isEmpty,
            reason:
                'Claves faltantes en el payload: ${clavesFaltantes.join(', ')}');
        expect(clavesSobrantes, isEmpty,
            reason:
                'Claves sobrantes en el payload: ${clavesSobrantes.join(', ')}');
        expect(payload.length, columnasEndpointOrden.length,
            reason:
                'El payload debe tener exactamente ${columnasEndpointOrden.length} columnas');

        // 5. Calcular independientemente lo esperado desde las respuestas
        final esperado = calcularEsperadoIndependiente(escenario);

        // 6. Verificar valor por valor de cada columna
        for (final columna in columnasEndpointOrden) {
          final valorPayload = payload[columna];
          final valorEsperado = esperado[columna];

          expect(
            valorPayload,
            valorEsperado,
            reason:
                'Discrepancia en columna "$columna": se esperaba "$valorEsperado" pero viajó "$valorPayload"',
          );
        }

        // 7. Verificar columnas que SIEMPRE deben viajar null en ambos formularios
        for (final col in columnasSiempreNull) {
          expect(payload[col], isNull,
              reason:
                  'La columna "$col" siempre debe viajar null en el payload');
        }

        // 8. En Ejecutivo: columnas exclusivas de Ampliado deben viajar null
        if (escenario.schema.id == 'ejecutivo') {
          for (final col in columnasExclusivasAmpliado) {
            expect(payload[col], isNull,
                reason:
                    'En formulario ejecutivo la columna "$col" debe ser null');
          }
        }

        // 9. En Ampliado: p12_destino y p12_destino_otro deben viajar null
        if (escenario.schema.id == 'ampliado') {
          for (final col in columnasExclusivasEjecutivo) {
            expect(payload[col], isNull,
                reason:
                    'En formulario ampliado la columna "$col" debe ser null');
          }
        }

        // 10. Verificar límites varchar
        for (final entry in limitesVarchar.entries) {
          final columna = entry.key;
          final limite = entry.value;
          final valor = payload[columna];

          if (valor != null && valor is String) {
            expect(
              valor.length <= limite,
              isTrue,
              reason:
                  'Fallo varchar en columna "$columna": el valor "$valor" (longitud ${valor.length}) excede el límite de $limite',
            );
          }
        }

        // 11. Escenarios máximos: verificar que todas las columnas aplicables tengan valor
        if (escenario.idLocal.contains('max')) {
          final noAplicables = {
            ...columnasSiempreNull,
            if (escenario.schema.id == 'ejecutivo')
              ...columnasExclusivasAmpliado,
            if (escenario.schema.id == 'ampliado')
              ...columnasExclusivasEjecutivo,
          };
          final aplicables = columnasEndpointOrden
              .where((c) => !noAplicables.contains(c))
              .toList();

          for (final col in aplicables) {
            expect(
              payload[col],
              isNotNull,
              reason:
                  'En escenario máximo (${escenario.idLocal}), la columna aplicable "$col" no debe ser null',
            );
          }
        }
      });
    }
  });

  group('P30: Combinación completa de opciones y límite varchar', () {
    test(
      'p30_todas_las_opciones_excede_varchar',
      () {
        final campo =
            buscarCampoPorId(formularioAmpliado, 'p30_donde_registra');
        final todasOpciones = [
          ...campo.opciones,
          if (campo.permiteOtro) campo.otroOpcionTexto,
        ];
        final combinacionCompleta = todasOpciones.join(',');
        final limite = limitesVarchar['p30_donde_registra'] ?? 100;

        expect(
          combinacionCompleta.length <= limite,
          isTrue,
          reason:
              'P30 permite ${combinacionCompleta.length} caracteres ("$combinacionCompleta") lo cual excede el límite de varchar($limite)',
        );
      },
      skip:
          'Bug conocido: P30 permite 109 caracteres en varchar(100); se corrige en el PR D',
    );
  });

  group('Test de sanidad de escenarios (cobertura y servidor)', () {
    test('Sanidad de todos los escenarios de cobertura local', () {
      final escenariosLocales = generarEscenariosCobertura();
      final todosErrores = <String>[];

      for (final escenario in escenariosLocales) {
        final errores = validarSanidadEscenario(escenario);
        todosErrores.addAll(errores);
      }

      expect(
        todosErrores,
        isEmpty,
        reason:
            'Discrepancias de sanidad en escenarios locales:\n${todosErrores.join('\n')}',
      );
    });

    test('Sanidad de todos los escenarios del servidor', () {
      final escenariosServidor = generarEscenariosServidor();
      final todosErrores = <String>[];

      for (final escenario in escenariosServidor) {
        final errores = validarSanidadEscenario(escenario);
        todosErrores.addAll(errores);
      }

      expect(
        todosErrores,
        isEmpty,
        reason:
            'Discrepancias de sanidad en escenarios de servidor:\n${todosErrores.join('\n')}',
      );
    });
  });

  group('Unicidad de folios ZT', () {
    test('Los folios ZT de los escenarios locales son únicos', () {
      final escenariosLocales = generarEscenariosCobertura();
      final folios = escenariosLocales.map((e) => e.folio).toList();
      final foliosUnicos = folios.toSet();

      expect(
        foliosUnicos.length,
        folios.length,
        reason:
            'Se encontraron folios ZT duplicados en escenarios locales: ${folios.length - foliosUnicos.length} duplicados',
      );
    });

    test('Los folios ZT de los escenarios del servidor son únicos', () {
      final escenariosServidor = generarEscenariosServidor();
      final folios = escenariosServidor.map((e) => e.folio).toList();
      final foliosUnicos = folios.toSet();

      expect(
        foliosUnicos.length,
        folios.length,
        reason:
            'Se encontraron folios ZT duplicados en escenarios del servidor: ${folios.length - foliosUnicos.length} duplicados',
      );
    });
  });

  group('Rotación y cobertura de opciones dirigida por el esquema', () {
    test(
      'Entre todos los escenarios locales, cada opción de cada campo aparece al menos una vez',
      () {
        final escenariosLocales = generarEscenariosCobertura();

        final todosCampos = <String, FormFieldConfig>{};
        for (final sec in formularioEjecutivo.secciones) {
          for (final c in sec.campos) {
            todosCampos[c.id] = c;
          }
        }
        for (final sec in formularioAmpliado.secciones) {
          for (final c in sec.campos) {
            todosCampos[c.id] = c;
          }
        }

        final opcionesObservadas = <String, Set<String>>{};
        for (final escenario in escenariosLocales) {
          for (final entry in escenario.respuestas.entries) {
            final campoId = entry.key;
            final valor = entry.value;
            if (valor == null) continue;

            opcionesObservadas.putIfAbsent(campoId, () => <String>{});
            if (valor is Iterable) {
              opcionesObservadas[campoId]!
                  .addAll(valor.map((e) => e.toString()));
            } else if (valor is String) {
              opcionesObservadas[campoId]!.add(valor);
            }
          }
        }

        final opcionesNoCubiertas = <String>[];
        for (final entry in todosCampos.entries) {
          final campo = entry.value;
          if (campo.tipo == FieldType.singleChoice ||
              campo.tipo == FieldType.dropdown ||
              campo.tipo == FieldType.multiChoice) {
            final observadas = opcionesObservadas[campo.id] ?? <String>{};
            for (final opt in campo.opciones) {
              if (!observadas.contains(opt)) {
                opcionesNoCubiertas.add('${campo.id}: "$opt"');
              }
            }
          }
        }

        expect(
          opcionesNoCubiertas,
          isEmpty,
          reason:
              'Opciones no cubiertas en escenarios locales:\n${opcionesNoCubiertas.join('\n')}',
        );
      },
    );
  });

  group('Test del esquema sin escenarios', () {
    test('Cada valor de columna en preguntas de matriz cabe en varchar(20)',
        () {
      final matrices = <FormFieldConfig>[];
      for (final sec in [
        ...formularioEjecutivo.secciones,
        ...formularioAmpliado.secciones
      ]) {
        for (final c in sec.campos) {
          if (c.tipo == FieldType.matrixSingle) {
            matrices.add(c);
          }
        }
      }

      final fallos = <String>[];
      for (final mat in matrices) {
        for (final col in mat.columnas) {
          if (col.length > 20) {
            fallos.add(
                'Matriz ${mat.id}: columna "$col" mide ${col.length} chars (límite 20)');
          }
        }
      }

      expect(fallos, isEmpty,
          reason:
              'Valores de columna de matriz que exceden varchar(20):\n${fallos.join('\n')}');
    });

    test(
        'Para cada campo que coincide con columna varchar, la opción más larga cabe en su límite',
        () {
      final camposConVarchar = <FormFieldConfig, int>{};
      for (final sec in [
        ...formularioEjecutivo.secciones,
        ...formularioAmpliado.secciones
      ]) {
        for (final c in sec.campos) {
          if (limitesVarchar.containsKey(c.id)) {
            camposConVarchar[c] = limitesVarchar[c.id]!;
          }
        }
      }

      final fallos = <String>[];
      for (final entry in camposConVarchar.entries) {
        final campo = entry.key;
        final limite = entry.value;

        if (campo.tipo == FieldType.dropdown ||
            campo.tipo == FieldType.singleChoice) {
          for (final opt in campo.opciones) {
            if (opt.length > limite) {
              fallos.add(
                  'Campo ${campo.id}: opción "$opt" (len ${opt.length}) excede varchar($limite)');
            }
          }
        }
      }

      expect(fallos, isEmpty,
          reason:
              'Opciones que exceden su límite varchar:\n${fallos.join('\n')}');
    });

    test(
      'En multi-selección con columna varchar, la unión de todas las opciones más otroOpcionTexto cabe',
      () {
        final camposMultiVarchar = <FormFieldConfig, int>{};
        for (final sec in [
          ...formularioEjecutivo.secciones,
          ...formularioAmpliado.secciones
        ]) {
          for (final c in sec.campos) {
            if (c.tipo == FieldType.multiChoice &&
                limitesVarchar.containsKey(c.id)) {
              camposMultiVarchar[c] = limitesVarchar[c.id]!;
            }
          }
        }

        final fallos = <String>[];
        for (final entry in camposMultiVarchar.entries) {
          final campo = entry.key;
          final limite = entry.value;

          final todasOpciones = [
            ...campo.opciones,
            if (campo.permiteOtro) campo.otroOpcionTexto,
          ];
          final union = todasOpciones.join(',');

          if (union.length > limite) {
            fallos.add(
                'MultiChoice ${campo.id}: unión de todas las opciones ("$union", len ${union.length}) excede varchar($limite)');
          }
        }

        expect(fallos, isEmpty,
            reason:
                'Multi-selecciones que exceden límite varchar:\n${fallos.join('\n')}');
      },
      skip:
          'Bug conocido: P30 permite 109 caracteres en varchar(100); se corrige en el PR D',
    );
  });
}
