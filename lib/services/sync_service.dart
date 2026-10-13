import 'dart:convert';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../data/app_database.dart';
import '../data/folio_generator.dart';
import '../data/respuestas_repository.dart';

/// URL del endpoint de sincronización en producción.
const String defaultEndpointUrl =
    'https://siemai.mx/soberania_alimentaria/endpoint_app_movil.php';

/// Llave de API, inyectada en tiempo de compilación vía --dart-define.
/// NUNCA hardcodear la llave real aquí.
const String defaultApiKey = String.fromEnvironment('API_KEY');

/// Resultado de un intento de sincronización, para reportar a la UI.
class ResultadoSincronizacion {
  final int enviados;
  final int fallidos;
  final int fallidosAutenticacion;
  final bool errorAutenticacion;

  const ResultadoSincronizacion({
    required this.enviados,
    required this.fallidos,
    this.fallidosAutenticacion = 0,
    bool? errorAutenticacion,
  }) : errorAutenticacion = errorAutenticacion ?? (fallidosAutenticacion > 0);
}

/// Estado interno del envío individual de un diagnóstico.
enum ResultadoEnvio {
  exito,
  errorAutenticacion,
  otroError,
}

/// Sincroniza todos los diagnósticos pendientes contra el servidor
/// central. Cada registro se procesa de forma independiente: un fallo en
/// uno no detiene el resto ni lanza excepción hacia el llamador, salvo
/// que ocurra un error de autenticación (401/403), en cuyo caso se corta el ciclo.
Future<ResultadoSincronizacion> sincronizarPendientes({
  http.Client? client,
  String endpointUrl = defaultEndpointUrl,
  String apiKey = defaultApiKey,
  Duration timeout = const Duration(seconds: 20),
  RespuestasRepository? repository,
}) async {
  final repo = repository ?? RespuestasRepository.instancia;
  final pendientes = await repo.listarPendientesSync();

  final httpClient = client ?? http.Client();
  final bool cerrarCliente = client == null;

  int enviados = 0;
  int fallidos = 0;
  int fallidosAutenticacion = 0;

  try {
    for (final registro in pendientes) {
      try {
        var registroParaEnviar = registro;
        if (registro.folio == null || registro.folio!.trim().isEmpty) {
          final nuevoFolio = generarFolio();
          await repo.actualizarFolio(registro.idLocal, nuevoFolio);
          registroParaEnviar = registro.copyWith(folio: Value(nuevoFolio));
        }

        final resultado = await _enviarRegistro(
          registroParaEnviar,
          client: httpClient,
          endpointUrl: endpointUrl,
          apiKey: apiKey,
          timeout: timeout,
        );

        if (resultado == ResultadoEnvio.exito) {
          await repo.marcarComoEnviado(registro.idLocal);
          enviados++;
        } else if (resultado == ResultadoEnvio.errorAutenticacion) {
          fallidosAutenticacion++;
          fallidos++;
          break;
        } else {
          fallidos++;
        }
      } catch (e, stackTrace) {
        debugPrint(
            'Error al sincronizar registro ${registro.idLocal}: $e\n$stackTrace');
        fallidos++;
      }
    }
  } finally {
    if (cerrarCliente) {
      httpClient.close();
    }
  }

  return ResultadoSincronizacion(
    enviados: enviados,
    fallidos: fallidos,
    fallidosAutenticacion: fallidosAutenticacion,
  );
}

