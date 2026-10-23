import 'package:soberania_alimentaria_app/data/catalogos.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/models/form_models.dart';

/// Alfabeto oficial para la generación de folios (32 caracteres sin ambiguos).
const String alfabetoFolio = 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';

/// Genera un folio de prueba reconocible que inicia con 'ZT' (8 caracteres en total).
String generarFolioZT(int indice) {
  // Genera 6 caracteres deterministas a partir del índice para reproducibilidad.
  final chars = StringBuffer();
  var rem = indice;
  for (int i = 0; i < 6; i++) {
    chars.write(alfabetoFolio[rem % alfabetoFolio.length]);
    rem = (rem ~/ alfabetoFolio.length) + (i + 1) * 7;
  }
  return 'ZT$chars';
}

/// Columnas oficiales aceptadas por el endpoint central en orden exacto (94 columnas incluyendo folio).
const List<String> columnasEndpointOrden = [
  'folio',
  'formulario',
  'p1_comunidad_vive',
  'p1B_comunidad_trabaja',
  'p2_consentimiento',
  'p3_municipio',
  'p4_nombre',
  'p5_telefono',
  'p6_taller',
  'p7_cultivo_principal',
  'p7_cultivo_principal_otro',
  'p8_forma_trabajo',
  'p9_distribucion',
  'p9_distribucion_otro',
  'p10_meses_alta',
  'p11_policultivo',
  'p11_cobertura',
  'p11_plagas',
  'p11_agua',
  'p11_semillas',
  'p11_barreras',
  'p11_reduccion',
  'p11_residuos',
  'p12_destino',
  'p12_destino_otro',
  'p12_impedimentos',
  'p12_impedimentos_otro',
  'p13_practica_exitosa',
  'p14_necesidades',
  'p14_acceso_estable',
  'p14_poca_dependencia',
  'p14_tradiciones',
  'p14_dieta_familiar',
  'p15_meses_dificiles',
  'p16_tiempo_transporte',
  'p17_gasto_transporte',
  'p18_frecuencia_viajes',
  'p19_mermas',
  'p19_conservacion',
  'p19_conservacion_cuales',
  'p20_momento_pago',
  'p21_limitacion_requisitos',
  'p22_requisitos_dificiles',
  'p22_requisitos_dificiles_otro',
  'p23_prob_sequia',
  'p23_prob_huracan',
  'p23_prob_plagas',
  'p23_prob_falta_agua',
  'p23_prob_precios',
  'p23_prob_pago_tardio',
  'p23_prob_caminos',
  'p23_prob_falta_insumos',
  'p23_prob_conflictos',
  'p23_prob_inocuidad',
  'p24_imp_sequia',
  'p24_imp_huracan',
  'p24_imp_plagas',
  'p24_imp_falta_agua',
  'p24_imp_precios',
  'p24_imp_pago_tardio',
  'p24_imp_caminos',
  'p24_imp_falta_insumos',
  'p24_imp_conflictos',
  'p24_imp_inocuidad',
  'p25_otro_riesgo',
  'p26_rol',
  'p26_rol_otro',
  'p27_acopio',
  'p27_calendario',
  'p27_transporte',
  'p27_circuitos',
  'p27_compras',
  'p27_confianza',
  'p28_factores_confianza',
  'p29_lleva_registro',
  'p30_donde_registra',
  'p30_donde_registra_otro',
  'p31_frecuencia_registro',
  'p32_disposicion_registro',
  'p33_apoyo_registro',
  'p33_apoyo_registro_otro',
  'p34_temas_capacitacion',
  'p34_temas_capacitacion_otro',
  'p35_problema_urgente',
  'p35_problema_urgente_otro',
  'p36_formato_aprendizaje',
  'p36_formato_aprendizaje_otro',
  'p37_tiempo_capacitacion',
  'p38_dificultad_asistencia',
  'p38_dificultad_asistencia_otro',
  'p39_actividades_red',
  'p40_taller_diseno',
  'latitud',
  'longitud',
];

/// Límites varchar en la base de datos central. El resto son TEXT o FLOAT.
const Map<String, int> limitesVarchar = {
  'p1_comunidad_vive': 255,
  'p1B_comunidad_trabaja': 250,
  'p2_consentimiento': 2,
  'p3_municipio': 100,
  'p4_nombre': 255,
  'p5_telefono': 20,
  'p6_taller': 50,
  'p7_cultivo_principal_otro': 255,
  'p8_forma_trabajo': 100,
  'p9_distribucion_otro': 255,
  'p11_policultivo': 20,
  'p11_cobertura': 20,
  'p11_plagas': 20,
  'p11_agua': 20,
  'p11_semillas': 20,
  'p11_barreras': 20,
  'p11_reduccion': 20,
  'p11_residuos': 20,
  'p12_destino_otro': 250,
  'p12_impedimentos_otro': 255,
  'p14_necesidades': 20,
  'p14_acceso_estable': 20,
  'p14_poca_dependencia': 20,
  'p14_tradiciones': 20,
  'p14_dieta_familiar': 20,
  'p16_tiempo_transporte': 50,
  'p17_gasto_transporte': 50,
  'p18_frecuencia_viajes': 50,
  'p19_mermas': 20,
  'p19_conservacion': 5,
  'p20_momento_pago': 50,
  'p21_limitacion_requisitos': 50,
  'p22_requisitos_dificiles_otro': 255,
  'p23_prob_sequia': 20,
  'p23_prob_huracan': 20,
  'p23_prob_plagas': 20,
  'p23_prob_falta_agua': 20,
  'p23_prob_precios': 20,
  'p23_prob_pago_tardio': 20,
  'p23_prob_caminos': 20,
  'p23_prob_falta_insumos': 20,
  'p23_prob_conflictos': 20,
  'p23_prob_inocuidad': 20,
  'p24_imp_sequia': 20,
  'p24_imp_huracan': 20,
  'p24_imp_plagas': 20,
  'p24_imp_falta_agua': 20,
  'p24_imp_precios': 20,
  'p24_imp_pago_tardio': 20,
  'p24_imp_caminos': 20,
  'p24_imp_falta_insumos': 20,
  'p24_imp_conflictos': 20,
  'p24_imp_inocuidad': 20,
  'p27_acopio': 20,
  'p27_calendario': 20,
  'p27_transporte': 20,
  'p27_circuitos': 20,
  'p27_compras': 20,
  'p27_confianza': 20,
  'p28_factores_confianza': 100,
  'p29_lleva_registro': 50,
  'p30_donde_registra': 110,
  'p30_donde_registra_otro': 255,
  'p31_frecuencia_registro': 50,
  'p32_disposicion_registro': 50,
  'p33_apoyo_registro_otro': 255,
  'p34_temas_capacitacion_otro': 255,
  'p35_problema_urgente': 100,
  'p35_problema_urgente_otro': 255,
  'p36_formato_aprendizaje': 100,
  'p36_formato_aprendizaje_otro': 255,
  'p37_tiempo_capacitacion': 50,
  'p38_dificultad_asistencia': 100,
  'p38_dificultad_asistencia_otro': 255,
};

