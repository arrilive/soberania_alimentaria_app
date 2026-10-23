import 'package:flutter_test/flutter_test.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/data/reglas_formulario.dart';
import 'package:soberania_alimentaria_app/models/form_models.dart';

void main() {
  group('campoVisible (reglas puras de visibilidad)', () {
    test('Campos sin dependencia (dependeDe == null) siempre son visibles', () {
      const campo = FormFieldConfig(
        id: 'q_test',
        numero: '1',
        pregunta: '¿Pregunta independiente?',
        tipo: FieldType.text,
      );

      expect(campoVisible(campo, {}), isTrue);
      expect(campoVisible(campo, {'otra_pregunta': 'valor'}), isTrue);
    });

    test('P22 depende de P21: invisible si P21 es null o no existe', () {
      final p22 = formularioAmpliado.secciones
          .expand((s) => s.campos)
          .firstWhere((c) => c.id == 'p22_requisitos_dificiles');

      expect(campoVisible(p22, {}), isFalse);
      expect(campoVisible(p22, {'p21_limitacion_requisitos': null}), isFalse);
    });

    test(
        'P22 depende de P21: invisible si P21 no es "Sí, me han limitado" (ej. "No me han limitado")',
        () {
      final p22 = formularioAmpliado.secciones
          .expand((s) => s.campos)
          .firstWhere((c) => c.id == 'p22_requisitos_dificiles');

      expect(
        campoVisible(p22, {'p21_limitacion_requisitos': 'No me han limitado'}),
        isFalse,
      );
      expect(
        campoVisible(p22, {'p21_limitacion_requisitos': 'No sé si me afectan'}),
        isFalse,
      );
      expect(
        campoVisible(p22, {'p21_limitacion_requisitos': 'Cualquier otro'}),
        isFalse,
      );
    });

    test('P22 depende de P21: visible si P21 es "Sí, me han limitado"', () {
      final p22 = formularioAmpliado.secciones
          .expand((s) => s.campos)
          .firstWhere((c) => c.id == 'p22_requisitos_dificiles');

      expect(
        campoVisible(p22, {'p21_limitacion_requisitos': 'Sí, me han limitado'}),
        isTrue,
      );
    });
  });
}
