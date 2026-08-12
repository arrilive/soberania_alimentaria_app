import '../models/form_models.dart';
import 'catalogos.dart';

/// ---------------------------------------------------------------------
/// PREGUNTAS COMPARTIDAS entre el Ejecutivo y el Ampliado.
/// Se definen UNA vez y se reutilizan en los dos esquemas de abajo.
/// Si el texto de una pregunta compartida cambia, se cambia aquí y ya
/// queda actualizado en ambos formularios (evita la duplicación con
/// algoritmos/textos distintos que documentaron como Error 2 en sus
/// lecciones aprendidas).
/// ---------------------------------------------------------------------

const _qComunidadVive = FormFieldConfig(
  id: 'p1_comunidad_vive',
  numero: '1',
  pregunta: '¿En qué comunidad o localidad vive?',
  tipo: FieldType.dropdown,
  opciones: comunidades,
  requerido: true,
);

const _qComunidadTrabaja = FormFieldConfig(
  id: 'p1B_comunidad_trabaja',
  numero: '1B',
  pregunta: '¿En qué comunidad o localidad trabaja?',
  tipo: FieldType.dropdown,
  opciones: comunidades,
);

const _qConsentimiento = FormFieldConfig(
  id: 'p2_consentimiento',
  numero: '2',
  pregunta:
      '¿Acepta participar de manera voluntaria y entiende que la información '
      'será usada únicamente para el diagnóstico y devolución comunitaria?',
  tipo: FieldType.singleChoice,
  opciones: ['Sí', 'No'],
  requerido: true,
);

const _qMunicipio = FormFieldConfig(
  id: 'p3_municipio',
  numero: '3',
  pregunta: '¿A qué municipio pertenece su comunidad?',
  tipo: FieldType.dropdown,
  opciones: municipiosYucatan,
  requerido: true,
);

const _qNombre = FormFieldConfig(
  id: 'p4_nombre',
  numero: '4',
  pregunta: '¿Cuál es su nombre?',
  tipo: FieldType.text,
  placeholder: 'Ej. María González Ek',
);

const _qTelefono = FormFieldConfig(
  id: 'p5_telefono',
  numero: '5',
  pregunta: '¿Tiene teléfono o WhatsApp para futuro contacto?',
  tipo: FieldType.number,
  placeholder: 'Ej. 999 123 45 67',
);

const _qInteresTaller = FormFieldConfig(
  id: 'p6_taller',
  numero: '6',
  pregunta:
      '¿Le gustaría recibir los resultados del diagnóstico y participar en '
      'un taller comunitario de presentación?',
  tipo: FieldType.singleChoice,
  opciones: ['Sí, me interesa', 'No por ahora'],
);

const _qProductoPrincipal = FormFieldConfig(
  id: 'p7_cultivo_principal',
  numero: '7',
  pregunta:
      '¿Cuál es el producto o cultivo más importante en su actividad productiva?',
  tipo: FieldType.multiChoice,
  opciones: [
    'Milpa (maíz, frijol, calabaza)',
    'Miel / apicultura',
    'Hortalizas / verduras',
    'Frutas / árboles frutales',
  ],
  permiteOtro: true,
);

const _qFormaTrabajo = FormFieldConfig(
  id: 'p8_forma_trabajo',
  numero: '8',
  pregunta: '¿Cómo trabaja principalmente?',
  tipo: FieldType.singleChoice,
  opciones: [
    'De manera individual, sin organización',
    'Grupo informal (vecinos, familia, amigos)',
    'Ejido o comunidad agraria',
    'Cooperativa formalmente constituida',
    'Sociedad de producción / empresa',
  ],
);

const _qComoVende = FormFieldConfig(
  id: 'p9_distribucion',
  numero: '9',
  pregunta: '¿Cómo vende o distribuye principalmente su producto?',
  tipo: FieldType.multiChoice,
  opciones: [
    'Autoconsumo con algunos excedentes para venta',
    'Venta local: mercado, tianguis o en la comunidad',
    'Venta a acopiador o intermediario',
    'Venta directa (pedidos, canastas, redes de consumidores)',
    'Restaurantes, hoteles o turismo',
    'Compras públicas (escuelas, comedores, programas de gobierno)',
  ],
  permiteOtro: true,
);

