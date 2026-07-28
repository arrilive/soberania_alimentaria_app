/// Tipos de campo que puede tener una pregunta del diagnóstico.
enum FieldType {
  dropdown, // selección única desde catálogo largo (comunidad, municipio)
  singleChoice, // opción única, pocas opciones (radio)
  multiChoice, // selección múltiple (checkbox)
  text, // texto corto (nombre, teléfono)
  number, // numérico (gasto en transporte)
  textArea, // texto largo (descripción abierta)
  monthMultiSelect, // selección de uno o más meses del año
  matrixSingle, // tabla tipo Likert: filas x columnas, una selección por fila
}

/// Descripción declarativa de UNA pregunta del diagnóstico.
///
/// Esto reemplaza tener el Ejecutivo y el Ampliado como pantallas separadas
/// y duplicadas: cada pregunta se define una sola vez y se reutiliza entre
/// ambos formularios cuando el texto es idéntico (ver form_schemas.dart).
class FormFieldConfig {
  final String id; // identificador único, ej: "q1_comunidad_vive"
  final String numero; // número de pregunta tal como aparece en el original
  final String pregunta;
  final FieldType tipo;
  final List<String> opciones; // dropdown / singleChoice / multiChoice
  final List<String> filas; // matrixSingle
  final List<String> columnas; // matrixSingle
  final bool requerido;

  /// Si es true, agrega una opción final "Otros:" con campo de texto libre.
  final bool permiteOtro;
  final String otroLabel;
  final String otroOpcionTexto;

  /// Para preguntas tipo singleChoice donde una respuesta específica
  /// (no necesariamente la última) dispara un campo de texto adicional.
  /// Ejemplo: pregunta 19B, "Sí" dispara "¿Cuáles?".
  final String? otroTriggerValor;

  /// Límite de selecciones para multiChoice (ej. pregunta 34: "los 3 temas
  /// más importantes"). null = sin límite.
  final int? maxSelecciones;

  /// Visibilidad condicional: este campo solo se muestra si el campo con
  /// id == dependeDe tiene como respuesta uno de los valores en
  /// mostrarSiValores. Ejemplo real: pregunta 22 solo aplica si en la
  /// pregunta 21 la persona contestó "Sí, me han limitado".
  final String? dependeDe;
  final List<String>? mostrarSiValores;

  final String? ayuda;
  final String? placeholder;

  const FormFieldConfig({
    required this.id,
    required this.numero,
    required this.pregunta,
    required this.tipo,
    this.opciones = const [],
    this.filas = const [],
    this.columnas = const [],
    this.requerido = false,
    this.permiteOtro = false,
    this.otroLabel = 'Otros:',
    this.otroOpcionTexto = 'Otros',
    this.otroTriggerValor,
    this.maxSelecciones,
    this.dependeDe,
    this.mostrarSiValores,
    this.ayuda,
    this.placeholder,
  });
}

/// Agrupación de campos bajo un mismo encabezado temático
/// (ej. "Datos Generales e Identificación").
class FormSectionConfig {
  final String titulo;
  final List<FormFieldConfig> campos;

  const FormSectionConfig({
    required this.titulo,
    required this.campos,
  });
}

/// Un formulario completo = título + lista ordenada de secciones.
class FormSchema {
  final String id;
  final String titulo;
  final String descripcionCorta;
  final List<FormSectionConfig> secciones;

  const FormSchema({
    required this.id,
    required this.titulo,
    required this.descripcionCorta,
    required this.secciones,
  });

  int get totalPreguntas =>
      secciones.fold(0, (total, s) => total + s.campos.length);
}
