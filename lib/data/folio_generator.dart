import 'dart:math';

/// Genera un folio único de 8 caracteres para identificar cada diagnóstico
/// de forma idempotente al sincronizar con el servidor central.
///
/// Alfabeto de 32 símbolos sin caracteres ambiguos (excluye 0, O, 1, I, L)
/// para evitar errores de lectura/transcripción manual en campo.
const String _alfabetoFolio = 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';

/// Genera un folio nuevo usando Random.secure() (criptográficamente
/// aleatorio). Debe llamarse UNA sola vez por diagnóstico, al crear el
/// borrador por primera vez — nunca al reanudar uno existente.
String generarFolio() {
  final random = Random.secure();
  return List.generate(
    8,
    (_) => _alfabetoFolio[random.nextInt(_alfabetoFolio.length)],
  ).join();
}
