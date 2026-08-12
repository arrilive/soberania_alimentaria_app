import 'dart:math';
import 'package:drift/drift.dart';
import '../models/form_models.dart';
import 'app_database.dart';

class RespuestasRepository {
  final AppDatabase _db;

  RespuestasRepository([AppDatabase? db]) : _db = db ?? AppDatabase();

  static final RespuestasRepository instancia = RespuestasRepository();

  /// Genera un identificador único local para cada registro offline.
  String _generarIdLocal() {
    final now = DateTime.now().millisecondsSinceEpoch;
    final random = Random().nextInt(999999).toString().padLeft(6, '0');
    return 'local_${now}_$random';
  }

  /// Convierte un valor dinámico (String, Set<String>, etc.) a formato texto para la BD.
  String? _formatearValor(dynamic valor) {
    if (valor == null) return null;
    if (valor is String) return valor.trim().isEmpty ? null : valor.trim();
    if (valor is Set) return valor.isEmpty ? null : valor.join(',');
    return valor.toString();
  }

  /// Guarda una respuesta completa del diagnóstico en la base de datos local SQLite.
  Future<void> guardarRespuesta({
    required FormSchema schema,
    required Map<String, dynamic> respuestas,
    required Map<String, String> otros,
  }) async {
    final idLocal = _generarIdLocal();
    final fecha = DateTime.now();

    // Extraer valores de Matrices
    final p11Map = (respuestas['p11'] as Map<String, String>?) ?? {};
    final p14Map = (respuestas['p14'] as Map<String, String>?) ?? {};
    final p23Map = (respuestas['p23'] as Map<String, String>?) ?? {};
    final p27Map = (respuestas['p27'] as Map<String, String>?) ?? {};

    final companion = RespuestasDiagnosticoCompanion(
      idLocal: Value(idLocal),
      syncStatus: const Value('pendiente'),
      fechaCapturaLocal: Value(fecha),
      formulario: Value(schema.id), // 'ejecutivo' | 'ampliado'

      p1ComunidadVive: Value(_formatearValor(respuestas['p1_comunidad_vive'])),
      p1BComunidadTrabaja:
          Value(_formatearValor(respuestas['p1B_comunidad_trabaja'])),
      p2Consentimiento: Value(_formatearValor(respuestas['p2_consentimiento'])),
      p3Municipio: Value(_formatearValor(respuestas['p3_municipio'])),
      p4Nombre: Value(_formatearValor(respuestas['p4_nombre'])),
      p5Telefono: Value(_formatearValor(respuestas['p5_telefono'])),
      p6Taller: Value(_formatearValor(respuestas['p6_taller'])),
      p7CultivoPrincipal:
          Value(_formatearValor(respuestas['p7_cultivo_principal'])),
      p7CultivoPrincipalOtro:
          Value(_formatearValor(otros['p7_cultivo_principal'])),
      p8FormaTrabajo: Value(_formatearValor(respuestas['p8_forma_trabajo'])),
      p9Distribucion: Value(_formatearValor(respuestas['p9_distribucion'])),
      p9DistribucionOtro: Value(_formatearValor(otros['p9_distribucion'])),
      p10MesesAlta: Value(_formatearValor(respuestas['p10_meses_alta'])),

      // P11 - Matriz de Prácticas
      p11Policultivo:
          Value(p11Map['Policultivo o rotación (milpa, hortaliza)']),
      p11Cobertura:
          Value(p11Map['Cobertura de suelo / abonos orgánicos / acolchado']),
      p11Plagas: Value(
          p11Map['Manejo biológico de plagas (bioinsumos, control cultural)']),
      p11Agua: Value(
          p11Map['Captación y uso frecuente del agua (riego, conservación)']),
      p11Semillas:
          Value(p11Map['Conservación e intercambio de semillas criollas']),
      p11Barreras: Value(p11Map[
          'Barreras vivas / árboles / sombra (microclima y biodiversidad)']),
      p11Reduccion: Value(p11Map[
          'Reducción de insumos externos (fertilizantes, agroquímicos)']),
      p11Residuos: Value(
          p11Map['Manejo de residuos orgánicos (composta, lombricomposta)']),

      p12Destino: Value(_formatearValor(respuestas['p12_destino'])),
      p12DestinoOtro: Value(_formatearValor(otros['p12_destino'])),
      p12Impedimentos: Value(_formatearValor(respuestas['p12_impedimentos'])),
      p12ImpedimentosOtro: Value(_formatearValor(otros['p12_impedimentos'])),
      p13PracticaExitosa:
          Value(_formatearValor(respuestas['p13_practica_exitosa'])),

      // P14 - Matriz de Soberanía
      p14Necesidades: Value(p14Map[
          'Decidimos qué producir según nuestras propias necesidades alimentarias']),
      p14AccesoEstable: Value(p14Map[
          'Tenemos acceso estable a alimentos sanos durante todo el año']),
      p14PocaDependencia: Value(p14Map[
          'Dependemos poco de semillas o insumos externos para producir']),
      p14Tradiciones: Value(p14Map[
          'Conservamos prácticas y alimentos tradicionales de la región']),
      p14DietaFamiliar: Value(p14Map[
          'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos']),

      p15MesesDificiles:
          Value(_formatearValor(respuestas['p15_meses_dificiles'])),
      p16TiempoTransporte:
          Value(_formatearValor(respuestas['p16_tiempo_transporte'])),
      p17GastoTransporte:
          Value(_formatearValor(respuestas['p17_gasto_transporte'])),
      p18FrecuenciaViajes:
          Value(_formatearValor(respuestas['p18_frecuencia_viajes'])),
      p19Mermas: Value(_formatearValor(respuestas['p19_mermas'])),
      p19Conservacion: Value(_formatearValor(respuestas['p19_conservacion'])),
      p19ConservacionCuales: Value(_formatearValor(otros['p19_conservacion'])),
      p20MomentoPago: Value(_formatearValor(respuestas['p20_momento_pago'])),
      p21LimitacionRequisitos:
          Value(_formatearValor(respuestas['p21_limitacion_requisitos'])),
      p22RequisitosDificiles:
          Value(_formatearValor(respuestas['p22_requisitos_dificiles'])),
      p22RequisitosDificilesOtro:
          Value(_formatearValor(otros['p22_requisitos_dificiles'])),

      // P23 - Matriz de Probabilidad de Riesgos
      p23ProbSequia: Value(p23Map['Sequía o calor extremo']),
      p23ProbHuracan: Value(p23Map['Huracán o inundación']),
      p23ProbPlagas: Value(p23Map['Plagas o enfermedades']),
      p23ProbFaltaAgua:
          Value(p23Map['Falta de agua o energía para producción']),
      p23ProbPrecios: Value(p23Map['Caída o volatilidad de precios']),
      p23ProbPagoTardio:
          Value(p23Map['Pago tardío o incumplimiento del comprador']),
      p23ProbCaminos: Value(p23Map['Caminos o transporte interrumpidos']),
      p23ProbFaltaInsumos:
          Value(p23Map['Falta de insumos, semillas o bioinsumos']),
      p23ProbConflictos:
          Value(p23Map['Conflictos organizativos o baja cooperación']),
      p23ProbInocuidad:
          Value(p23Map['Problemas de inocuidad, inspecciones o rechazos']),

      p25OtroRiesgo: Value(_formatearValor(respuestas['p25_otro_riesgo'])),
      p26Rol: Value(_formatearValor(respuestas['p26_rol'])),
      p26RolOtro: Value(_formatearValor(otros['p26_rol'])),

      // P27 - Matriz de Gobernanza y Red Logística
      p27Acopio: Value(p27Map[
          'Participaría en un acopio comunitario si hay reglas claras y transparencia']),
      p27Calendario: Value(
          p27Map['Aceptaría un calendario coordinado de entrega o venta']),
      p27Transporte: Value(p27Map[
          'Compartiría transporte o rutas si eso reduce costos y mermas']),
      p27Circuitos: Value(p27Map[
          'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)']),
      p27Compras: Value(p27Map[
          'Me interesa acceder a compras públicas si hay acompañamiento']),
      p27Confianza: Value(p27Map[
          'Confío en mi comunidad para manejar fondos y logística con transparencia']),

      p28FactoresConfianza:
          Value(_formatearValor(respuestas['p28_factores_confianza'])),
      p29LlevaRegistro:
          Value(_formatearValor(respuestas['p29_lleva_registro'])),
      p30DondeRegistra:
          Value(_formatearValor(respuestas['p30_donde_registra'])),
      p30DondeRegistraOtro: Value(_formatearValor(otros['p30_donde_registra'])),
      p31FrecuenciaRegistro:
          Value(_formatearValor(respuestas['p31_frecuencia_registro'])),
      p32DisposicionRegistro:
          Value(_formatearValor(respuestas['p32_disposicion_registro'])),
      p33ApoyoRegistro:
          Value(_formatearValor(respuestas['p33_apoyo_registro'])),
      p33ApoyoRegistroOtro: Value(_formatearValor(otros['p33_apoyo_registro'])),
      p34TemasCapacitacion:
          Value(_formatearValor(respuestas['p34_temas_capacitacion'])),
      p34TemasCapacitacionOtro:
          Value(_formatearValor(otros['p34_temas_capacitacion'])),
      p35ProblemaUrgente:
          Value(_formatearValor(respuestas['p35_problema_urgente'])),
      p35ProblemaUrgenteOtro:
          Value(_formatearValor(otros['p35_problema_urgente'])),
      p36FormatoAprendizaje:
          Value(_formatearValor(respuestas['p36_formato_aprendizaje'])),
      p36FormatoAprendizajeOtro:
          Value(_formatearValor(otros['p36_formato_aprendizaje'])),
      p37TiempoCapacitacion:
          Value(_formatearValor(respuestas['p37_tiempo_capacitacion'])),
      p38DificultadAsistencia:
          Value(_formatearValor(respuestas['p38_dificultad_asistencia'])),
      p38DificultadAsistenciaOtro:
          Value(_formatearValor(otros['p38_dificultad_asistencia'])),
      p39ActividadesRed:
          Value(_formatearValor(respuestas['p39_actividades_red'])),
    );

    await _db.into(_db.respuestasDiagnostico).insert(companion);
  }

  /// Lista todas las respuestas guardadas localmente, ordenadas de la más reciente a la más antigua.
  Future<List<RespuestasDiagnosticoData>> listarGuardadas() {
    return (_db.select(_db.respuestasDiagnostico)
          ..orderBy([
            (t) => OrderingTerm(
                expression: t.fechaCapturaLocal, mode: OrderingMode.desc)
          ]))
        .get();
  }

  /// Cuenta la cantidad de registros que están pendientes de sincronización.
  Future<int> contarPendientes() async {
    final countExpr = _db.respuestasDiagnostico.idLocal.count();
    final query = _db.selectOnly(_db.respuestasDiagnostico)
      ..addColumns([countExpr])
      ..where(_db.respuestasDiagnostico.syncStatus.equals('pendiente'));
    final result = await query.getSingle();
    return result.read(countExpr) ?? 0;
  }
}
