/// Parser CSV puro en memoria compatible con RFC-4180.
///
/// Maneja:
/// - Campos entrecomillados con comas internas.
/// - Comillas dobles escapadas ("").
/// - Saltos de línea dentro de campos entrecomillados.
/// - Descarte de BOM UTF-8 (\uFEFF).
List<List<String>> parsearCsv(String csvContent) {
  var texto = csvContent;
  if (texto.startsWith('\uFEFF')) {
    texto = texto.substring(1);
  }

  final lineas = <List<String>>[];
  final filaActual = <String>[];
  final campoActual = StringBuffer();
  bool enComillas = false;

  for (int i = 0; i < texto.length; i++) {
    final char = texto[i];

    if (enComillas) {
      if (char == '"') {
        if (i + 1 < texto.length && texto[i + 1] == '"') {
          campoActual.write('"');
          i++; // saltar comilla escapada
        } else {
          enComillas = false;
        }
      } else {
        campoActual.write(char);
      }
    } else {
      if (char == '"') {
        enComillas = true;
      } else if (char == ',') {
        filaActual.add(campoActual.toString());
        campoActual.clear();
      } else if (char == '\r') {
        if (i + 1 < texto.length && texto[i + 1] == '\n') {
          i++; // consumir \n tras \r
        }
        filaActual.add(campoActual.toString());
        campoActual.clear();
        lineas.add(List<String>.from(filaActual));
        filaActual.clear();
      } else if (char == '\n') {
        filaActual.add(campoActual.toString());
        campoActual.clear();
        lineas.add(List<String>.from(filaActual));
        filaActual.clear();
      } else {
        campoActual.write(char);
      }
    }
  }

  if (campoActual.isNotEmpty || filaActual.isNotEmpty) {
    filaActual.add(campoActual.toString());
    lineas.add(filaActual);
  }

  return lineas;
}
