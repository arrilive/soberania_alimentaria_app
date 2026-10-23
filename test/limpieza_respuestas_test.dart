import 'package:flutter_test/flutter_test.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/data/limpieza_respuestas.dart';
import 'package:soberania_alimentaria_app/models/form_models.dart';

void main() {
  group('limpiarRespuestas', () {
    test('P21 "Sí, me han limitado" conserva P22 y su texto en otros', () {
      final respuestas = <String, dynamic>{
        'p21_limitacion_requisitos': 'Sí, me han limitado',
        'p22_requisitos_dificiles': {'Certificación oficial', 'Otros'},
      };
      final otros = <String, String>{
        'p22_requisitos_dificiles': '  Certificación orgánica internacional  ',
      };

      final resultado =
          limpiarRespuestas(formularioAmpliado, respuestas, otros);

      expect(resultado.respuestas['p21_limitacion_requisitos'],
          'Sí, me han limitado');
      expect(
        resultado.respuestas['p22_requisitos_dificiles'],
        {'Certificación oficial', 'Otros'},
      );
      expect(
        resultado.otros['p22_requisitos_dificiles'],
        'Certificación orgánica internacional',
      );
    });

    test(
        'P21 cambia a "No me han limitado" -> P22 y su texto en otros desaparecen',
        () {
      final respuestas = <String, dynamic>{
        'p21_limitacion_requisitos': 'No me han limitado',
        'p22_requisitos_dificiles': {'Certificación oficial', 'Otros'},
      };
      final otros = <String, String>{
        'p22_requisitos_dificiles': 'Texto que debió quedar huérfano',
      };

      final resultado =
          limpiarRespuestas(formularioAmpliado, respuestas, otros);

      expect(resultado.respuestas['p21_limitacion_requisitos'],
          'No me han limitado');
      expect(resultado.respuestas.containsKey('p22_requisitos_dificiles'),
          isFalse);
      expect(resultado.otros.containsKey('p22_requisitos_dificiles'), isFalse);
    });

    test('P21 nulo o ausente -> P22 desaparece de respuestas y otros', () {
      final respuestas = <String, dynamic>{
        'p21_limitacion_requisitos': null,
        'p22_requisitos_dificiles': {'Volumen mínimo requerido'},
      };
      final otros = <String, String>{
        'p22_requisitos_dificiles': 'Texto huérfano',
      };

      final resultado =
          limpiarRespuestas(formularioAmpliado, respuestas, otros);

      expect(resultado.respuestas.containsKey('p22_requisitos_dificiles'),
          isFalse);
      expect(resultado.otros.containsKey('p22_requisitos_dificiles'), isFalse);
    });

    test(
        '"Otros" marcado en multiChoice con texto se conserva recortado con trim sin borrar si está vacío',
        () {
      final respuestas = <String, dynamic>{
        'p7_cultivo_principal': {'Milpa (maíz, frijol, calabaza)', 'Otros'},
      };
      final otros = <String, String>{
        'p7_cultivo_principal': '   Miel de monte   ',
      };

      final resultado =
          limpiarRespuestas(formularioEjecutivo, respuestas, otros);

      expect(resultado.respuestas['p7_cultivo_principal'],
          {'Milpa (maíz, frijol, calabaza)', 'Otros'});
      expect(resultado.otros['p7_cultivo_principal'], 'Miel de monte');

      // Si está vacío, se aplica trim pero no se elimina la clave
      final respuestasVacio = <String, dynamic>{
        'p7_cultivo_principal': {'Otros'},
      };
      final otrosVacio = <String, String>{
        'p7_cultivo_principal': '    ',
      };

      final resultadoVacio =
          limpiarRespuestas(formularioEjecutivo, respuestasVacio, otrosVacio);
      expect(resultadoVacio.otros.containsKey('p7_cultivo_principal'), isTrue);
      expect(resultadoVacio.otros['p7_cultivo_principal'], '');
    });

    test('"Otros" desmarcado en multiChoice -> texto en otros desaparece', () {
      final respuestas = <String, dynamic>{
        'p7_cultivo_principal': {'Milpa (maíz, frijol, calabaza)'},
      };
      final otros = <String, String>{
        'p7_cultivo_principal': 'Texto previo que quedó desmarcado',
      };

      final resultado =
          limpiarRespuestas(formularioEjecutivo, respuestas, otros);

      expect(resultado.respuestas['p7_cultivo_principal'],
          {'Milpa (maíz, frijol, calabaza)'});
      expect(resultado.otros.containsKey('p7_cultivo_principal'), isFalse);
    });

    test(
        'Opción única con trigger (ej. p19_conservacion con Si) conserva y recorta texto; con No lo quita',
        () {
      // 1. Con trigger activo ('Si')
      final respuestasSi = <String, dynamic>{
        'p19_conservacion': 'Si',
      };
      final otrosSi = <String, String>{
        'p19_conservacion': '  Frascos herméticos y deshidratación solar  ',
      };

      final resSi =
          limpiarRespuestas(formularioAmpliado, respuestasSi, otrosSi);
      expect(resSi.respuestas['p19_conservacion'], 'Si');
      expect(resSi.otros['p19_conservacion'],
          'Frascos herméticos y deshidratación solar');

      // 2. Con trigger inactivo ('No')
      final respuestasNo = <String, dynamic>{
        'p19_conservacion': 'No',
      };
      final otrosNo = <String, String>{
        'p19_conservacion': 'Frascos residuales',
      };

      final resNo =
          limpiarRespuestas(formularioAmpliado, respuestasNo, otrosNo);
      expect(resNo.respuestas['p19_conservacion'], 'No');
      expect(resNo.otros.containsKey('p19_conservacion'), isFalse);

      // 3. Opción única con permiteOtro = true (ej. p12_destino con 'Otros' vs 'Consumo propio')
      final resOtroActivo = limpiarRespuestas(
        formularioEjecutivo,
        {'p12_destino': 'Otros'},
        {'p12_destino': '  Alimento para ganado  '},
      );
      expect(resOtroActivo.otros['p12_destino'], 'Alimento para ganado');

      final resOtroInactivo = limpiarRespuestas(
        formularioEjecutivo,
        {'p12_destino': 'Consumo propio'},
        {'p12_destino': 'Alimento para ganado'},
      );
      expect(resOtroInactivo.otros.containsKey('p12_destino'), isFalse);
    });

    test('No muta las entradas originales (inmutabilidad)', () {
      final respuestasOriginales = <String, dynamic>{
        'p21_limitacion_requisitos': 'No me han limitado',
        'p22_requisitos_dificiles': {'Otros'},
        'p7_cultivo_principal': {'Milpa (maíz, frijol, calabaza)'},
      };
      final otrosOriginales = <String, String>{
        'p22_requisitos_dificiles': 'Texto que se borrará en copia',
        'p7_cultivo_principal': 'Otro texto que se borrará',
      };

      final copiaRespuestasAntes = Map<String, dynamic>.from(
          respuestasOriginales
              .map((k, v) => MapEntry(k, v is Set ? Set.from(v) : v)));
      final copiaOtrosAntes = Map<String, String>.from(otrosOriginales);

      final resultado = limpiarRespuestas(
        formularioAmpliado,
        respuestasOriginales,
        otrosOriginales,
      );

      // Comprobar que los mapas originales siguen exactamente iguales
      expect(respuestasOriginales, equals(copiaRespuestasAntes));
      expect(otrosOriginales, equals(copiaOtrosAntes));

      // Comprobar que el resultado sí tiene las modificaciones
      expect(resultado.respuestas.containsKey('p22_requisitos_dificiles'),
          isFalse);
      expect(resultado.otros.containsKey('p22_requisitos_dificiles'), isFalse);
    });

    test('Idempotencia (limpiar dos veces produce el mismo resultado)', () {
      final respuestas = <String, dynamic>{
        'p1_comunidad_vive': 'Tekit',
        'p7_cultivo_principal': {'Miel / apicultura', 'Otros'},
        'p21_limitacion_requisitos': 'No me han limitado',
        'p22_requisitos_dificiles': {'Otros'},
      };
      final otros = <String, String>{
        'p7_cultivo_principal': '   Melipona   ',
        'p22_requisitos_dificiles': 'Huérfano',
      };

      final limpia1 = limpiarRespuestas(formularioAmpliado, respuestas, otros);
      final limpia2 = limpiarRespuestas(
        formularioAmpliado,
        limpia1.respuestas,
        limpia1.otros,
      );

      expect(limpia2.respuestas, equals(limpia1.respuestas));
      expect(limpia2.otros, equals(limpia1.otros));
    });

    test('Claves que no pertenecen a ningún campo se conservan sin tocar', () {
      final respuestas = <String, dynamic>{
        'p1_comunidad_vive': 'Tekit',
        'clave_custom_metadata': 999,
        'otra_clave_no_esquema': {'a': 1},
      };
      final otros = <String, String>{
        'clave_otros_ajena': 'preservada',
      };

      final resultado =
          limpiarRespuestas(formularioEjecutivo, respuestas, otros);

      expect(resultado.respuestas['clave_custom_metadata'], 999);
      expect(resultado.respuestas['otra_clave_no_esquema'], {'a': 1});
      expect(resultado.otros['clave_otros_ajena'], 'preservada');
    });

    test(
        'Recorre los dos esquemas y verifica que cada campo con permiteOtro u otroTriggerValor es reconocido',
        () {
      for (final schema in [formularioEjecutivo, formularioAmpliado]) {
        for (final sec in schema.secciones) {
          for (final campo in sec.campos) {
            final tieneOtro =
                campo.permiteOtro || campo.otroTriggerValor != null;
            if (!tieneOtro) continue;

            // 1. Debe reconocerse como activo cuando se provee el valor de activación
            dynamic valorActivo;
            if (campo.tipo == FieldType.singleChoice) {
              final activaCon = campo.otroTriggerValor ??
                  (campo.permiteOtro ? campo.otroOpcionTexto : null);
              expect(activaCon, isNotNull,
                  reason:
                      'Campo ${campo.id} en ${schema.id} debe tener un valor disparador definido');
              valorActivo = activaCon;
            } else if (campo.tipo == FieldType.multiChoice) {
              expect(campo.permiteOtro, isTrue);
              valorActivo = {campo.otroOpcionTexto};
            } else {
              fail(
                  'Campo ${campo.id} en ${schema.id} tiene tipo no soportado para "Otros": ${campo.tipo}');
            }

            expect(
              esOtroActivo(campo, valorActivo),
              isTrue,
              reason:
                  'Campo ${campo.id} en ${schema.id} debe reconocerse como activo con "$valorActivo"',
            );

            // 2. Debe reconocerse como inactivo cuando no se selecciona "Otros"
            final valorInactivo = campo.tipo == FieldType.multiChoice
                ? {'Opción no otros'}
                : 'Opción no otros';

            expect(
              esOtroActivo(campo, valorInactivo),
              isFalse,
              reason:
                  'Campo ${campo.id} en ${schema.id} debe ser inactivo con "$valorInactivo"',
            );
          }
        }
      }
    });
  });
}