const _qMesesProduccion = FormFieldConfig(
  id: 'p10_meses_alta',
  numero: '10',
  pregunta: '¿En qué meses tiene mayor producción?',
  tipo: FieldType.monthMultiSelect,
  ayuda: 'Seleccione todas las que apliquen',
);

const _qPracticasAgroecologicas = FormFieldConfig(
  id: 'p11',
  numero: '11',
  pregunta:
      'Indique el nivel para cada práctica agroecológica en su unidad de producción:',
  tipo: FieldType.matrixSingle,
  filas: [
    'Policultivo o rotación (milpa, hortaliza)',
    'Cobertura de suelo / abonos orgánicos / acolchado',
    'Manejo biológico de plagas (bioinsumos, control cultural)',
    'Captación y uso frecuente del agua (riego, conservación)',
    'Conservación e intercambio de semillas criollas',
    'Barreras vivas / árboles / sombra (microclima y biodiversidad)',
    'Reducción de insumos externos (fertilizantes, agroquímicos)',
    'Manejo de residuos orgánicos (composta, lombricomposta)',
  ],
  columnas: ['No realiza', 'Ocasional', 'Frecuente', 'Siempre'],
);

const _qAfirmacionesSoberania = FormFieldConfig(
  id: 'p14',
  numero: '14',
  pregunta:
      'Para cada afirmación, indique qué tan de acuerdo está con su situación actual:',
  tipo: FieldType.matrixSingle,
  filas: [
    'Decidimos qué producir según nuestras propias necesidades alimentarias',
    'Tenemos acceso estable a alimentos sanos durante todo el año',
    'Dependemos poco de semillas o insumos externos para producir',
    'Conservamos prácticas y alimentos tradicionales de la región',
    'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos',
  ],
  columnas: ['Desacuerdo', 'Neutral', 'De acuerdo'],
);

const _qTiempoAVenta = FormFieldConfig(
  id: 'p16_tiempo_transporte',
  numero: '16',
  pregunta:
      '¿Cuánto tiempo tarda en llegar al lugar donde más vende su producto?',
  tipo: FieldType.singleChoice,
  opciones: [
    'Menos de 15 minutos',
    'Entre 15 y 30 minutos',
    'Entre 31 y 60 minutos',
    'Entre 1 y 2 horas',
    'Más de 2 horas',
  ],
);

const _qGastoTransporte = FormFieldConfig(
  id: 'p17_gasto_transporte',
  numero: '17',
  pregunta:
      '¿Cuánto gasta aproximadamente en transporte por cada viaje para vender '
      'o entregar su producto? (en pesos MXN)',
  tipo: FieldType.number,
  placeholder: 'Ej. 150',
);

const _qFrecuenciaViajes = FormFieldConfig(
  id: 'p18_frecuencia_viajes',
  numero: '18',
  pregunta:
      '¿Con qué frecuencia hace viajes para vender o entregar su producto?',
  tipo: FieldType.singleChoice,
  opciones: [
    'Todos los días',
    '2 o 3 veces por semana',
    'Una vez a la semana',
    'Cada 15 días',
    'Solo en temporada de cosecha',
  ],
);

const _qFrecuenciaPerdida = FormFieldConfig(
  id: 'p19_mermas',
  numero: '19',
  pregunta: '¿Con frecuencia el producto que cosecha se pierde antes de poder '
      'venderlo? (por daños, descomposición, transporte, etc.)',
  tipo: FieldType.singleChoice,
  opciones: ['No ocurre', 'Ocasional', 'Frecuente', 'Seguido'],
);

const _qRiesgosProbabilidad = FormFieldConfig(
  id: 'p23',
  numero: '23',
  pregunta: 'Evalúe cada riesgo según su PROBABILIDAD:',
  tipo: FieldType.matrixSingle,
  filas: [
    'Sequía o calor extremo',
    'Huracán o inundación',
    'Plagas o enfermedades',
    'Falta de agua o energía para producción',
    'Caída o volatilidad de precios',
    'Pago tardío o incumplimiento del comprador',
    'Caminos o transporte interrumpidos',
    'Falta de insumos, semillas o bioinsumos',
    'Conflictos organizativos o baja cooperación',
    'Problemas de inocuidad, inspecciones o rechazos',
  ],
  columnas: [
    'Muy probable',
    'Probable',
    'Posible',
    'Improbable',
    'Muy improbable'
  ],
);