/// Columnas exclusivas del formulario Ampliado (deben viajar null en el Ejecutivo).
const List<String> columnasExclusivasAmpliado = [
  'p12_impedimentos',
  'p12_impedimentos_otro',
  'p13_practica_exitosa',
  'p15_meses_dificiles',
  'p19_conservacion',
  'p19_conservacion_cuales',
  'p20_momento_pago',
  'p21_limitacion_requisitos',
  'p22_requisitos_dificiles',
  'p22_requisitos_dificiles_otro',
  'p27_acopio',
  'p27_calendario',
  'p27_transporte',
  'p27_circuitos',
  'p27_compras',
  'p27_confianza',
  'p28_factores_confianza',
  'p32_disposicion_registro',
  'p34_temas_capacitacion',
  'p34_temas_capacitacion_otro',
  'p36_formato_aprendizaje',
  'p36_formato_aprendizaje_otro',
  'p37_tiempo_capacitacion',
  'p38_dificultad_asistencia',
  'p38_dificultad_asistencia_otro',
  'p39_actividades_red',
];

/// Columnas exclusivas del formulario Ejecutivo (deben viajar null en el Ampliado).
const List<String> columnasExclusivasEjecutivo = [
  'p12_destino',
  'p12_destino_otro',
];

/// Columnas que nunca se capturan en ningún formulario y deben viajar siempre null.
const List<String> columnasSiempreNull = [
  'p24_imp_sequia',
  'p24_imp_huracan',
  'p24_imp_plagas',
  'p24_imp_falta_agua',
  'p24_imp_precios',
  'p24_imp_pago_tardio',
  'p24_imp_caminos',
  'p24_imp_falta_insumos',
  'p24_imp_conflictos',
  'p24_imp_inocuidad',
  'p40_taller_diseno',
];

/// Estructura de un escenario de prueba para validación de formularios.
class EscenarioPrueba {
  final String idLocal;
  final String folio;
  final String nombre;
  final FormSchema schema;
  final Map<String, dynamic> respuestas;
  final Map<String, String> otros;
  final double? latitud;
  final double? longitud;

  const EscenarioPrueba({
    required this.idLocal,
    required this.folio,
    required this.nombre,
    required this.schema,
    required this.respuestas,
    required this.otros,
    this.latitud,
    this.longitud,
  });
}

/// Busca un campo por su id en las secciones del esquema.
FormFieldConfig buscarCampoPorId(FormSchema schema, String id) {
  for (final sec in schema.secciones) {
    for (final c in sec.campos) {
      if (c.id == id) return c;
    }
  }
  throw ArgumentError('Campo "$id" no encontrado en esquema "${schema.id}"');
}

/// Obtiene todas las opciones de un campo de selección múltiple según el esquema,
/// respetando maxSelecciones (como el 3 de P34) e incluyendo opcionalmente "Otros" / "Otras".
Set<String> obtenerOpcionesMultiSelect(
  FormSchema schema,
  String id, {
  bool incluirOtro = false,
  bool ignorarMaxSelecciones = false,
}) {
  final campo = buscarCampoPorId(schema, id);
  if (campo.tipo == FieldType.monthMultiSelect) {
    return mesesDelAno.toSet();
  }

  final resultado = <String>{};
  if (campo.maxSelecciones != null && !ignorarMaxSelecciones) {
    final max = campo.maxSelecciones!;
    if (incluirOtro && campo.permiteOtro) {
      resultado.addAll(campo.opciones.take(max - 1));
      resultado.add(campo.otroOpcionTexto);
    } else {
      resultado.addAll(campo.opciones.take(max));
    }
  } else {
    resultado.addAll(campo.opciones);
    if (incluirOtro && campo.permiteOtro) {
      resultado.add(campo.otroOpcionTexto);
    }
  }
  return resultado;
}

/// Opciones de P30 para escenarios máximos: todas las opciones de P30 excepto
/// "No registro nada", más "Otros" (mide 92 caracteres, dentro de varchar(110)).
Set<String> obtenerOpcionesMultiSelectP30Maximo(FormSchema schema) {
  final campo = buscarCampoPorId(schema, 'p30_donde_registra');
  return {
    ...campo.opciones.where((o) => o != 'No registro nada'),
    campo.otroOpcionTexto,
  };
}

/// Valida la sanidad de un escenario contra el esquema del formulario:
/// 1. Cada valor de opción única o dropdown pertenece a campo.opciones (o a otroOpcionTexto si permiteOtro).
/// 2. Cada elemento de una multi-selección pertenece a campo.opciones o a otroOpcionTexto (o a los meses).
/// 3. Cada fila y valor de matriz pertenece a campo.filas y campo.columnas.
/// 4. Cada clave de otros corresponde a un campo con permiteOtro o otroTriggerValor.
/// 5. Si se marca "Otros"/"Otras" o trigger, existe su texto en otros, y viceversa.
List<String> validarSanidadEscenario(EscenarioPrueba escenario) {
  final errores = <String>[];
  final schema = escenario.schema;

  for (final entry in escenario.respuestas.entries) {
    final campoId = entry.key;
    final valor = entry.value;
    if (valor == null) continue;

    FormFieldConfig? campo;
    for (final sec in schema.secciones) {
      for (final c in sec.campos) {
        if (c.id == campoId) {
          campo = c;
          break;
        }
      }
      if (campo != null) break;
    }

    if (campo == null) {
      errores.add('Campo "$campoId" no existe en el esquema "${schema.id}"');
      continue;
    }

    switch (campo.tipo) {
      case FieldType.singleChoice:
      case FieldType.dropdown:
        final opcionesValidas = [
          ...campo.opciones,
          if (campo.permiteOtro) campo.otroOpcionTexto,
        ];
        if (!opcionesValidas.contains(valor)) {
          errores.add(
              'En ${escenario.idLocal}, campo "$campoId": el valor "$valor" no pertenece a opciones $opcionesValidas');
        }
        break;

      case FieldType.multiChoice:
        final opcionesValidas = [
          ...campo.opciones,
          if (campo.permiteOtro) campo.otroOpcionTexto,
        ];
        final items = (valor is Iterable) ? valor : [valor];
        for (final item in items) {
          if (!opcionesValidas.contains(item)) {
            errores.add(
                'En ${escenario.idLocal}, campo "$campoId": el elemento "$item" no pertenece a opciones $opcionesValidas');
          }
        }
        break;

      case FieldType.monthMultiSelect:
        final items = (valor is Iterable) ? valor : [valor];
        for (final item in items) {
          if (!mesesDelAno.contains(item)) {
            errores.add(
                'En ${escenario.idLocal}, campo "$campoId": el mes "$item" no es un mes válido');
          }
        }
        break;

      case FieldType.matrixSingle:
        if (valor is Map) {
          for (final rowEntry in valor.entries) {
            final fila = rowEntry.key;
            final colVal = rowEntry.value;
            if (!campo.filas.contains(fila)) {
              errores.add(
                  'En ${escenario.idLocal}, matriz "$campoId": fila "$fila" no existe en filas de ${campo.id}');
            }
            if (!campo.columnas.contains(colVal)) {
              errores.add(
                  'En ${escenario.idLocal}, matriz "$campoId", fila "$fila": valor "$colVal" no existe en columnas de ${campo.id}');
            }
          }
        }
        break;

      case FieldType.text:
      case FieldType.number:
      case FieldType.textArea:
        break;
    }
  }

  // Validar consistencia de "Otros"
  for (final entry in escenario.otros.entries) {
    final campoId = entry.key;
    final textoOtro = entry.value;

    FormFieldConfig? campo;
    for (final sec in schema.secciones) {
      for (final c in sec.campos) {
        if (c.id == campoId) {
          campo = c;
          break;
        }
      }
      if (campo != null) break;
    }

    if (campo == null) {
      errores.add(
          'En ${escenario.idLocal}, clave otros "$campoId" no existe en el esquema "${schema.id}"');
      continue;
    }

    if (!campo.permiteOtro && campo.otroTriggerValor == null) {
      errores.add(
          'En ${escenario.idLocal}, clave otros "$campoId" no tiene permiteOtro ni otroTriggerValor');
    }

    if (textoOtro.trim().isNotEmpty) {
      final resVal = escenario.respuestas[campoId];
      bool marcado = false;
      if (campo.otroTriggerValor != null && resVal == campo.otroTriggerValor) {
        marcado = true;
      }
      if (campo.permiteOtro) {
        if (resVal is Iterable && resVal.contains(campo.otroOpcionTexto)) {
          marcado = true;
        } else if (resVal == campo.otroOpcionTexto) {
          marcado = true;
        }
      }
      if (!marcado) {
        errores.add(
            'En ${escenario.idLocal}, campo "$campoId" tiene texto en otros ("$textoOtro") pero no se marcó "${campo.otroOpcionTexto}" ni trigger "${campo.otroTriggerValor}" en la respuesta ($resVal)');
      }
    }
  }

  // Viceversa: si se marcó "Otros"/"Otras" o trigger, debe existir su texto en otros
  for (final sec in schema.secciones) {
    for (final campo in sec.campos) {
      final resVal = escenario.respuestas[campo.id];
      if (resVal == null) continue;

      bool triggerMarcado = false;
      if (campo.otroTriggerValor != null && resVal == campo.otroTriggerValor) {
        triggerMarcado = true;
      }
      if (campo.permiteOtro) {
        if (resVal is Iterable && resVal.contains(campo.otroOpcionTexto)) {
          triggerMarcado = true;
        } else if (resVal == campo.otroOpcionTexto) {
          triggerMarcado = true;
        }
      }

      if (triggerMarcado) {
        final texto = escenario.otros[campo.id]?.trim();
        if (texto == null || texto.isEmpty) {
          errores.add(
              'En ${escenario.idLocal}, campo "${campo.id}" tiene marcado "${campo.otroOpcionTexto}"/trigger pero no tiene texto en otros');
        }
      }
    }
  }

  return errores;
}

