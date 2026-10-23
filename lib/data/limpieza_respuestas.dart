import '../models/form_models.dart';
import 'reglas_formulario.dart';

/// Resultado inmutable de la limpieza de respuestas de un formulario.
class RespuestasLimpias {
  final Map<String, dynamic> respuestas;
  final Map<String, String> otros;

  const RespuestasLimpias({
    required this.respuestas,
    required this.otros,
  });
}

/// Determina si la opción "Otros" o un disparador condicional de texto
/// está activo para un campo específico dado su valor actual.
///
/// Replica exactamente la lógica de activación de CampoOpcionUnica y CampoOpcionMultiple:
/// - Para singleChoice: `disparaTexto = campo.otroTriggerValor ?? (campo.permiteOtro ? campo.otroOpcionTexto : null)`
///   y `disparaTexto != null && valor == disparaTexto`.
/// - Para multiChoice: `campo.permiteOtro && valores.contains(campo.otroOpcionTexto)`.
bool esOtroActivo(FormFieldConfig campo, dynamic valor) {
  if (campo.tipo == FieldType.singleChoice) {
    final disparaTexto = campo.otroTriggerValor ??
        (campo.permiteOtro ? campo.otroOpcionTexto : null);
    return disparaTexto != null && valor == disparaTexto;
  }
  if (campo.tipo == FieldType.multiChoice) {
    if (!campo.permiteOtro) return false;
    if (valor is Set<String>) {
      return valor.contains(campo.otroOpcionTexto);
    }
    if (valor is Iterable) {
      return valor.contains(campo.otroOpcionTexto);
    }
    return false;
  }
  return false;
}

/// Limpia las respuestas y el mapa de textos libres 'otros' de acuerdo
/// con las reglas declaradas en el esquema:
/// 1. Devuelve mapas NUEVOS; no muta las entradas originales.
/// 2. Si un campo no es visible: quita su entrada en [respuestas] y en [otros].
/// 3. Si un campo es visible con "Otros" inactivo: quita su entrada en [otros].
///    Si "Otros" está activo: aplica `trim()` al texto y no lo borra aunque esté vacío.
/// 4. Las claves que no pertenecen a ningún campo del esquema se conservan intactas.
RespuestasLimpias limpiarRespuestas(
  FormSchema schema,
  Map<String, dynamic> respuestas,
  Map<String, String> otros,
) {
  final nuevasRespuestas = Map<String, dynamic>.from(respuestas);
  final nuevosOtros = Map<String, String>.from(otros);

  for (final seccion in schema.secciones) {
    for (final campo in seccion.campos) {
      final visible = campoVisible(campo, nuevasRespuestas);
      if (!visible) {
        nuevasRespuestas.remove(campo.id);
        nuevosOtros.remove(campo.id);
      } else {
        final valor = nuevasRespuestas[campo.id];
        if (esOtroActivo(campo, valor)) {
          if (nuevosOtros.containsKey(campo.id)) {
            nuevosOtros[campo.id] = nuevosOtros[campo.id]!.trim();
          }
        } else {
          nuevosOtros.remove(campo.id);
        }
      }
    }
  }

  return RespuestasLimpias(
    respuestas: nuevasRespuestas,
    otros: nuevosOtros,
  );
}