const _qOtroRiesgo = FormFieldConfig(
  id: 'p25_otro_riesgo',
  numero: '25',
  pregunta:
      '¿Hay algún otro riesgo importante que enfrenta y que no aparece en la lista?',
  tipo: FieldType.textArea,
  placeholder: 'Escriba con sus propias palabras, no hay respuesta incorrecta',
);

const _qRolCadenaValor = FormFieldConfig(
  id: 'p26_rol',
  numero: '26',
  pregunta: '¿Cuál es su rol principal en la cadena de valor alimentaria?',
  tipo: FieldType.multiChoice,
  opciones: [
    'Productor/a (agrícola, apícola, etc.)',
    'Transportista o servicio logístico',
    'Comercializador/a o acopiador/a',
    'Autoridad comunitaria o ejidal',
    'Académico, técnico o asesor',
  ],
  permiteOtro: true,
  ayuda: 'Seleccione todas las que apliquen',
);

const _qLlevaRegistro = FormFieldConfig(
  id: 'p29_lleva_registro',
  numero: '29',
  pregunta: '¿Lleva algún tipo de registro de su producción, ventas o costos?',
  tipo: FieldType.singleChoice,
  opciones: ['Sí, llevo registros', 'No llevo ningún registro'],
);

const _qDondeRegistra = FormFieldConfig(
  id: 'p30_donde_registra',
  numero: '30',
  pregunta: '¿Dónde registra principalmente su información productiva?',
  tipo: FieldType.multiChoice,
  opciones: [
    'Libreta o cuaderno',
    'Hoja de cálculo (Excel, Google Sheets)',
    'WhatsApp (mensajes o grupos)',
    'No registro nada',
  ],
  permiteOtro: true,
);

const _qFrecuenciaRegistro = FormFieldConfig(
  id: 'p31_frecuencia_registro',
  numero: '31',
  pregunta: '¿Con qué frecuencia registra su información?',
  tipo: FieldType.singleChoice,
  opciones: [
    'Todos los días',
    'Una vez a la semana',
    'Una vez al mes',
    'Solo cuando vendo o entrego',
    'Nunca',
  ],
);

const _qApoyoRegistro = FormFieldConfig(
  id: 'p33_apoyo_registro',
  numero: '33',
  pregunta:
      '¿Qué tipo de apoyo necesitaría para poder llevar registros de manera regular?',
  tipo: FieldType.multiChoice,
  opciones: [
    'Capacitación básica en registros',
    'Formato sencillo (plantilla impresa o digital)',
    'Acompañamiento técnico periódico',
    'Dispositivo (teléfono o tableta)',
    'Conectividad a internet',
  ],
  permiteOtro: true,
  otroLabel: 'Otras:',
  otroOpcionTexto: 'Otras',
  ayuda: 'Seleccione todas las que apliquen',
);

const _qProblemaUrgente = FormFieldConfig(
  id: 'p35_problema_urgente',
  numero: '35',
  pregunta:
      '¿Cuál es el problema más urgente que enfrenta hoy en su cadena productiva?',
  tipo: FieldType.singleChoice,
  opciones: [
    'Precio bajo al vender',
    'Pérdidas por merma o descomposición',
    'Transporte caro o difícil',
    'Pagos tardíos o incumplidos',
    'Falta de mercado o compradores',
    'Plagas o enfermedades',
    'Variabilidad climática',
    'Conflictos internos o falta de organización',
    'No tengo registros para saber cuál es el problema',
  ],
  permiteOtro: true,
  otroLabel: 'Otras:',
  otroOpcionTexto: 'Otras',
);

/// ---------------------------------------------------------------------
/// FORMULARIO EJECUTIVO
/// ---------------------------------------------------------------------