/// Función PURA e INDEPENDIENTE para calcular el payload esperado de un escenario.
/// NO usa _formatearValor ni nada de lib/.
Map<String, dynamic> calcularEsperadoIndependiente(EscenarioPrueba escenario) {
  final res = escenario.respuestas;
  final otros = escenario.otros;
  final esEjecutivo = escenario.schema.id == 'ejecutivo';

  String? fmt(dynamic val) {
    if (val == null) return null;
    if (val is String) {
      final t = val.trim();
      return t.isEmpty ? null : t;
    }
    if (val is Set) {
      if (val.isEmpty) return null;
      return val.map((e) => e.toString().trim()).join(',');
    }
    if (val is List) {
      if (val.isEmpty) return null;
      return val.map((e) => e.toString().trim()).join(',');
    }
    return val.toString();
  }

  String? fmtOtro(String key) {
    final v = otros[key];
    if (v == null) return null;
    final t = v.trim();
    return t.isEmpty ? null : t;
  }

  final p11 = (res['p11'] as Map<String, String>?) ?? {};
  final p14 = (res['p14'] as Map<String, String>?) ?? {};
  final p23 = (res['p23'] as Map<String, String>?) ?? {};
  final p27 = (res['p27'] as Map<String, String>?) ?? {};

  final esperado = <String, dynamic>{
    'folio': escenario.folio,
    'formulario': escenario.schema.id,
    'p1_comunidad_vive': fmt(res['p1_comunidad_vive']),
    'p1B_comunidad_trabaja': fmt(res['p1B_comunidad_trabaja']),
    'p2_consentimiento': fmt(res['p2_consentimiento']),
    'p3_municipio': fmt(res['p3_municipio']),
    'p4_nombre': fmt(res['p4_nombre']),
    'p5_telefono': fmt(res['p5_telefono']),
    'p6_taller': fmt(res['p6_taller']),
    'p7_cultivo_principal': fmt(res['p7_cultivo_principal']),
    'p7_cultivo_principal_otro': fmtOtro('p7_cultivo_principal'),
    'p8_forma_trabajo': fmt(res['p8_forma_trabajo']),
    'p9_distribucion': fmt(res['p9_distribucion']),
    'p9_distribucion_otro': fmtOtro('p9_distribucion'),
    'p10_meses_alta': fmt(res['p10_meses_alta']),

    // P11 - Matriz de prácticas
    'p11_policultivo': fmt(p11['Policultivo o rotación (milpa, hortaliza)']),
    'p11_cobertura':
        fmt(p11['Cobertura de suelo / abonos orgánicos / acolchado']),
    'p11_plagas':
        fmt(p11['Manejo biológico de plagas (bioinsumos, control cultural)']),
    'p11_agua':
        fmt(p11['Captación y uso frecuente del agua (riego, conservación)']),
    'p11_semillas': fmt(p11['Conservación e intercambio de semillas criollas']),
    'p11_barreras': fmt(
        p11['Barreras vivas / árboles / sombra (microclima y biodiversidad)']),
    'p11_reduccion':
        fmt(p11['Reducción de insumos externos (fertilizantes, agroquímicos)']),
    'p11_residuos':
        fmt(p11['Manejo de residuos orgánicos (composta, lombricomposta)']),

    // P12 destino (Ejecutivo) vs impedimentos (Ampliado)
    'p12_destino': esEjecutivo ? fmt(res['p12_destino']) : null,
    'p12_destino_otro': esEjecutivo ? fmtOtro('p12_destino') : null,
    'p12_impedimentos': !esEjecutivo ? fmt(res['p12_impedimentos']) : null,
    'p12_impedimentos_otro': !esEjecutivo ? fmtOtro('p12_impedimentos') : null,

    'p13_practica_exitosa':
        !esEjecutivo ? fmt(res['p13_practica_exitosa']) : null,

    // P14 - Matriz de soberanía
    'p14_necesidades': fmt(p14[
        'Decidimos qué producir según nuestras propias necesidades alimentarias']),
    'p14_acceso_estable': fmt(
        p14['Tenemos acceso estable a alimentos sanos durante todo el año']),
    'p14_poca_dependencia': fmt(
        p14['Dependemos poco de semillas o insumos externos para producir']),
    'p14_tradiciones': fmt(
        p14['Conservamos prácticas y alimentos tradicionales de la región']),
    'p14_dieta_familiar': fmt(p14[
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos']),

    'p15_meses_dificiles':
        !esEjecutivo ? fmt(res['p15_meses_dificiles']) : null,
    'p16_tiempo_transporte': fmt(res['p16_tiempo_transporte']),
    'p17_gasto_transporte': fmt(res['p17_gasto_transporte']),
    'p18_frecuencia_viajes': fmt(res['p18_frecuencia_viajes']),
    'p19_mermas': fmt(res['p19_mermas']),
    'p19_conservacion': !esEjecutivo ? fmt(res['p19_conservacion']) : null,
    'p19_conservacion_cuales':
        !esEjecutivo ? fmtOtro('p19_conservacion') : null,
    'p20_momento_pago': !esEjecutivo ? fmt(res['p20_momento_pago']) : null,
    'p21_limitacion_requisitos':
        !esEjecutivo ? fmt(res['p21_limitacion_requisitos']) : null,
    'p22_requisitos_dificiles':
        !esEjecutivo ? fmt(res['p22_requisitos_dificiles']) : null,
    'p22_requisitos_dificiles_otro':
        !esEjecutivo ? fmtOtro('p22_requisitos_dificiles') : null,

    // P23 - Matriz de probabilidad
    'p23_prob_sequia': fmt(p23['Sequía o calor extremo']),
    'p23_prob_huracan': fmt(p23['Huracán o inundación']),
    'p23_prob_plagas': fmt(p23['Plagas o enfermedades']),
    'p23_prob_falta_agua': fmt(p23['Falta de agua o energía para producción']),
    'p23_prob_precios': fmt(p23['Caída o volatilidad de precios']),
    'p23_prob_pago_tardio':
        fmt(p23['Pago tardío o incumplimiento del comprador']),
    'p23_prob_caminos': fmt(p23['Caminos o transporte interrumpidos']),
    'p23_prob_falta_insumos':
        fmt(p23['Falta de insumos, semillas o bioinsumos']),
    'p23_prob_conflictos':
        fmt(p23['Conflictos organizativos o baja cooperación']),
    'p23_prob_inocuidad':
        fmt(p23['Problemas de inocuidad, inspecciones o rechazos']),

    // P24 - Siempre null
    'p24_imp_sequia': null,
    'p24_imp_huracan': null,
    'p24_imp_plagas': null,
    'p24_imp_falta_agua': null,
    'p24_imp_precios': null,
    'p24_imp_pago_tardio': null,
    'p24_imp_caminos': null,
    'p24_imp_falta_insumos': null,
    'p24_imp_conflictos': null,
    'p24_imp_inocuidad': null,

    'p25_otro_riesgo': fmt(res['p25_otro_riesgo']),
    'p26_rol': fmt(res['p26_rol']),
    'p26_rol_otro': fmtOtro('p26_rol'),

    // P27 - Matriz de gobernanza (Ampliado)
    'p27_acopio': !esEjecutivo
        ? fmt(p27[
            'Participaría en un acopio comunitario si hay reglas claras y transparencia'])
        : null,
    'p27_calendario': !esEjecutivo
        ? fmt(p27['Aceptaría un calendario coordinado de entrega o venta'])
        : null,
    'p27_transporte': !esEjecutivo
        ? fmt(
            p27['Compartiría transporte o rutas si eso reduce costos y mermas'])
        : null,
    'p27_circuitos': !esEjecutivo
        ? fmt(p27[
            'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)'])
        : null,
    'p27_compras': !esEjecutivo
        ? fmt(
            p27['Me interesa acceder a compras públicas si hay acompañamiento'])
        : null,
    'p27_confianza': !esEjecutivo
        ? fmt(p27[
            'Confío en mi comunidad para manejar fondos y logística con transparencia'])
        : null,

    'p28_factores_confianza':
        !esEjecutivo ? fmt(res['p28_factores_confianza']) : null,
    'p29_lleva_registro': fmt(res['p29_lleva_registro']),
    'p30_donde_registra': fmt(res['p30_donde_registra']),
    'p30_donde_registra_otro': fmtOtro('p30_donde_registra'),
    'p31_frecuencia_registro': fmt(res['p31_frecuencia_registro']),
    'p32_disposicion_registro':
        !esEjecutivo ? fmt(res['p32_disposicion_registro']) : null,
    'p33_apoyo_registro': fmt(res['p33_apoyo_registro']),
    'p33_apoyo_registro_otro': fmtOtro('p33_apoyo_registro'),
    'p34_temas_capacitacion':
        !esEjecutivo ? fmt(res['p34_temas_capacitacion']) : null,
    'p34_temas_capacitacion_otro':
        !esEjecutivo ? fmtOtro('p34_temas_capacitacion') : null,
    'p35_problema_urgente': fmt(res['p35_problema_urgente']),
    'p35_problema_urgente_otro': fmtOtro('p35_problema_urgente'),
    'p36_formato_aprendizaje':
        !esEjecutivo ? fmt(res['p36_formato_aprendizaje']) : null,
    'p36_formato_aprendizaje_otro':
        !esEjecutivo ? fmtOtro('p36_formato_aprendizaje') : null,
    'p37_tiempo_capacitacion':
        !esEjecutivo ? fmt(res['p37_tiempo_capacitacion']) : null,
    'p38_dificultad_asistencia':
        !esEjecutivo ? fmt(res['p38_dificultad_asistencia']) : null,
    'p38_dificultad_asistencia_otro':
        !esEjecutivo ? fmtOtro('p38_dificultad_asistencia') : null,
    'p39_actividades_red':
        !esEjecutivo ? fmt(res['p39_actividades_red']) : null,

    'p40_taller_diseno': null,
    'latitud': escenario.latitud,
    'longitud': escenario.longitud,
  };

  return esperado;
}

/// Genera escenarios exhaustivos para CI local (sin red).
List<EscenarioPrueba> generarEscenariosCobertura() {
  final escenarios = <EscenarioPrueba>[];
  int folioIdx = 0;

  // -------------------------------------------------------------
  // 1. ESCENARIOS MÍNIMOS (solo los 3 campos obligatorios)
  // -------------------------------------------------------------
  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_min_ejecutivo',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Minimo Ejecutivo',
    schema: formularioEjecutivo,
    respuestas: {
      'p1_comunidad_vive': 'Chimay',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Celestún',
    },
    otros: {},
    latitud: null,
    longitud: null,
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_min_ampliado',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Minimo Ampliado',
    schema: formularioAmpliado,
    respuestas: {
      'p1_comunidad_vive': 'Ek Balam',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Ticul',
    },
    otros: {},
    latitud: null,
    longitud: null,
  ));

  // -------------------------------------------------------------
  // 2. ESCENARIOS MÁXIMOS (todas las preguntas y multi-selects dinámicos)
  // -------------------------------------------------------------
  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_max_ejecutivo',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Maximo Ejecutivo',
    schema: formularioEjecutivo,
    latitud: 21.0103,
    longitud: -89.6901,
    respuestas: {
      'p1_comunidad_vive': 'Hú',
      'p1B_comunidad_trabaja': 'Tekit',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Cantamayec',
      'p4_nombre': 'ZT Prueba Ejecutivo Maximo',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'Grupo informal (vecinos, familia, amigos)',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioEjecutivo, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Frecuente',
        'Manejo biológico de plagas (bioinsumos, control cultural)':
            'Ocasional',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Frecuente',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'No realiza',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_destino': 'Otros',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'Neutral',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p16_tiempo_transporte': 'Entre 31 y 60 minutos',
      'p17_gasto_transporte': '350',
      'p18_frecuencia_viajes': '2 o 3 veces por semana',
      'p19_mermas': 'Frecuente',
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Probable',
        'Plagas o enfermedades': 'Posible',
        'Falta de agua o energía para producción': 'Improbable',
        'Caída o volatilidad de precios': 'Muy improbable',
        'Pago tardío o incumplimiento del comprador': 'Probable',
        'Caminos o transporte interrumpidos': 'Posible',
        'Falta de insumos, semillas o bioinsumos': 'Improbable',
        'Conflictos organizativos o baja cooperación': 'Muy improbable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Posible',
      },
      'p25_otro_riesgo': 'Riesgo climático severo y falta de caminos',
      'p26_rol': obtenerOpcionesMultiSelect(formularioEjecutivo, 'p26_rol',
          incluirOtro: true),
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioEjecutivo),
      'p31_frecuencia_registro': 'Todos los días',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p33_apoyo_registro',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
    },
    otros: {
      'p7_cultivo_principal': 'Pitahaya roja y guanábana silvestre',
      'p9_distribucion': 'Ferias agroecológicas estatales',
      'p12_destino': 'Donación comunitaria a comedores',
      'p26_rol': 'Promotor agroecológico local',
      'p30_donde_registra': 'Cuaderno de campo y app de notas',
      'p33_apoyo_registro': 'Talleres comunitarios mensuales',
      'p35_problema_urgente': 'Falta de almacenamiento frío',
    },
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_max_ampliado',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Maximo Ampliado',
    schema: formularioAmpliado,
    latitud: 20.5489,
    longitud: -88.8275,
    respuestas: {
      'p1_comunidad_vive': 'Muna',
      'p1B_comunidad_trabaja': 'Santa María',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Oxkutzcab',
      'p4_nombre': 'ZT Prueba Ampliado Maximo',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'Cooperativa formalmente constituida',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Siempre',
        'Manejo biológico de plagas (bioinsumos, control cultural)': 'Siempre',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Siempre',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'Siempre',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_impedimentos': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p12_impedimentos',
          incluirOtro: true),
      'p13_practica_exitosa': 'Elaboración de compostas con ceniza y rastrojo',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'Neutral',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p15_meses_dificiles':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p15_meses_dificiles'),
      'p16_tiempo_transporte': 'Entre 1 y 2 horas',
      'p17_gasto_transporte': '450',
      'p18_frecuencia_viajes': 'Todos los días',
      'p19_mermas': 'Seguido',
      'p19_conservacion': 'Si',
      'p20_momento_pago': 'Más de 30 días después',
      'p21_limitacion_requisitos': 'Sí, me han limitado',
      'p22_requisitos_dificiles': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p22_requisitos_dificiles',
          incluirOtro: true),
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Muy probable',
        'Plagas o enfermedades': 'Muy probable',
        'Falta de agua o energía para producción': 'Muy probable',
        'Caída o volatilidad de precios': 'Muy probable',
        'Pago tardío o incumplimiento del comprador': 'Muy probable',
        'Caminos o transporte interrumpidos': 'Muy probable',
        'Falta de insumos, semillas o bioinsumos': 'Muy probable',
        'Conflictos organizativos o baja cooperación': 'Muy probable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Muy probable',
      },
      'p25_otro_riesgo': 'Falta de relevo generacional en la milpa',
      'p26_rol': obtenerOpcionesMultiSelect(formularioAmpliado, 'p26_rol',
          incluirOtro: true),
      'p27': {
        'Participaría en un acopio comunitario si hay reglas claras y transparencia':
            'Muy de acuerdo',
        'Aceptaría un calendario coordinado de entrega o venta':
            'Muy de acuerdo',
        'Compartiría transporte o rutas si eso reduce costos y mermas':
            'Muy de acuerdo',
        'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)':
            'Muy de acuerdo',
        'Me interesa acceder a compras públicas si hay acompañamiento':
            'Muy de acuerdo',
        'Confío en mi comunidad para manejar fondos y logística con transparencia':
            'Muy de acuerdo',
      },
      'p28_factores_confianza': 'Transparencia de ingresos y gastos',
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioAmpliado),
      'p31_frecuencia_registro': 'Una vez a la semana',
      'p32_disposicion_registro': 'Totalmente dispuesto',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p33_apoyo_registro',
          incluirOtro: true),
      // P34 con tope de 3 opciones respetado (2 de opciones + 'Otras'):
      'p34_temas_capacitacion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p34_temas_capacitacion',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
      'p36_formato_aprendizaje': 'Otras',
      'p37_tiempo_capacitacion': '4 horas (media jornada)',
      'p38_dificultad_asistencia': 'Otras',
      'p39_actividades_red': 'Gestión de pedidos y clientes',
    },
    otros: {
      'p7_cultivo_principal': 'Cítricos criollos y achiote',
      'p9_distribucion': 'Canastas a domicilio en Mérida',
      'p12_impedimentos': 'Falta de canales de comercialización justa',
      'p19_conservacion': 'Deshidratador solar y encurtidos',
      'p22_requisitos_dificiles': 'Tabla nutrimental y código de barras',
      'p26_rol': 'Coordinador técnico de grupo',
      'p30_donde_registra': 'Bitácora física de campo',
      'p33_apoyo_registro': 'Acompañamiento en parcela',
      'p34_temas_capacitacion': 'Biofábricas y biofertilizantes',
      'p35_problema_urgente': 'Invasión de plagas resistentes',
      'p36_formato_aprendizaje': 'Talleres con dinámicas vivenciales',
      'p38_dificultad_asistencia': 'Cuidado de adultos mayores',
    },
  ));

  // -------------------------------------------------------------
  // 3. ESCENARIOS MAX_VARCHAR (multi-selects con opciones P30 máximo y "Otros" al límite exacto de la columna)
  // -------------------------------------------------------------
  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_max_varchar_ejecutivo',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Max Varchar Ejecutivo',
    schema: formularioEjecutivo,
    latitud: 21.0103,
    longitud: -89.6901,
    respuestas: {
      'p1_comunidad_vive': 'Hú',
      'p1B_comunidad_trabaja': 'Tekit',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Cantamayec',
      'p4_nombre': 'ZT Prueba Max Varchar Ejecutivo',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'Grupo informal (vecinos, familia, amigos)',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioEjecutivo, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Siempre',
        'Manejo biológico de plagas (bioinsumos, control cultural)': 'Siempre',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Siempre',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'Siempre',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_destino': 'Otros',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'De acuerdo',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p16_tiempo_transporte': 'Entre 31 y 60 minutos',
      'p17_gasto_transporte': '350',
      'p18_frecuencia_viajes': '2 o 3 veces por semana',
      'p19_mermas': 'Frecuente',
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Muy probable',
        'Plagas o enfermedades': 'Muy probable',
        'Falta de agua o energía para producción': 'Muy probable',
        'Caída o volatilidad de precios': 'Muy probable',
        'Pago tardío o incumplimiento del comprador': 'Muy probable',
        'Caminos o transporte interrumpidos': 'Muy probable',
        'Falta de insumos, semillas o bioinsumos': 'Muy probable',
        'Conflictos organizativos o baja cooperación': 'Muy probable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Muy probable',
      },
      'p25_otro_riesgo': 'Riesgo climático severo y falta de caminos',
      'p26_rol': obtenerOpcionesMultiSelect(formularioEjecutivo, 'p26_rol',
          incluirOtro: true),
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioEjecutivo),
      'p31_frecuencia_registro': 'Todos los días',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p33_apoyo_registro',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
    },
    otros: {
      'p7_cultivo_principal':
          'C' * (limitesVarchar['p7_cultivo_principal_otro'] ?? 255),
      'p9_distribucion': 'D' * (limitesVarchar['p9_distribucion_otro'] ?? 255),
      'p12_destino': 'E' * (limitesVarchar['p12_destino_otro'] ?? 250),
      'p26_rol': 'R' * 255,
      'p30_donde_registra':
          'R' * (limitesVarchar['p30_donde_registra_otro'] ?? 255),
      'p33_apoyo_registro':
          'A' * (limitesVarchar['p33_apoyo_registro_otro'] ?? 255),
      'p35_problema_urgente':
          'U' * (limitesVarchar['p35_problema_urgente_otro'] ?? 255),
    },
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_max_varchar_ampliado',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Max Varchar Ampliado',
    schema: formularioAmpliado,
    latitud: 20.5489,
    longitud: -88.8275,
    respuestas: {
      'p1_comunidad_vive': 'Muna',
      'p1B_comunidad_trabaja': 'Santa María',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Oxkutzcab',
      'p4_nombre': 'ZT Prueba Max Varchar Ampliado',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'Cooperativa formalmente constituida',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Siempre',
        'Manejo biológico de plagas (bioinsumos, control cultural)': 'Siempre',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Siempre',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'Siempre',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_impedimentos': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p12_impedimentos',
          incluirOtro: true),
      'p13_practica_exitosa': 'Elaboración de compostas con ceniza y rastrojo',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'De acuerdo',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p15_meses_dificiles':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p15_meses_dificiles'),
      'p16_tiempo_transporte': 'Entre 1 y 2 horas',
      'p17_gasto_transporte': '450',
      'p18_frecuencia_viajes': 'Todos los días',
      'p19_mermas': 'Seguido',
      'p19_conservacion': 'Si',
      'p20_momento_pago': 'Más de 30 días después',
      'p21_limitacion_requisitos': 'Sí, me han limitado',
      'p22_requisitos_dificiles': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p22_requisitos_dificiles',
          incluirOtro: true),
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Muy probable',
        'Plagas o enfermedades': 'Muy probable',
        'Falta de agua o energía para producción': 'Muy probable',
        'Caída o volatilidad de precios': 'Muy probable',
        'Pago tardío o incumplimiento del comprador': 'Muy probable',
        'Caminos o transporte interrumpidos': 'Muy probable',
        'Falta de insumos, semillas o bioinsumos': 'Muy probable',
        'Conflictos organizativos o baja cooperación': 'Muy probable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Muy probable',
      },
      'p25_otro_riesgo': 'Falta de relevo generacional en la milpa',
      'p26_rol': obtenerOpcionesMultiSelect(formularioAmpliado, 'p26_rol',
          incluirOtro: true),
      'p27': {
        'Participaría en un acopio comunitario si hay reglas claras y transparencia':
            'Muy de acuerdo',
        'Aceptaría un calendario coordinado de entrega o venta':
            'Muy de acuerdo',
        'Compartiría transporte o rutas si eso reduce costos y mermas':
            'Muy de acuerdo',
        'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)':
            'Muy de acuerdo',
        'Me interesa acceder a compras públicas si hay acompañamiento':
            'Muy de acuerdo',
        'Confío en mi comunidad para manejar fondos y logística con transparencia':
            'Muy de acuerdo',
      },
      'p28_factores_confianza': 'Transparencia de ingresos y gastos',
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioAmpliado),
      'p31_frecuencia_registro': 'Una vez a la semana',
      'p32_disposicion_registro': 'Totalmente dispuesto',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p33_apoyo_registro',
          incluirOtro: true),
      'p34_temas_capacitacion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p34_temas_capacitacion',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
      'p36_formato_aprendizaje': 'Otras',
      'p37_tiempo_capacitacion': '4 horas (media jornada)',
      'p38_dificultad_asistencia': 'Otras',
      'p39_actividades_red': 'Gestión de pedidos y clientes',
    },
    otros: {
      'p7_cultivo_principal':
          'C' * (limitesVarchar['p7_cultivo_principal_otro'] ?? 255),
      'p9_distribucion': 'D' * (limitesVarchar['p9_distribucion_otro'] ?? 255),
      'p12_impedimentos':
          'I' * (limitesVarchar['p12_impedimentos_otro'] ?? 255),
      'p19_conservacion': 'M' * 255,
      'p22_requisitos_dificiles':
          'Q' * (limitesVarchar['p22_requisitos_dificiles_otro'] ?? 255),
      'p26_rol': 'R' * 255,
      'p30_donde_registra':
          'R' * (limitesVarchar['p30_donde_registra_otro'] ?? 255),
      'p33_apoyo_registro':
          'A' * (limitesVarchar['p33_apoyo_registro_otro'] ?? 255),
      'p34_temas_capacitacion':
          'T' * (limitesVarchar['p34_temas_capacitacion_otro'] ?? 255),
      'p35_problema_urgente':
          'U' * (limitesVarchar['p35_problema_urgente_otro'] ?? 255),
      'p36_formato_aprendizaje':
          'F' * (limitesVarchar['p36_formato_aprendizaje_otro'] ?? 255),
      'p38_dificultad_asistencia':
          'A' * (limitesVarchar['p38_dificultad_asistencia_otro'] ?? 255),
    },
  ));

  // -------------------------------------------------------------
  // 4. CONDICIONALES ESPECÍFICOS (P21 = Sí con P22 vs No me han limitado)
  // -------------------------------------------------------------
  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_cond_p21_si',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Condicional P21 Si',
    schema: formularioAmpliado,
    latitud: 20.9700,
    longitud: -89.6200,
    respuestas: {
      'p1_comunidad_vive': 'Chimay',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Chumayel',
      'p4_nombre': 'ZT Prueba Condicional P21 Si',
      'p5_telefono': '0000000000',
      'p21_limitacion_requisitos': 'Sí, me han limitado',
      'p22_requisitos_dificiles': {'Certificación oficial', 'Otros'},
    },
    otros: {
      'p22_requisitos_dificiles': 'Costo de certificación orgánica',
    },
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'cob_cond_p21_no',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Condicional P21 No',
    schema: formularioAmpliado,
    latitud: null,
    longitud: null,
    respuestas: {
      'p1_comunidad_vive': 'Tekit',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Tekit',
      'p4_nombre': 'ZT Prueba Condicional P21 No',
      'p5_telefono': '0000000000',
      'p21_limitacion_requisitos': 'No me han limitado',
      // P22 no se contesta y debe viajar null
    },
    otros: {},
  ));

  // -------------------------------------------------------------
  // 5. ROTACIÓN COMPLETA DIRIGIDA POR EL ESQUEMA
  //    Cubre cada municipio (106) y comunidad (16) al menos una vez,
  //    rotando opciones de esquema de forma determinista.
  // -------------------------------------------------------------
  final totalRotaciones = municipiosYucatan.length; // 106 pasos
  for (int k = 0; k < totalRotaciones; k++) {
    final esE = k < 53;
    final schema = esE ? formularioEjecutivo : formularioAmpliado;
    final folio = generarFolioZT(folioIdx++);
    final nombre = 'ZT Prueba Rotacion $k ${schema.id}';

    final respuestas = <String, dynamic>{};
    final otros = <String, String>{};

    final coordLat = k % 3 == 0 ? (20.0 + (k % 100) * 0.01) : null;
    final coordLon = coordLat != null ? (-89.0 - (k % 100) * 0.01) : null;

    for (final seccion in schema.secciones) {
      for (final campo in seccion.campos) {
        if (campo.dependeDe != null && campo.mostrarSiValores != null) {
          final valorPadre = respuestas[campo.dependeDe];
          if (!campo.mostrarSiValores!.contains(valorPadre)) {
            continue;
          }
        }

        switch (campo.tipo) {
          case FieldType.dropdown:
          case FieldType.singleChoice:
            final n = campo.opciones.length;
            final idx =
                campo.id == 'p1B_comunidad_trabaja' ? (k + 3) % n : k % n;
            final valor = campo.opciones[idx];
            respuestas[campo.id] = valor;

            if (campo.otroTriggerValor != null &&
                valor == campo.otroTriggerValor) {
              otros[campo.id] = 'Detalle rotacion $k ${campo.id}';
            }
            break;

          case FieldType.multiChoice:
            final n = campo.opciones.length;
            final opcion = campo.opciones[k % n];
            respuestas[campo.id] = {opcion};
            break;

          case FieldType.monthMultiSelect:
            final mes = mesesDelAno[k % mesesDelAno.length];
            respuestas[campo.id] = {mes};
            break;

          case FieldType.matrixSingle:
            final mapaMatriz = <String, String>{};
            final n = campo.columnas.length;
            for (int f = 0; f < campo.filas.length; f++) {
              final fila = campo.filas[f];
              final colVal = campo.columnas[(k + f) % n];
              mapaMatriz[fila] = colVal;
            }
            respuestas[campo.id] = mapaMatriz;
            break;

          case FieldType.text:
            if (campo.id == 'p4_nombre') {
              respuestas[campo.id] = 'ZT Prueba Rotacion $k';
            }
            break;

          case FieldType.number:
            if (campo.id == 'p5_telefono') {
              respuestas[campo.id] = '0000000000';
            } else if (campo.id == 'p17_gasto_transporte') {
              respuestas[campo.id] = '${(k * 15) % 500}';
            }
            break;

          case FieldType.textArea:
            respuestas[campo.id] = 'Texto rotacion $k ${campo.id}';
            break;
        }
      }
    }

    escenarios.add(EscenarioPrueba(
      idLocal: 'cob_rot_$k',
      folio: folio,
      nombre: nombre,
      schema: schema,
      latitud: coordLat,
      longitud: coordLon,
      respuestas: respuestas,
      otros: otros,
    ));
  }

  return escenarios;
}