Future<ResultadoEnvio> _enviarRegistro(
  RespuestasDiagnosticoData r, {
  http.Client? client,
  String endpointUrl = defaultEndpointUrl,
  String apiKey = defaultApiKey,
  Duration timeout = const Duration(seconds: 20),
}) async {
  if (r.folio == null || r.folio!.trim().isEmpty) {
    return ResultadoEnvio.otroError;
  }

  final cuerpo = jsonEncode({
    'folio': r.folio,
    'formulario': r.formulario,
    'p1_comunidad_vive': r.p1ComunidadVive,
    'p1B_comunidad_trabaja': r.p1BComunidadTrabaja,
    'p2_consentimiento': r.p2Consentimiento,
    'p3_municipio': r.p3Municipio,
    'p4_nombre': r.p4Nombre,
    'p5_telefono': r.p5Telefono,
    'p6_taller': r.p6Taller,
    'p7_cultivo_principal': r.p7CultivoPrincipal,
    'p7_cultivo_principal_otro': r.p7CultivoPrincipalOtro,
    'p8_forma_trabajo': r.p8FormaTrabajo,
    'p9_distribucion': r.p9Distribucion,
    'p9_distribucion_otro': r.p9DistribucionOtro,
    'p10_meses_alta': r.p10MesesAlta,
    'p11_policultivo': r.p11Policultivo,
    'p11_cobertura': r.p11Cobertura,
    'p11_plagas': r.p11Plagas,
    'p11_agua': r.p11Agua,
    'p11_semillas': r.p11Semillas,
    'p11_barreras': r.p11Barreras,
    'p11_reduccion': r.p11Reduccion,
    'p11_residuos': r.p11Residuos,
    'p12_destino': r.p12Destino,
    'p12_destino_otro': r.p12DestinoOtro,
    'p12_impedimentos': r.p12Impedimentos,
    'p12_impedimentos_otro': r.p12ImpedimentosOtro,
    'p13_practica_exitosa': r.p13PracticaExitosa,
    'p14_necesidades': r.p14Necesidades,
    'p14_acceso_estable': r.p14AccesoEstable,
    'p14_poca_dependencia': r.p14PocaDependencia,
    'p14_tradiciones': r.p14Tradiciones,
    'p14_dieta_familiar': r.p14DietaFamiliar,
    'p15_meses_dificiles': r.p15MesesDificiles,
    'p16_tiempo_transporte': r.p16TiempoTransporte,
    'p17_gasto_transporte': r.p17GastoTransporte,
    'p18_frecuencia_viajes': r.p18FrecuenciaViajes,
    'p19_mermas': r.p19Mermas,
    'p19_conservacion': r.p19Conservacion,
    'p19_conservacion_cuales': r.p19ConservacionCuales,
    'p20_momento_pago': r.p20MomentoPago,
    'p21_limitacion_requisitos': r.p21LimitacionRequisitos,
    'p22_requisitos_dificiles': r.p22RequisitosDificiles,
    'p22_requisitos_dificiles_otro': r.p22RequisitosDificilesOtro,
    'p23_prob_sequia': r.p23ProbSequia,
    'p23_prob_huracan': r.p23ProbHuracan,
    'p23_prob_plagas': r.p23ProbPlagas,
    'p23_prob_falta_agua': r.p23ProbFaltaAgua,
    'p23_prob_precios': r.p23ProbPrecios,
    'p23_prob_pago_tardio': r.p23ProbPagoTardio,
    'p23_prob_caminos': r.p23ProbCaminos,
    'p23_prob_falta_insumos': r.p23ProbFaltaInsumos,
    'p23_prob_conflictos': r.p23ProbConflictos,
    'p23_prob_inocuidad': r.p23ProbInocuidad,
    'p24_imp_sequia': r.p24ImpSequia,
    'p24_imp_huracan': r.p24ImpHuracan,
    'p24_imp_plagas': r.p24ImpPlagas,
    'p24_imp_falta_agua': r.p24ImpFaltaAgua,
    'p24_imp_precios': r.p24ImpPrecios,
    'p24_imp_pago_tardio': r.p24ImpPagoTardio,
    'p24_imp_caminos': r.p24ImpCaminos,
    'p24_imp_falta_insumos': r.p24ImpFaltaInsumos,
    'p24_imp_conflictos': r.p24ImpConflictos,
    'p24_imp_inocuidad': r.p24ImpInocuidad,
    'p25_otro_riesgo': r.p25OtroRiesgo,
    'p26_rol': r.p26Rol,
    'p26_rol_otro': r.p26RolOtro,
    'p27_acopio': r.p27Acopio,
    'p27_calendario': r.p27Calendario,
    'p27_transporte': r.p27Transporte,
    'p27_circuitos': r.p27Circuitos,
    'p27_compras': r.p27Compras,
    'p27_confianza': r.p27Confianza,
    'p28_factores_confianza': r.p28FactoresConfianza,
    'p29_lleva_registro': r.p29LlevaRegistro,
    'p30_donde_registra': r.p30DondeRegistra,
    'p30_donde_registra_otro': r.p30DondeRegistraOtro,
    'p31_frecuencia_registro': r.p31FrecuenciaRegistro,
    'p32_disposicion_registro': r.p32DisposicionRegistro,
    'p33_apoyo_registro': r.p33ApoyoRegistro,
    'p33_apoyo_registro_otro': r.p33ApoyoRegistroOtro,
    'p34_temas_capacitacion': r.p34TemasCapacitacion,
    'p34_temas_capacitacion_otro': r.p34TemasCapacitacionOtro,
    'p35_problema_urgente': r.p35ProblemaUrgente,
    'p35_problema_urgente_otro': r.p35ProblemaUrgenteOtro,
    'p36_formato_aprendizaje': r.p36FormatoAprendizaje,
    'p36_formato_aprendizaje_otro': r.p36FormatoAprendizajeOtro,
    'p37_tiempo_capacitacion': r.p37TiempoCapacitacion,
    'p38_dificultad_asistencia': r.p38DificultadAsistencia,
    'p38_dificultad_asistencia_otro': r.p38DificultadAsistenciaOtro,
    'p39_actividades_red': r.p39ActividadesRed,
    'p40_taller_diseno': r.p40TallerDiseno,
    'latitud': r.latitud,
    'longitud': r.longitud,
  });

  final httpClient = client ?? http.Client();
  final bool cerrarCliente = client == null;

  try {
    final respuesta = await httpClient
        .post(
          Uri.parse(endpointUrl),
          headers: {
            'Content-Type': 'application/json',
            'X-Api-Key': apiKey,
          },
          body: cuerpo,
        )
        .timeout(timeout);

    if (respuesta.statusCode == 401 || respuesta.statusCode == 403) {
      return ResultadoEnvio.errorAutenticacion;
    }

    if (respuesta.statusCode != 200) {
      return ResultadoEnvio.otroError;
    }

    final decodificado = jsonDecode(respuesta.body) as Map<String, dynamic>;
    final bool exito =
        decodificado['ok'] == true || decodificado['duplicado'] == true;
    return exito ? ResultadoEnvio.exito : ResultadoEnvio.otroError;
  } finally {
    if (cerrarCliente) {
      httpClient.close();
    }
  }
}