const formularioEjecutivo = FormSchema(
  id: 'ejecutivo',
  titulo: 'Formulario Ejecutivo',
  descripcionCorta: 'Versión corta del diagnóstico',
  secciones: [
    FormSectionConfig(
      titulo: 'Datos Generales e Identificación',
      campos: [
        _qComunidadVive,
        _qComunidadTrabaja,
        _qConsentimiento,
        _qMunicipio,
        _qNombre,
        _qTelefono,
        _qInteresTaller,
      ],
    ),
    FormSectionConfig(
      titulo: 'Diagnóstico Productivo y Organizacional',
      campos: [_qProductoPrincipal, _qFormaTrabajo],
    ),
    FormSectionConfig(
      titulo: 'El Mercado y la Estacionalidad',
      campos: [_qComoVende, _qMesesProduccion],
    ),
    FormSectionConfig(
      titulo: 'El Componente Técnico-Ambiental',
      campos: [
        _qPracticasAgroecologicas,
        FormFieldConfig(
          id: 'p12_destino',
          numero: '12',
          pregunta:
              '¿Qué destino le da al producto que no logra comercializar?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Almacenamiento',
            'Consumo propio',
            'Transformación',
            'Desecho',
          ],
          permiteOtro: true,
        ),
        _qAfirmacionesSoberania,
      ],
    ),
    FormSectionConfig(
      titulo: 'Vulnerabilidad y Logística',
      campos: [_qTiempoAVenta, _qGastoTransporte, _qFrecuenciaViajes],
    ),
    FormSectionConfig(
      titulo: 'Calidad y Finanzas',
      campos: [_qFrecuenciaPerdida],
    ),
    FormSectionConfig(
      titulo: 'Gestión de Riesgos y Gobernanza',
      campos: [_qRiesgosProbabilidad, _qOtroRiesgo, _qRolCadenaValor],
    ),
    FormSectionConfig(
      titulo: 'Recolección de los Datos',
      campos: [
        _qLlevaRegistro,
        _qDondeRegistra,
        _qFrecuenciaRegistro,
        _qApoyoRegistro,
      ],
    ),
    FormSectionConfig(
      titulo: 'Plan de Mejora y Acción',
      campos: [_qProblemaUrgente],
    ),
  ],
);

/// ---------------------------------------------------------------------
/// FORMULARIO AMPLIADO
/// ---------------------------------------------------------------------