/// Genera escenarios controlados para validación manual contra servidor (<= 30 inserciones).
List<EscenarioPrueba> generarEscenariosServidor() {
  final escenarios = <EscenarioPrueba>[];
  int folioIdx = 1000;

  // 1. Mínimo Ejecutivo y Ampliado (2)
  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_min_ejecutivo',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Minimo Ejecutivo',
    schema: formularioEjecutivo,
    respuestas: {
      'p1_comunidad_vive': 'Chimay',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Celestún',
    },
    otros: {},
    latitud: null,
    longitud: null,
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_min_ampliado',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Minimo Ampliado',
    schema: formularioAmpliado,
    respuestas: {
      'p1_comunidad_vive': 'Tekit',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Muna',
    },
    otros: {},
    latitud: null,
    longitud: null,
  ));

  // 2. Máximo Ejecutivo y Ampliado (2)
  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_max_ejecutivo',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Maximo Ejecutivo',
    schema: formularioEjecutivo,
    latitud: 20.9674,
    longitud: -89.5926,
    respuestas: {
      'p1_comunidad_vive': 'Hú',
      'p1B_comunidad_trabaja': 'Tekit',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Cantamayec',
      'p4_nombre': 'ZT Prueba Ejecutivo 01',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'De manera individual, sin organización',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioEjecutivo, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Frecuente',
        'Manejo biológico de plagas (bioinsumos, control cultural)':
            'Ocasional',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Frecuente',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'No realiza',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_destino': 'Otros',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'De acuerdo',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p16_tiempo_transporte': 'Menos de 15 minutos',
      'p17_gasto_transporte': '150',
      'p18_frecuencia_viajes': 'Una vez a la semana',
      'p19_mermas': 'Ocasional',
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Probable',
        'Plagas o enfermedades': 'Posible',
        'Falta de agua o energía para producción': 'Improbable',
        'Caída o volatilidad de precios': 'Muy improbable',
        'Pago tardío o incumplimiento del comprador': 'Posible',
        'Caminos o transporte interrumpidos': 'Improbable',
        'Falta de insumos, semillas o bioinsumos': 'Muy probable',
        'Conflictos organizativos o baja cooperación': 'Improbable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Muy improbable',
      },
      'p25_otro_riesgo': 'Riesgo de prueba ZT',
      'p26_rol': obtenerOpcionesMultiSelect(formularioEjecutivo, 'p26_rol',
          incluirOtro: true),
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioEjecutivo),
      'p31_frecuencia_registro': 'Una vez a la semana',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioEjecutivo, 'p33_apoyo_registro',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
    },
    otros: {
      'p7_cultivo_principal': 'Cultivo ZT',
      'p9_distribucion': 'Canal ZT',
      'p12_destino': 'Destino ZT',
      'p26_rol': 'Rol ZT',
      'p30_donde_registra': 'Registro ZT',
      'p33_apoyo_registro': 'Apoyo ZT',
      'p35_problema_urgente': 'Problema ZT',
    },
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_max_ampliado',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Maximo Ampliado',
    schema: formularioAmpliado,
    latitud: 20.4291,
    longitud: -89.3026,
    respuestas: {
      'p1_comunidad_vive': 'Santa María',
      'p1B_comunidad_trabaja': 'Muna',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Tekit',
      'p4_nombre': 'ZT Prueba Ampliado 02',
      'p5_telefono': '0000000000',
      'p6_taller': 'Sí, me interesa',
      'p7_cultivo_principal': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p7_cultivo_principal',
          incluirOtro: true),
      'p8_forma_trabajo': 'Grupo informal (vecinos, familia, amigos)',
      'p9_distribucion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p9_distribucion',
          incluirOtro: true),
      'p10_meses_alta':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p10_meses_alta'),
      'p11': {
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
        'Cobertura de suelo / abonos orgánicos / acolchado': 'Siempre',
        'Manejo biológico de plagas (bioinsumos, control cultural)': 'Siempre',
        'Captación y uso frecuente del agua (riego, conservación)': 'Siempre',
        'Conservación e intercambio de semillas criollas': 'Siempre',
        'Barreras vivas / árboles / sombra (microclima y biodiversidad)':
            'Siempre',
        'Reducción de insumos externos (fertilizantes, agroquímicos)':
            'Siempre',
        'Manejo de residuos orgánicos (composta, lombricomposta)': 'Siempre',
      },
      'p12_impedimentos': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p12_impedimentos',
          incluirOtro: true),
      'p13_practica_exitosa': 'Manejo agroecológico ZT',
      'p14': {
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'De acuerdo',
        'Dependemos poco de semillas o insumos externos para producir':
            'De acuerdo',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p15_meses_dificiles':
          obtenerOpcionesMultiSelect(formularioAmpliado, 'p15_meses_dificiles'),
      'p16_tiempo_transporte': 'Entre 15 y 30 minutos',
      'p17_gasto_transporte': '200',
      'p18_frecuencia_viajes': '2 o 3 veces por semana',
      'p19_mermas': 'No ocurre',
      'p19_conservacion': 'Si',
      'p20_momento_pago': 'Al momento de la entrega (contado)',
      'p21_limitacion_requisitos': 'Sí, me han limitado',
      'p22_requisitos_dificiles': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p22_requisitos_dificiles',
          incluirOtro: true),
      'p23': {
        'Sequía o calor extremo': 'Muy probable',
        'Huracán o inundación': 'Probable',
        'Plagas o enfermedades': 'Posible',
        'Falta de agua o energía para producción': 'Improbable',
        'Caída o volatilidad de precios': 'Muy improbable',
        'Pago tardío o incumplimiento del comprador': 'Posible',
        'Caminos o transporte interrumpidos': 'Improbable',
        'Falta de insumos, semillas o bioinsumos': 'Muy probable',
        'Conflictos organizativos o baja cooperación': 'Improbable',
        'Problemas de inocuidad, inspecciones o rechazos': 'Muy improbable',
      },
      'p25_otro_riesgo': 'Riesgo prueba ZT Ampliado',
      'p26_rol': obtenerOpcionesMultiSelect(formularioAmpliado, 'p26_rol',
          incluirOtro: true),
      'p27': {
        'Participaría en un acopio comunitario si hay reglas claras y transparencia':
            'De acuerdo',
        'Aceptaría un calendario coordinado de entrega o venta': 'De acuerdo',
        'Compartiría transporte o rutas si eso reduce costos y mermas':
            'De acuerdo',
        'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)':
            'De acuerdo',
        'Me interesa acceder a compras públicas si hay acompañamiento':
            'De acuerdo',
        'Confío en mi comunidad para manejar fondos y logística con transparencia':
            'De acuerdo',
      },
      'p28_factores_confianza': 'Transparencia de ingresos y gastos',
      'p29_lleva_registro': 'Sí, llevo registros',
      'p30_donde_registra':
          obtenerOpcionesMultiSelectP30Maximo(formularioAmpliado),
      'p31_frecuencia_registro': 'Todos los días',
      'p32_disposicion_registro': 'Totalmente dispuesto',
      'p33_apoyo_registro': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p33_apoyo_registro',
          incluirOtro: true),
      'p34_temas_capacitacion': obtenerOpcionesMultiSelect(
          formularioAmpliado, 'p34_temas_capacitacion',
          incluirOtro: true),
      'p35_problema_urgente': 'Otras',
      'p36_formato_aprendizaje': 'Otras',
      'p37_tiempo_capacitacion': '2 horas',
      'p38_dificultad_asistencia': 'Otras',
      'p39_actividades_red': 'Coordinación de acopio (recepción y calidad)',
    },
    otros: {
      'p7_cultivo_principal': 'Miel melipona ZT',
      'p9_distribucion': 'Canal ZT',
      'p12_impedimentos': 'Impedimento ZT',
      'p19_conservacion': 'Frascos ZT',
      'p22_requisitos_dificiles': 'Etiqueta ZT',
      'p26_rol': 'Rol ZT',
      'p30_donde_registra': 'Registro ZT',
      'p33_apoyo_registro': 'Apoyo ZT',
      'p34_temas_capacitacion': 'Capacitacion ZT',
      'p35_problema_urgente': 'Problema ZT',
      'p36_formato_aprendizaje': 'Formato ZT',
      'p38_dificultad_asistencia': 'Dificultad ZT',
    },
  ));

  // 3. Condicionales P21 (2)
  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_cond_p21_si',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Condicional P21 Si',
    schema: formularioAmpliado,
    latitud: 21.0000,
    longitud: -89.5000,
    respuestas: {
      'p1_comunidad_vive': 'Chimay',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Chumayel',
      'p4_nombre': 'ZT Prueba P21 Si',
      'p5_telefono': '0000000000',
      'p21_limitacion_requisitos': 'Sí, me han limitado',
      'p22_requisitos_dificiles': {'Volumen mínimo requerido', 'Otros'},
    },
    otros: {
      'p22_requisitos_dificiles': 'Requisito ZT',
    },
  ));

  escenarios.add(EscenarioPrueba(
    idLocal: 'srv_cond_p21_no',
    folio: generarFolioZT(folioIdx++),
    nombre: 'ZT Prueba Condicional P21 No',
    schema: formularioAmpliado,
    latitud: null,
    longitud: null,
    respuestas: {
      'p1_comunidad_vive': 'Ek Balam',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Ticul',
      'p4_nombre': 'ZT Prueba P21 No',
      'p5_telefono': '0000000000',
      'p21_limitacion_requisitos': 'No me han limitado',
    },
    otros: {},
  ));

  // 4. Rotación corta de 12 pasos para cubrir los 12 meses (6 Ejecutivo + 6 Ampliado) (12)
  for (int m = 0; m < 12; m++) {
    final esE = m < 6;
    final schema = esE ? formularioEjecutivo : formularioAmpliado;
    final mes = mesesDelAno[m];
    final com = comunidades[m % comunidades.length];
    final mun = municipiosYucatan[m * 7 % municipiosYucatan.length];
    final coordLat = m.isEven ? (20.8000 + m * 0.01) : null;
    final coordLon = coordLat != null ? (-89.4000 - m * 0.01) : null;

    escenarios.add(EscenarioPrueba(
      idLocal: 'srv_rot_$m',
      folio: generarFolioZT(folioIdx++),
      nombre: 'ZT Prueba Mes $m ${schema.id}',
      schema: schema,
      latitud: coordLat,
      longitud: coordLon,
      respuestas: {
        'p1_comunidad_vive': com,
        'p2_consentimiento': 'Sí',
        'p3_municipio': mun,
        'p4_nombre': 'ZT Prueba Rot $m',
        'p5_telefono': '0000000000',
        'p10_meses_alta': {mes},
        if (esE) ...{
          'p12_destino': 'Consumo propio',
        } else ...{
          'p12_impedimentos': {'Falta de agua'},
          'p15_meses_dificiles': {mesesDelAno[(m + 6) % 12]},
          'p19_conservacion': 'No',
          'p20_momento_pago': 'Entre 8 y 15 días después',
          'p21_limitacion_requisitos': 'No sé si me afectan',
        },
      },
      otros: {},
    ));
  }

  // Total de escenarios creados: 2 (min) + 2 (max) + 2 (cond) + 12 (rot) = 18 escenarios (<= 30)
  return escenarios;
}
