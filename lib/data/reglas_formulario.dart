import '../models/form_models.dart';

/// Evalúa si un campo debe mostrarse según las respuestas actuales del formulario.
///
/// Si [campo.dependeDe] es null, el campo siempre es visible.
/// Si tiene dependencia, es visible únicamente si el valor respondido para
/// [campo.dependeDe] está contenido en [campo.mostrarSiValores].
bool campoVisible(FormFieldConfig campo, Map<String, dynamic> respuestas) {
  if (campo.dependeDe == null) return true;
  final valorDelQueDepende = respuestas[campo.dependeDe];
  if (valorDelQueDepende == null) return false;
  return campo.mostrarSiValores?.contains(valorDelQueDepende) ?? false;
}