const formularioAmpliado = FormSchema(
  id: 'ampliado',
  titulo: 'Formulario Ampliado',
  descripcionCorta: 'Versión completa del diagnóstico',
  secciones: [
    FormSectionConfig(
      titulo: 'Datos Generales e Identificación',
      campos: [
        _qComunidadVive,
        _qComunidadTrabaja,
        _qConsentimiento,
        _qMunicipio,
        _qNombre,
        _qTelefono,
        _qInteresTaller,
      ],
    ),
    FormSectionConfig(
      titulo: 'Diagnóstico Productivo y Organizacional',
      campos: [_qProductoPrincipal, _qFormaTrabajo],
    ),
    FormSectionConfig(
      titulo: 'El Mercado y la Estacionalidad',
      campos: [_qComoVende, _qMesesProduccion],
    ),
    FormSectionConfig(
      titulo: 'El Componente Técnico-Ambiental',
      campos: [
        _qPracticasAgroecologicas,
        FormFieldConfig(
          id: 'p12_impedimentos',
          numero: '12',
          pregunta:
              '¿Cuáles son las principales razones que le impiden aplicar más '
              'prácticas agroecológicas?',
          tipo: FieldType.multiChoice,
          opciones: [
            'Falta de tiempo',
            'Costo elevado de los insumos',
            'Falta de conocimiento o capacitación',
            'Falta de acceso a bioinsumos',
            'Falta de agua',
            'Riesgo de bajar rendimientos',
            'No hay mercado que pague mejor por producto agroecológico',
          ],
          permiteOtro: true,
          ayuda: 'Seleccione todas las que apliquen',
        ),
        FormFieldConfig(
          id: 'p13_practica_exitosa',
          numero: '13',
          pregunta:
              'Describa brevemente una práctica agroecológica que le haya '
              'funcionado bien en su parcela o unidad productiva:',
          tipo: FieldType.textArea,
          placeholder: 'Ej. Empecé a rotar cultivos y mejoró el suelo',
        ),
        _qAfirmacionesSoberania,
      ],
    ),
    FormSectionConfig(
      titulo: 'Vulnerabilidad y Logística',
      campos: [
        FormFieldConfig(
          id: 'p15_meses_dificiles',
          numero: '15',
          pregunta:
              '¿En qué meses es más difícil acceder a alimentos sanos en cantidad suficiente?',
          tipo: FieldType.monthMultiSelect,
          ayuda: 'Seleccione todas las que apliquen',
        ),
        _qTiempoAVenta,
        _qGastoTransporte,
        _qFrecuenciaViajes,
      ],
    ),
    FormSectionConfig(
      titulo: 'Calidad y Finanzas',
      campos: [
        _qFrecuenciaPerdida,
        FormFieldConfig(
          id: 'p19_conservacion',
          numero: '19B',
          pregunta:
              '¿Conoce métodos de conservación para aumentar la vida útil y valor de sus productos?',
          tipo: FieldType.singleChoice,
          opciones: ['No', 'Si'],
          otroTriggerValor: 'Si',
          otroLabel: 'Cuáles:',
        ),
        FormFieldConfig(
          id: 'p20_momento_pago',
          numero: '20',
          pregunta: '¿Cuándo le pagan normalmente por su producto?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Al momento de la entrega (contado)',
            'Entre 8 y 15 días después',
            'Entre 16 y 30 días después',
            'Más de 30 días después',
          ],
        ),
        FormFieldConfig(
          id: 'p21_limitacion_requisitos',
          numero: '21',
          pregunta:
              '¿Los requisitos de calidad, empaque o inocuidad que le piden le '
              'han impedido vender a mejores mercados o precios?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Sí, me han limitado',
            'No me han limitado',
            'No sé si me afectan'
          ],
        ),
        FormFieldConfig(
          id: 'p22_requisitos_dificiles',
          numero: '22',
          pregunta:
              'Si respondió que sí en la pregunta anterior, ¿qué requisitos '
              'específicamente le dificultan vender a mejores mercados?',
          tipo: FieldType.multiChoice,
          opciones: [
            'Empaque o etiquetado',
            'Higiene o inocuidad certificada',
            'Volumen mínimo requerido',
            'Tamaño o estándar del producto',
            'Humedad (aplica para miel)',
            'Certificación oficial',
            'Transporte refrigerado o especial',
          ],
          permiteOtro: true,
          dependeDe: 'p21_limitacion_requisitos',
          mostrarSiValores: ['Sí, me han limitado'],
        ),
      ],
    ),
    FormSectionConfig(
      titulo: 'Gestión de Riesgos y Gobernanza',
      campos: [
        _qRiesgosProbabilidad,
        _qOtroRiesgo,
        _qRolCadenaValor,
        FormFieldConfig(
          id: 'p27',
          numero: '27',
          pregunta: 'Para cada situación, indique qué tan de acuerdo estaría:',
          tipo: FieldType.matrixSingle,
          filas: [
            'Participaría en un acopio comunitario si hay reglas claras y transparencia',
            'Aceptaría un calendario coordinado de entrega o venta',
            'Compartiría transporte o rutas si eso reduce costos y mermas',
            'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)',
            'Me interesa acceder a compras públicas si hay acompañamiento',
            'Confío en mi comunidad para manejar fondos y logística con transparencia',
          ],
          columnas: [
            'Muy de acuerdo',
            'De acuerdo',
            'Neutral',
            'Desacuerdo',
            'Muy desacuerdo'
          ],
        ),
        FormFieldConfig(
          id: 'p28_factores_confianza',
          numero: '28',
          pregunta: 'Seleccione los factores que más le darían confianza para '
              'participar en una red logística comunitaria.',
          tipo: FieldType.singleChoice,
          opciones: [
            'Reglas claras y conocidas por todos',
            'Transparencia de ingresos y gastos',
            'Pagos puntuales y en fecha',
            'Capacitación previa para participar',
            'Apoyo en transporte',
            'Acuerdos escritos y firmados',
            'Mecanismo claro de resolución de conflictos',
          ],
          ayuda: 'Seleccione una sola respuesta',
        ),
      ],
    ),
    FormSectionConfig(
      titulo: 'Recolección de los Datos',
      campos: [
        _qLlevaRegistro,
        _qDondeRegistra,
        _qFrecuenciaRegistro,
        FormFieldConfig(
          id: 'p32_disposicion_registro',
          numero: '32',
          pregunta:
              'Si registrar 10 datos básicos al mes le ayudara a mejorar sus '
              'precios, reducir mermas o mejorar su logística, ¿qué tan '
              'dispuesto/a estaría a hacerlo?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Totalmente indispuesto',
            'Indispuesto',
            'Algo dispuesto',
            'Dispuesto',
            'Totalmente dispuesto',
          ],
        ),
        _qApoyoRegistro,
      ],
    ),
    FormSectionConfig(
      titulo: 'Plan de Mejora y Acción',
      campos: [
        FormFieldConfig(
          id: 'p34_temas_capacitacion',
          numero: '34',
          pregunta:
              '¿Cuáles son los 3 temas más importantes para usted en la capacitación?',
          tipo: FieldType.multiChoice,
          opciones: [
            'Reducir mermas y pérdidas poscosecha',
            'Mejorar precio y negociación con compradores',
            'Reducir costos de transporte (rutas compartidas)',
            'Asegurar pagos puntuales y acuerdos claros',
            'Planificar producción según demanda y temporada',
            'Mejorar calidad e inocuidad del producto',
            'Fortalecer la organización (transparencia y acuerdos)',
            'Resiliencia climática (anticipación y adaptación)',
            'Llevar registros y usar datos para decidir',
          ],
          permiteOtro: true,
          otroLabel: 'Otras:',
          otroOpcionTexto: 'Otras',
        ),
        _qProblemaUrgente,
        FormFieldConfig(
          id: 'p36_formato_aprendizaje',
          numero: '36',
          pregunta:
              '¿Cómo le gustaría aprender? (Elija el formato que más le funcione)',
          tipo: FieldType.singleChoice,
          opciones: [
            'Taller práctico presencial en la comunidad',
            'Aprendizaje entre pares (productor a productor)',
            'Parcela o unidad demostrativa (ver y hacer)',
            'Visitas de acompañamiento en mi parcela',
            'Híbrido: sesión presencial + seguimiento por WhatsApp',
          ],
          permiteOtro: true,
          otroLabel: 'Otras:',
          otroOpcionTexto: 'Otras',
        ),
        FormFieldConfig(
          id: 'p37_tiempo_capacitacion',
          numero: '37',
          pregunta:
              '¿Cuánto tiempo puede dedicar a una sesión de capacitación sin que le afecte su trabajo?',
          tipo: FieldType.singleChoice,
          opciones: [
            '1 hora',
            '2 horas',
            '3 horas',
            '4 horas (media jornada)',
            'Jornada completa (si hay algo a cambio)',
          ],
        ),
        FormFieldConfig(
          id: 'p38_dificultad_asistencia',
          numero: '38',
          pregunta:
              '¿Qué es lo que más le dificulta asistir o participar en una capacitación?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Falta de tiempo por trabajo en la parcela',
            'Costo o dificultad de transporte para llegar',
            'Responsabilidades de cuidado familiar',
            'Costo económico (si no es gratuito)',
            'Barrera de idioma',
            'Falta de conectividad o dispositivo',
            'Desconfianza por experiencias previas negativas',
            'Temor a compartir datos personales',
          ],
          permiteOtro: true,
          otroLabel: 'Otras:',
          otroOpcionTexto: 'Otras',
          ayuda: 'Seleccione todas las que apliquen',
        ),
        FormFieldConfig(
          id: 'p39_actividades_red',
          numero: '39',
          pregunta:
              '¿En qué actividades de la red comunitaria podría participar?',
          tipo: FieldType.singleChoice,
          opciones: [
            'Registro de datos de mi producción',
            'Coordinación de acopio (recepción y calidad)',
            'Coordinación de rutas y entregas',
            'Gestión de pedidos y clientes',
            'Tesorería y transparencia financiera',
            'Promotor/a de capacitación entre pares',
            'No puedo asumir roles por ahora',
          ],
        ),
      ],
    ),
  ],
);
