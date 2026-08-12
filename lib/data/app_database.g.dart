// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $RespuestasDiagnosticoTable extends RespuestasDiagnostico
    with TableInfo<$RespuestasDiagnosticoTable, RespuestasDiagnosticoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RespuestasDiagnosticoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idLocalMeta =
      const VerificationMeta('idLocal');
  @override
  late final GeneratedColumn<String> idLocal = GeneratedColumn<String>(
      'id_local', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _syncStatusMeta =
      const VerificationMeta('syncStatus');
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
      'sync_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pendiente'));
  static const VerificationMeta _fechaCapturaLocalMeta =
      const VerificationMeta('fechaCapturaLocal');
  @override
  late final GeneratedColumn<DateTime> fechaCapturaLocal =
      GeneratedColumn<DateTime>('fecha_captura_local', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _formularioMeta =
      const VerificationMeta('formulario');
  @override
  late final GeneratedColumn<String> formulario = GeneratedColumn<String>(
      'formulario', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p1ComunidadViveMeta =
      const VerificationMeta('p1ComunidadVive');
  @override
  late final GeneratedColumn<String> p1ComunidadVive = GeneratedColumn<String>(
      'p1_comunidad_vive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p1BComunidadTrabajaMeta =
      const VerificationMeta('p1BComunidadTrabaja');
  @override
  late final GeneratedColumn<String> p1BComunidadTrabaja =
      GeneratedColumn<String>('p1_b_comunidad_trabaja', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p2ConsentimientoMeta =
      const VerificationMeta('p2Consentimiento');
  @override
  late final GeneratedColumn<String> p2Consentimiento = GeneratedColumn<String>(
      'p2_consentimiento', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p3MunicipioMeta =
      const VerificationMeta('p3Municipio');
  @override
  late final GeneratedColumn<String> p3Municipio = GeneratedColumn<String>(
      'p3_municipio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p4NombreMeta =
      const VerificationMeta('p4Nombre');
  @override
  late final GeneratedColumn<String> p4Nombre = GeneratedColumn<String>(
      'p4_nombre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p5TelefonoMeta =
      const VerificationMeta('p5Telefono');
  @override
  late final GeneratedColumn<String> p5Telefono = GeneratedColumn<String>(
      'p5_telefono', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p6TallerMeta =
      const VerificationMeta('p6Taller');
  @override
  late final GeneratedColumn<String> p6Taller = GeneratedColumn<String>(
      'p6_taller', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p7CultivoPrincipalMeta =
      const VerificationMeta('p7CultivoPrincipal');
  @override
  late final GeneratedColumn<String> p7CultivoPrincipal =
      GeneratedColumn<String>('p7_cultivo_principal', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p7CultivoPrincipalOtroMeta =
      const VerificationMeta('p7CultivoPrincipalOtro');
  @override
  late final GeneratedColumn<String> p7CultivoPrincipalOtro =
      GeneratedColumn<String>('p7_cultivo_principal_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p8FormaTrabajoMeta =
      const VerificationMeta('p8FormaTrabajo');
  @override
  late final GeneratedColumn<String> p8FormaTrabajo = GeneratedColumn<String>(
      'p8_forma_trabajo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p9DistribucionMeta =
      const VerificationMeta('p9Distribucion');
  @override
  late final GeneratedColumn<String> p9Distribucion = GeneratedColumn<String>(
      'p9_distribucion', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p9DistribucionOtroMeta =
      const VerificationMeta('p9DistribucionOtro');
  @override
  late final GeneratedColumn<String> p9DistribucionOtro =
      GeneratedColumn<String>('p9_distribucion_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p10MesesAltaMeta =
      const VerificationMeta('p10MesesAlta');
  @override
  late final GeneratedColumn<String> p10MesesAlta = GeneratedColumn<String>(
      'p10_meses_alta', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11PolicultivoMeta =
      const VerificationMeta('p11Policultivo');
  @override
  late final GeneratedColumn<String> p11Policultivo = GeneratedColumn<String>(
      'p11_policultivo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11CoberturaMeta =
      const VerificationMeta('p11Cobertura');
  @override
  late final GeneratedColumn<String> p11Cobertura = GeneratedColumn<String>(
      'p11_cobertura', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11PlagasMeta =
      const VerificationMeta('p11Plagas');
  @override
  late final GeneratedColumn<String> p11Plagas = GeneratedColumn<String>(
      'p11_plagas', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11AguaMeta =
      const VerificationMeta('p11Agua');
  @override
  late final GeneratedColumn<String> p11Agua = GeneratedColumn<String>(
      'p11_agua', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11SemillasMeta =
      const VerificationMeta('p11Semillas');
  @override
  late final GeneratedColumn<String> p11Semillas = GeneratedColumn<String>(
      'p11_semillas', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11BarrerasMeta =
      const VerificationMeta('p11Barreras');
  @override
  late final GeneratedColumn<String> p11Barreras = GeneratedColumn<String>(
      'p11_barreras', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11ReduccionMeta =
      const VerificationMeta('p11Reduccion');
  @override
  late final GeneratedColumn<String> p11Reduccion = GeneratedColumn<String>(
      'p11_reduccion', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p11ResiduosMeta =
      const VerificationMeta('p11Residuos');
  @override
  late final GeneratedColumn<String> p11Residuos = GeneratedColumn<String>(
      'p11_residuos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p12DestinoMeta =
      const VerificationMeta('p12Destino');
  @override
  late final GeneratedColumn<String> p12Destino = GeneratedColumn<String>(
      'p12_destino', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p12DestinoOtroMeta =
      const VerificationMeta('p12DestinoOtro');
  @override
  late final GeneratedColumn<String> p12DestinoOtro = GeneratedColumn<String>(
      'p12_destino_otro', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p12ImpedimentosMeta =
      const VerificationMeta('p12Impedimentos');
  @override
  late final GeneratedColumn<String> p12Impedimentos = GeneratedColumn<String>(
      'p12_impedimentos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p12ImpedimentosOtroMeta =
      const VerificationMeta('p12ImpedimentosOtro');
  @override
  late final GeneratedColumn<String> p12ImpedimentosOtro =
      GeneratedColumn<String>('p12_impedimentos_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p13PracticaExitosaMeta =
      const VerificationMeta('p13PracticaExitosa');
  @override
  late final GeneratedColumn<String> p13PracticaExitosa =
      GeneratedColumn<String>('p13_practica_exitosa', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p14NecesidadesMeta =
      const VerificationMeta('p14Necesidades');
  @override
  late final GeneratedColumn<String> p14Necesidades = GeneratedColumn<String>(
      'p14_necesidades', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p14AccesoEstableMeta =
      const VerificationMeta('p14AccesoEstable');
  @override
  late final GeneratedColumn<String> p14AccesoEstable = GeneratedColumn<String>(
      'p14_acceso_estable', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p14PocaDependenciaMeta =
      const VerificationMeta('p14PocaDependencia');
  @override
  late final GeneratedColumn<String> p14PocaDependencia =
      GeneratedColumn<String>('p14_poca_dependencia', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p14TradicionesMeta =
      const VerificationMeta('p14Tradiciones');
  @override
  late final GeneratedColumn<String> p14Tradiciones = GeneratedColumn<String>(
      'p14_tradiciones', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p14DietaFamiliarMeta =
      const VerificationMeta('p14DietaFamiliar');
  @override
  late final GeneratedColumn<String> p14DietaFamiliar = GeneratedColumn<String>(
      'p14_dieta_familiar', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p15MesesDificilesMeta =
      const VerificationMeta('p15MesesDificiles');
  @override
  late final GeneratedColumn<String> p15MesesDificiles =
      GeneratedColumn<String>('p15_meses_dificiles', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p16TiempoTransporteMeta =
      const VerificationMeta('p16TiempoTransporte');
  @override
  late final GeneratedColumn<String> p16TiempoTransporte =
      GeneratedColumn<String>('p16_tiempo_transporte', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p17GastoTransporteMeta =
      const VerificationMeta('p17GastoTransporte');
  @override
  late final GeneratedColumn<String> p17GastoTransporte =
      GeneratedColumn<String>('p17_gasto_transporte', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p18FrecuenciaViajesMeta =
      const VerificationMeta('p18FrecuenciaViajes');
  @override
  late final GeneratedColumn<String> p18FrecuenciaViajes =
      GeneratedColumn<String>('p18_frecuencia_viajes', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p19MermasMeta =
      const VerificationMeta('p19Mermas');
  @override
  late final GeneratedColumn<String> p19Mermas = GeneratedColumn<String>(
      'p19_mermas', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p19ConservacionMeta =
      const VerificationMeta('p19Conservacion');
  @override
  late final GeneratedColumn<String> p19Conservacion = GeneratedColumn<String>(
      'p19_conservacion', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p19ConservacionCualesMeta =
      const VerificationMeta('p19ConservacionCuales');
  @override
  late final GeneratedColumn<String> p19ConservacionCuales =
      GeneratedColumn<String>('p19_conservacion_cuales', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p20MomentoPagoMeta =
      const VerificationMeta('p20MomentoPago');
  @override
  late final GeneratedColumn<String> p20MomentoPago = GeneratedColumn<String>(
      'p20_momento_pago', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p21LimitacionRequisitosMeta =
      const VerificationMeta('p21LimitacionRequisitos');
  @override
  late final GeneratedColumn<String> p21LimitacionRequisitos =
      GeneratedColumn<String>('p21_limitacion_requisitos', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p22RequisitosDificilesMeta =
      const VerificationMeta('p22RequisitosDificiles');
  @override
  late final GeneratedColumn<String> p22RequisitosDificiles =
      GeneratedColumn<String>('p22_requisitos_dificiles', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p22RequisitosDificilesOtroMeta =
      const VerificationMeta('p22RequisitosDificilesOtro');
  @override
  late final GeneratedColumn<String> p22RequisitosDificilesOtro =
      GeneratedColumn<String>(
          'p22_requisitos_dificiles_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbSequiaMeta =
      const VerificationMeta('p23ProbSequia');
  @override
  late final GeneratedColumn<String> p23ProbSequia = GeneratedColumn<String>(
      'p23_prob_sequia', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbHuracanMeta =
      const VerificationMeta('p23ProbHuracan');
  @override
  late final GeneratedColumn<String> p23ProbHuracan = GeneratedColumn<String>(
      'p23_prob_huracan', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbPlagasMeta =
      const VerificationMeta('p23ProbPlagas');
  @override
  late final GeneratedColumn<String> p23ProbPlagas = GeneratedColumn<String>(
      'p23_prob_plagas', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbFaltaAguaMeta =
      const VerificationMeta('p23ProbFaltaAgua');
  @override
  late final GeneratedColumn<String> p23ProbFaltaAgua = GeneratedColumn<String>(
      'p23_prob_falta_agua', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbPreciosMeta =
      const VerificationMeta('p23ProbPrecios');
  @override
  late final GeneratedColumn<String> p23ProbPrecios = GeneratedColumn<String>(
      'p23_prob_precios', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbPagoTardioMeta =
      const VerificationMeta('p23ProbPagoTardio');
  @override
  late final GeneratedColumn<String> p23ProbPagoTardio =
      GeneratedColumn<String>('p23_prob_pago_tardio', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbCaminosMeta =
      const VerificationMeta('p23ProbCaminos');
  @override
  late final GeneratedColumn<String> p23ProbCaminos = GeneratedColumn<String>(
      'p23_prob_caminos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbFaltaInsumosMeta =
      const VerificationMeta('p23ProbFaltaInsumos');
  @override
  late final GeneratedColumn<String> p23ProbFaltaInsumos =
      GeneratedColumn<String>('p23_prob_falta_insumos', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbConflictosMeta =
      const VerificationMeta('p23ProbConflictos');
  @override
  late final GeneratedColumn<String> p23ProbConflictos =
      GeneratedColumn<String>('p23_prob_conflictos', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p23ProbInocuidadMeta =
      const VerificationMeta('p23ProbInocuidad');
  @override
  late final GeneratedColumn<String> p23ProbInocuidad = GeneratedColumn<String>(
      'p23_prob_inocuidad', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpSequiaMeta =
      const VerificationMeta('p24ImpSequia');
  @override
  late final GeneratedColumn<String> p24ImpSequia = GeneratedColumn<String>(
      'p24_imp_sequia', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpHuracanMeta =
      const VerificationMeta('p24ImpHuracan');
  @override
  late final GeneratedColumn<String> p24ImpHuracan = GeneratedColumn<String>(
      'p24_imp_huracan', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpPlagasMeta =
      const VerificationMeta('p24ImpPlagas');
  @override
  late final GeneratedColumn<String> p24ImpPlagas = GeneratedColumn<String>(
      'p24_imp_plagas', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpFaltaAguaMeta =
      const VerificationMeta('p24ImpFaltaAgua');
  @override
  late final GeneratedColumn<String> p24ImpFaltaAgua = GeneratedColumn<String>(
      'p24_imp_falta_agua', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpPreciosMeta =
      const VerificationMeta('p24ImpPrecios');
  @override
  late final GeneratedColumn<String> p24ImpPrecios = GeneratedColumn<String>(
      'p24_imp_precios', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpPagoTardioMeta =
      const VerificationMeta('p24ImpPagoTardio');
  @override
  late final GeneratedColumn<String> p24ImpPagoTardio = GeneratedColumn<String>(
      'p24_imp_pago_tardio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpCaminosMeta =
      const VerificationMeta('p24ImpCaminos');
  @override
  late final GeneratedColumn<String> p24ImpCaminos = GeneratedColumn<String>(
      'p24_imp_caminos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpFaltaInsumosMeta =
      const VerificationMeta('p24ImpFaltaInsumos');
  @override
  late final GeneratedColumn<String> p24ImpFaltaInsumos =
      GeneratedColumn<String>('p24_imp_falta_insumos', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpConflictosMeta =
      const VerificationMeta('p24ImpConflictos');
  @override
  late final GeneratedColumn<String> p24ImpConflictos = GeneratedColumn<String>(
      'p24_imp_conflictos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p24ImpInocuidadMeta =
      const VerificationMeta('p24ImpInocuidad');
  @override
  late final GeneratedColumn<String> p24ImpInocuidad = GeneratedColumn<String>(
      'p24_imp_inocuidad', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p25OtroRiesgoMeta =
      const VerificationMeta('p25OtroRiesgo');
  @override
  late final GeneratedColumn<String> p25OtroRiesgo = GeneratedColumn<String>(
      'p25_otro_riesgo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p26RolMeta = const VerificationMeta('p26Rol');
  @override
  late final GeneratedColumn<String> p26Rol = GeneratedColumn<String>(
      'p26_rol', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p26RolOtroMeta =
      const VerificationMeta('p26RolOtro');
  @override
  late final GeneratedColumn<String> p26RolOtro = GeneratedColumn<String>(
      'p26_rol_otro', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27AcopioMeta =
      const VerificationMeta('p27Acopio');
  @override
  late final GeneratedColumn<String> p27Acopio = GeneratedColumn<String>(
      'p27_acopio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27CalendarioMeta =
      const VerificationMeta('p27Calendario');
  @override
  late final GeneratedColumn<String> p27Calendario = GeneratedColumn<String>(
      'p27_calendario', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27TransporteMeta =
      const VerificationMeta('p27Transporte');
  @override
  late final GeneratedColumn<String> p27Transporte = GeneratedColumn<String>(
      'p27_transporte', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27CircuitosMeta =
      const VerificationMeta('p27Circuitos');
  @override
  late final GeneratedColumn<String> p27Circuitos = GeneratedColumn<String>(
      'p27_circuitos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27ComprasMeta =
      const VerificationMeta('p27Compras');
  @override
  late final GeneratedColumn<String> p27Compras = GeneratedColumn<String>(
      'p27_compras', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p27ConfianzaMeta =
      const VerificationMeta('p27Confianza');
  @override
  late final GeneratedColumn<String> p27Confianza = GeneratedColumn<String>(
      'p27_confianza', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p28FactoresConfianzaMeta =
      const VerificationMeta('p28FactoresConfianza');
  @override
  late final GeneratedColumn<String> p28FactoresConfianza =
      GeneratedColumn<String>('p28_factores_confianza', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p29LlevaRegistroMeta =
      const VerificationMeta('p29LlevaRegistro');
  @override
  late final GeneratedColumn<String> p29LlevaRegistro = GeneratedColumn<String>(
      'p29_lleva_registro', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p30DondeRegistraMeta =
      const VerificationMeta('p30DondeRegistra');
  @override
  late final GeneratedColumn<String> p30DondeRegistra = GeneratedColumn<String>(
      'p30_donde_registra', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p30DondeRegistraOtroMeta =
      const VerificationMeta('p30DondeRegistraOtro');
  @override
  late final GeneratedColumn<String> p30DondeRegistraOtro =
      GeneratedColumn<String>('p30_donde_registra_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p31FrecuenciaRegistroMeta =
      const VerificationMeta('p31FrecuenciaRegistro');
  @override
  late final GeneratedColumn<String> p31FrecuenciaRegistro =
      GeneratedColumn<String>('p31_frecuencia_registro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p32DisposicionRegistroMeta =
      const VerificationMeta('p32DisposicionRegistro');
  @override
  late final GeneratedColumn<String> p32DisposicionRegistro =
      GeneratedColumn<String>('p32_disposicion_registro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p33ApoyoRegistroMeta =
      const VerificationMeta('p33ApoyoRegistro');
  @override
  late final GeneratedColumn<String> p33ApoyoRegistro = GeneratedColumn<String>(
      'p33_apoyo_registro', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p33ApoyoRegistroOtroMeta =
      const VerificationMeta('p33ApoyoRegistroOtro');
  @override
  late final GeneratedColumn<String> p33ApoyoRegistroOtro =
      GeneratedColumn<String>('p33_apoyo_registro_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p34TemasCapacitacionMeta =
      const VerificationMeta('p34TemasCapacitacion');
  @override
  late final GeneratedColumn<String> p34TemasCapacitacion =
      GeneratedColumn<String>('p34_temas_capacitacion', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p34TemasCapacitacionOtroMeta =
      const VerificationMeta('p34TemasCapacitacionOtro');
  @override
  late final GeneratedColumn<String> p34TemasCapacitacionOtro =
      GeneratedColumn<String>('p34_temas_capacitacion_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p35ProblemaUrgenteMeta =
      const VerificationMeta('p35ProblemaUrgente');
  @override
  late final GeneratedColumn<String> p35ProblemaUrgente =
      GeneratedColumn<String>('p35_problema_urgente', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p35ProblemaUrgenteOtroMeta =
      const VerificationMeta('p35ProblemaUrgenteOtro');
  @override
  late final GeneratedColumn<String> p35ProblemaUrgenteOtro =
      GeneratedColumn<String>('p35_problema_urgente_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p36FormatoAprendizajeMeta =
      const VerificationMeta('p36FormatoAprendizaje');
  @override
  late final GeneratedColumn<String> p36FormatoAprendizaje =
      GeneratedColumn<String>('p36_formato_aprendizaje', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p36FormatoAprendizajeOtroMeta =
      const VerificationMeta('p36FormatoAprendizajeOtro');
  @override
  late final GeneratedColumn<String> p36FormatoAprendizajeOtro =
      GeneratedColumn<String>('p36_formato_aprendizaje_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p37TiempoCapacitacionMeta =
      const VerificationMeta('p37TiempoCapacitacion');
  @override
  late final GeneratedColumn<String> p37TiempoCapacitacion =
      GeneratedColumn<String>('p37_tiempo_capacitacion', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p38DificultadAsistenciaMeta =
      const VerificationMeta('p38DificultadAsistencia');
  @override
  late final GeneratedColumn<String> p38DificultadAsistencia =
      GeneratedColumn<String>('p38_dificultad_asistencia', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p38DificultadAsistenciaOtroMeta =
      const VerificationMeta('p38DificultadAsistenciaOtro');
  @override
  late final GeneratedColumn<String> p38DificultadAsistenciaOtro =
      GeneratedColumn<String>(
          'p38_dificultad_asistencia_otro', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p39ActividadesRedMeta =
      const VerificationMeta('p39ActividadesRed');
  @override
  late final GeneratedColumn<String> p39ActividadesRed =
      GeneratedColumn<String>('p39_actividades_red', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _p40TallerDisenoMeta =
      const VerificationMeta('p40TallerDiseno');
  @override
  late final GeneratedColumn<String> p40TallerDiseno = GeneratedColumn<String>(
      'p40_taller_diseno', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latitudMeta =
      const VerificationMeta('latitud');
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
      'latitud', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _longitudMeta =
      const VerificationMeta('longitud');
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
      'longitud', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idLocal,
        syncStatus,
        fechaCapturaLocal,
        formulario,
        p1ComunidadVive,
        p1BComunidadTrabaja,
        p2Consentimiento,
        p3Municipio,
        p4Nombre,
        p5Telefono,
        p6Taller,
        p7CultivoPrincipal,
        p7CultivoPrincipalOtro,
        p8FormaTrabajo,
        p9Distribucion,
        p9DistribucionOtro,
        p10MesesAlta,
        p11Policultivo,
        p11Cobertura,
        p11Plagas,
        p11Agua,
        p11Semillas,
        p11Barreras,
        p11Reduccion,
        p11Residuos,
        p12Destino,
        p12DestinoOtro,
        p12Impedimentos,
        p12ImpedimentosOtro,
        p13PracticaExitosa,
        p14Necesidades,
        p14AccesoEstable,
        p14PocaDependencia,
        p14Tradiciones,
        p14DietaFamiliar,
        p15MesesDificiles,
        p16TiempoTransporte,
        p17GastoTransporte,
        p18FrecuenciaViajes,
        p19Mermas,
        p19Conservacion,
        p19ConservacionCuales,
        p20MomentoPago,
        p21LimitacionRequisitos,
        p22RequisitosDificiles,
        p22RequisitosDificilesOtro,
        p23ProbSequia,
        p23ProbHuracan,
        p23ProbPlagas,
        p23ProbFaltaAgua,
        p23ProbPrecios,
        p23ProbPagoTardio,
        p23ProbCaminos,
        p23ProbFaltaInsumos,
        p23ProbConflictos,
        p23ProbInocuidad,
        p24ImpSequia,
        p24ImpHuracan,
        p24ImpPlagas,
        p24ImpFaltaAgua,
        p24ImpPrecios,
        p24ImpPagoTardio,
        p24ImpCaminos,
        p24ImpFaltaInsumos,
        p24ImpConflictos,
        p24ImpInocuidad,
        p25OtroRiesgo,
        p26Rol,
        p26RolOtro,
        p27Acopio,
        p27Calendario,
        p27Transporte,
        p27Circuitos,
        p27Compras,
        p27Confianza,
        p28FactoresConfianza,
        p29LlevaRegistro,
        p30DondeRegistra,
        p30DondeRegistraOtro,
        p31FrecuenciaRegistro,
        p32DisposicionRegistro,
        p33ApoyoRegistro,
        p33ApoyoRegistroOtro,
        p34TemasCapacitacion,
        p34TemasCapacitacionOtro,
        p35ProblemaUrgente,
        p35ProblemaUrgenteOtro,
        p36FormatoAprendizaje,
        p36FormatoAprendizajeOtro,
        p37TiempoCapacitacion,
        p38DificultadAsistencia,
        p38DificultadAsistenciaOtro,
        p39ActividadesRed,
        p40TallerDiseno,
        latitud,
        longitud
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'respuestas_diagnostico';
  @override
  VerificationContext validateIntegrity(
      Insertable<RespuestasDiagnosticoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_local')) {
      context.handle(_idLocalMeta,
          idLocal.isAcceptableOrUnknown(data['id_local']!, _idLocalMeta));
    } else if (isInserting) {
      context.missing(_idLocalMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
          _syncStatusMeta,
          syncStatus.isAcceptableOrUnknown(
              data['sync_status']!, _syncStatusMeta));
    }
    if (data.containsKey('fecha_captura_local')) {
      context.handle(
          _fechaCapturaLocalMeta,
          fechaCapturaLocal.isAcceptableOrUnknown(
              data['fecha_captura_local']!, _fechaCapturaLocalMeta));
    } else if (isInserting) {
      context.missing(_fechaCapturaLocalMeta);
    }
    if (data.containsKey('formulario')) {
      context.handle(
          _formularioMeta,
          formulario.isAcceptableOrUnknown(
              data['formulario']!, _formularioMeta));
    }
    if (data.containsKey('p1_comunidad_vive')) {
      context.handle(
          _p1ComunidadViveMeta,
          p1ComunidadVive.isAcceptableOrUnknown(
              data['p1_comunidad_vive']!, _p1ComunidadViveMeta));
    }
    if (data.containsKey('p1_b_comunidad_trabaja')) {
      context.handle(
          _p1BComunidadTrabajaMeta,
          p1BComunidadTrabaja.isAcceptableOrUnknown(
              data['p1_b_comunidad_trabaja']!, _p1BComunidadTrabajaMeta));
    }
    if (data.containsKey('p2_consentimiento')) {
      context.handle(
          _p2ConsentimientoMeta,
          p2Consentimiento.isAcceptableOrUnknown(
              data['p2_consentimiento']!, _p2ConsentimientoMeta));
    }
    if (data.containsKey('p3_municipio')) {
      context.handle(
          _p3MunicipioMeta,
          p3Municipio.isAcceptableOrUnknown(
              data['p3_municipio']!, _p3MunicipioMeta));
    }
    if (data.containsKey('p4_nombre')) {
      context.handle(_p4NombreMeta,
          p4Nombre.isAcceptableOrUnknown(data['p4_nombre']!, _p4NombreMeta));
    }
    if (data.containsKey('p5_telefono')) {
      context.handle(
          _p5TelefonoMeta,
          p5Telefono.isAcceptableOrUnknown(
              data['p5_telefono']!, _p5TelefonoMeta));
    }
    if (data.containsKey('p6_taller')) {
      context.handle(_p6TallerMeta,
          p6Taller.isAcceptableOrUnknown(data['p6_taller']!, _p6TallerMeta));
    }
    if (data.containsKey('p7_cultivo_principal')) {
      context.handle(
          _p7CultivoPrincipalMeta,
          p7CultivoPrincipal.isAcceptableOrUnknown(
              data['p7_cultivo_principal']!, _p7CultivoPrincipalMeta));
    }
    if (data.containsKey('p7_cultivo_principal_otro')) {
      context.handle(
          _p7CultivoPrincipalOtroMeta,
          p7CultivoPrincipalOtro.isAcceptableOrUnknown(
              data['p7_cultivo_principal_otro']!, _p7CultivoPrincipalOtroMeta));
    }
    if (data.containsKey('p8_forma_trabajo')) {
      context.handle(
          _p8FormaTrabajoMeta,
          p8FormaTrabajo.isAcceptableOrUnknown(
              data['p8_forma_trabajo']!, _p8FormaTrabajoMeta));
    }
    if (data.containsKey('p9_distribucion')) {
      context.handle(
          _p9DistribucionMeta,
          p9Distribucion.isAcceptableOrUnknown(
              data['p9_distribucion']!, _p9DistribucionMeta));
    }
    if (data.containsKey('p9_distribucion_otro')) {
      context.handle(
          _p9DistribucionOtroMeta,
          p9DistribucionOtro.isAcceptableOrUnknown(
              data['p9_distribucion_otro']!, _p9DistribucionOtroMeta));
    }
    if (data.containsKey('p10_meses_alta')) {
      context.handle(
          _p10MesesAltaMeta,
          p10MesesAlta.isAcceptableOrUnknown(
              data['p10_meses_alta']!, _p10MesesAltaMeta));
    }
    if (data.containsKey('p11_policultivo')) {
      context.handle(
          _p11PolicultivoMeta,
          p11Policultivo.isAcceptableOrUnknown(
              data['p11_policultivo']!, _p11PolicultivoMeta));
    }
    if (data.containsKey('p11_cobertura')) {
      context.handle(
          _p11CoberturaMeta,
          p11Cobertura.isAcceptableOrUnknown(
              data['p11_cobertura']!, _p11CoberturaMeta));
    }
    if (data.containsKey('p11_plagas')) {
      context.handle(_p11PlagasMeta,
          p11Plagas.isAcceptableOrUnknown(data['p11_plagas']!, _p11PlagasMeta));
    }
    if (data.containsKey('p11_agua')) {
      context.handle(_p11AguaMeta,
          p11Agua.isAcceptableOrUnknown(data['p11_agua']!, _p11AguaMeta));
    }
    if (data.containsKey('p11_semillas')) {
      context.handle(
          _p11SemillasMeta,
          p11Semillas.isAcceptableOrUnknown(
              data['p11_semillas']!, _p11SemillasMeta));
    }
    if (data.containsKey('p11_barreras')) {
      context.handle(
          _p11BarrerasMeta,
          p11Barreras.isAcceptableOrUnknown(
              data['p11_barreras']!, _p11BarrerasMeta));
    }
    if (data.containsKey('p11_reduccion')) {
      context.handle(
          _p11ReduccionMeta,
          p11Reduccion.isAcceptableOrUnknown(
              data['p11_reduccion']!, _p11ReduccionMeta));
    }
    if (data.containsKey('p11_residuos')) {
      context.handle(
          _p11ResiduosMeta,
          p11Residuos.isAcceptableOrUnknown(
              data['p11_residuos']!, _p11ResiduosMeta));
    }
    if (data.containsKey('p12_destino')) {
      context.handle(
          _p12DestinoMeta,
          p12Destino.isAcceptableOrUnknown(
              data['p12_destino']!, _p12DestinoMeta));
    }
    if (data.containsKey('p12_destino_otro')) {
      context.handle(
          _p12DestinoOtroMeta,
          p12DestinoOtro.isAcceptableOrUnknown(
              data['p12_destino_otro']!, _p12DestinoOtroMeta));
    }
    if (data.containsKey('p12_impedimentos')) {
      context.handle(
          _p12ImpedimentosMeta,
          p12Impedimentos.isAcceptableOrUnknown(
              data['p12_impedimentos']!, _p12ImpedimentosMeta));
    }
    if (data.containsKey('p12_impedimentos_otro')) {
      context.handle(
          _p12ImpedimentosOtroMeta,
          p12ImpedimentosOtro.isAcceptableOrUnknown(
              data['p12_impedimentos_otro']!, _p12ImpedimentosOtroMeta));
    }
    if (data.containsKey('p13_practica_exitosa')) {
      context.handle(
          _p13PracticaExitosaMeta,
          p13PracticaExitosa.isAcceptableOrUnknown(
              data['p13_practica_exitosa']!, _p13PracticaExitosaMeta));
    }
    if (data.containsKey('p14_necesidades')) {
      context.handle(
          _p14NecesidadesMeta,
          p14Necesidades.isAcceptableOrUnknown(
              data['p14_necesidades']!, _p14NecesidadesMeta));
    }
    if (data.containsKey('p14_acceso_estable')) {
      context.handle(
          _p14AccesoEstableMeta,
          p14AccesoEstable.isAcceptableOrUnknown(
              data['p14_acceso_estable']!, _p14AccesoEstableMeta));
    }
    if (data.containsKey('p14_poca_dependencia')) {
      context.handle(
          _p14PocaDependenciaMeta,
          p14PocaDependencia.isAcceptableOrUnknown(
              data['p14_poca_dependencia']!, _p14PocaDependenciaMeta));
    }
    if (data.containsKey('p14_tradiciones')) {
      context.handle(
          _p14TradicionesMeta,
          p14Tradiciones.isAcceptableOrUnknown(
              data['p14_tradiciones']!, _p14TradicionesMeta));
    }
    if (data.containsKey('p14_dieta_familiar')) {
      context.handle(
          _p14DietaFamiliarMeta,
          p14DietaFamiliar.isAcceptableOrUnknown(
              data['p14_dieta_familiar']!, _p14DietaFamiliarMeta));
    }
    if (data.containsKey('p15_meses_dificiles')) {
      context.handle(
          _p15MesesDificilesMeta,
          p15MesesDificiles.isAcceptableOrUnknown(
              data['p15_meses_dificiles']!, _p15MesesDificilesMeta));
    }
    if (data.containsKey('p16_tiempo_transporte')) {
      context.handle(
          _p16TiempoTransporteMeta,
          p16TiempoTransporte.isAcceptableOrUnknown(
              data['p16_tiempo_transporte']!, _p16TiempoTransporteMeta));
    }
    if (data.containsKey('p17_gasto_transporte')) {
      context.handle(
          _p17GastoTransporteMeta,
          p17GastoTransporte.isAcceptableOrUnknown(
              data['p17_gasto_transporte']!, _p17GastoTransporteMeta));
    }
    if (data.containsKey('p18_frecuencia_viajes')) {
      context.handle(
          _p18FrecuenciaViajesMeta,
          p18FrecuenciaViajes.isAcceptableOrUnknown(
              data['p18_frecuencia_viajes']!, _p18FrecuenciaViajesMeta));
    }
    if (data.containsKey('p19_mermas')) {
      context.handle(_p19MermasMeta,
          p19Mermas.isAcceptableOrUnknown(data['p19_mermas']!, _p19MermasMeta));
    }
    if (data.containsKey('p19_conservacion')) {
      context.handle(
          _p19ConservacionMeta,
          p19Conservacion.isAcceptableOrUnknown(
              data['p19_conservacion']!, _p19ConservacionMeta));
    }
    if (data.containsKey('p19_conservacion_cuales')) {
      context.handle(
          _p19ConservacionCualesMeta,
          p19ConservacionCuales.isAcceptableOrUnknown(
              data['p19_conservacion_cuales']!, _p19ConservacionCualesMeta));
    }
    if (data.containsKey('p20_momento_pago')) {
      context.handle(
          _p20MomentoPagoMeta,
          p20MomentoPago.isAcceptableOrUnknown(
              data['p20_momento_pago']!, _p20MomentoPagoMeta));
    }
    if (data.containsKey('p21_limitacion_requisitos')) {
      context.handle(
          _p21LimitacionRequisitosMeta,
          p21LimitacionRequisitos.isAcceptableOrUnknown(
              data['p21_limitacion_requisitos']!,
              _p21LimitacionRequisitosMeta));
    }
    if (data.containsKey('p22_requisitos_dificiles')) {
      context.handle(
          _p22RequisitosDificilesMeta,
          p22RequisitosDificiles.isAcceptableOrUnknown(
              data['p22_requisitos_dificiles']!, _p22RequisitosDificilesMeta));
    }
    if (data.containsKey('p22_requisitos_dificiles_otro')) {
      context.handle(
          _p22RequisitosDificilesOtroMeta,
          p22RequisitosDificilesOtro.isAcceptableOrUnknown(
              data['p22_requisitos_dificiles_otro']!,
              _p22RequisitosDificilesOtroMeta));
    }
    if (data.containsKey('p23_prob_sequia')) {
      context.handle(
          _p23ProbSequiaMeta,
          p23ProbSequia.isAcceptableOrUnknown(
              data['p23_prob_sequia']!, _p23ProbSequiaMeta));
    }
    if (data.containsKey('p23_prob_huracan')) {
      context.handle(
          _p23ProbHuracanMeta,
          p23ProbHuracan.isAcceptableOrUnknown(
              data['p23_prob_huracan']!, _p23ProbHuracanMeta));
    }
    if (data.containsKey('p23_prob_plagas')) {
      context.handle(
          _p23ProbPlagasMeta,
          p23ProbPlagas.isAcceptableOrUnknown(
              data['p23_prob_plagas']!, _p23ProbPlagasMeta));
    }
    if (data.containsKey('p23_prob_falta_agua')) {
      context.handle(
          _p23ProbFaltaAguaMeta,
          p23ProbFaltaAgua.isAcceptableOrUnknown(
              data['p23_prob_falta_agua']!, _p23ProbFaltaAguaMeta));
    }
    if (data.containsKey('p23_prob_precios')) {
      context.handle(
          _p23ProbPreciosMeta,
          p23ProbPrecios.isAcceptableOrUnknown(
              data['p23_prob_precios']!, _p23ProbPreciosMeta));
    }
    if (data.containsKey('p23_prob_pago_tardio')) {
      context.handle(
          _p23ProbPagoTardioMeta,
          p23ProbPagoTardio.isAcceptableOrUnknown(
              data['p23_prob_pago_tardio']!, _p23ProbPagoTardioMeta));
    }
    if (data.containsKey('p23_prob_caminos')) {
      context.handle(
          _p23ProbCaminosMeta,
          p23ProbCaminos.isAcceptableOrUnknown(
              data['p23_prob_caminos']!, _p23ProbCaminosMeta));
    }
    if (data.containsKey('p23_prob_falta_insumos')) {
      context.handle(
          _p23ProbFaltaInsumosMeta,
          p23ProbFaltaInsumos.isAcceptableOrUnknown(
              data['p23_prob_falta_insumos']!, _p23ProbFaltaInsumosMeta));
    }
    if (data.containsKey('p23_prob_conflictos')) {
      context.handle(
          _p23ProbConflictosMeta,
          p23ProbConflictos.isAcceptableOrUnknown(
              data['p23_prob_conflictos']!, _p23ProbConflictosMeta));
    }
    if (data.containsKey('p23_prob_inocuidad')) {
      context.handle(
          _p23ProbInocuidadMeta,
          p23ProbInocuidad.isAcceptableOrUnknown(
              data['p23_prob_inocuidad']!, _p23ProbInocuidadMeta));
    }
    if (data.containsKey('p24_imp_sequia')) {
      context.handle(
          _p24ImpSequiaMeta,
          p24ImpSequia.isAcceptableOrUnknown(
              data['p24_imp_sequia']!, _p24ImpSequiaMeta));
    }
    if (data.containsKey('p24_imp_huracan')) {
      context.handle(
          _p24ImpHuracanMeta,
          p24ImpHuracan.isAcceptableOrUnknown(
              data['p24_imp_huracan']!, _p24ImpHuracanMeta));
    }
    if (data.containsKey('p24_imp_plagas')) {
      context.handle(
          _p24ImpPlagasMeta,
          p24ImpPlagas.isAcceptableOrUnknown(
              data['p24_imp_plagas']!, _p24ImpPlagasMeta));
    }
    if (data.containsKey('p24_imp_falta_agua')) {
      context.handle(
          _p24ImpFaltaAguaMeta,
          p24ImpFaltaAgua.isAcceptableOrUnknown(
              data['p24_imp_falta_agua']!, _p24ImpFaltaAguaMeta));
    }
    if (data.containsKey('p24_imp_precios')) {
      context.handle(
          _p24ImpPreciosMeta,
          p24ImpPrecios.isAcceptableOrUnknown(
              data['p24_imp_precios']!, _p24ImpPreciosMeta));
    }
    if (data.containsKey('p24_imp_pago_tardio')) {
      context.handle(
          _p24ImpPagoTardioMeta,
          p24ImpPagoTardio.isAcceptableOrUnknown(
              data['p24_imp_pago_tardio']!, _p24ImpPagoTardioMeta));
    }
    if (data.containsKey('p24_imp_caminos')) {
      context.handle(
          _p24ImpCaminosMeta,
          p24ImpCaminos.isAcceptableOrUnknown(
              data['p24_imp_caminos']!, _p24ImpCaminosMeta));
    }
    if (data.containsKey('p24_imp_falta_insumos')) {
      context.handle(
          _p24ImpFaltaInsumosMeta,
          p24ImpFaltaInsumos.isAcceptableOrUnknown(
              data['p24_imp_falta_insumos']!, _p24ImpFaltaInsumosMeta));
    }
    if (data.containsKey('p24_imp_conflictos')) {
      context.handle(
          _p24ImpConflictosMeta,
          p24ImpConflictos.isAcceptableOrUnknown(
              data['p24_imp_conflictos']!, _p24ImpConflictosMeta));
    }
    if (data.containsKey('p24_imp_inocuidad')) {
      context.handle(
          _p24ImpInocuidadMeta,
          p24ImpInocuidad.isAcceptableOrUnknown(
              data['p24_imp_inocuidad']!, _p24ImpInocuidadMeta));
    }
    if (data.containsKey('p25_otro_riesgo')) {
      context.handle(
          _p25OtroRiesgoMeta,
          p25OtroRiesgo.isAcceptableOrUnknown(
              data['p25_otro_riesgo']!, _p25OtroRiesgoMeta));
    }
    if (data.containsKey('p26_rol')) {
      context.handle(_p26RolMeta,
          p26Rol.isAcceptableOrUnknown(data['p26_rol']!, _p26RolMeta));
    }
    if (data.containsKey('p26_rol_otro')) {
      context.handle(
          _p26RolOtroMeta,
          p26RolOtro.isAcceptableOrUnknown(
              data['p26_rol_otro']!, _p26RolOtroMeta));
    }
    if (data.containsKey('p27_acopio')) {
      context.handle(_p27AcopioMeta,
          p27Acopio.isAcceptableOrUnknown(data['p27_acopio']!, _p27AcopioMeta));
    }
    if (data.containsKey('p27_calendario')) {
      context.handle(
          _p27CalendarioMeta,
          p27Calendario.isAcceptableOrUnknown(
              data['p27_calendario']!, _p27CalendarioMeta));
    }
    if (data.containsKey('p27_transporte')) {
      context.handle(
          _p27TransporteMeta,
          p27Transporte.isAcceptableOrUnknown(
              data['p27_transporte']!, _p27TransporteMeta));
    }
    if (data.containsKey('p27_circuitos')) {
      context.handle(
          _p27CircuitosMeta,
          p27Circuitos.isAcceptableOrUnknown(
              data['p27_circuitos']!, _p27CircuitosMeta));
    }
    if (data.containsKey('p27_compras')) {
      context.handle(
          _p27ComprasMeta,
          p27Compras.isAcceptableOrUnknown(
              data['p27_compras']!, _p27ComprasMeta));
    }
    if (data.containsKey('p27_confianza')) {
      context.handle(
          _p27ConfianzaMeta,
          p27Confianza.isAcceptableOrUnknown(
              data['p27_confianza']!, _p27ConfianzaMeta));
    }
    if (data.containsKey('p28_factores_confianza')) {
      context.handle(
          _p28FactoresConfianzaMeta,
          p28FactoresConfianza.isAcceptableOrUnknown(
              data['p28_factores_confianza']!, _p28FactoresConfianzaMeta));
    }
    if (data.containsKey('p29_lleva_registro')) {
      context.handle(
          _p29LlevaRegistroMeta,
          p29LlevaRegistro.isAcceptableOrUnknown(
              data['p29_lleva_registro']!, _p29LlevaRegistroMeta));
    }
    if (data.containsKey('p30_donde_registra')) {
      context.handle(
          _p30DondeRegistraMeta,
          p30DondeRegistra.isAcceptableOrUnknown(
              data['p30_donde_registra']!, _p30DondeRegistraMeta));
    }
    if (data.containsKey('p30_donde_registra_otro')) {
      context.handle(
          _p30DondeRegistraOtroMeta,
          p30DondeRegistraOtro.isAcceptableOrUnknown(
              data['p30_donde_registra_otro']!, _p30DondeRegistraOtroMeta));
    }
    if (data.containsKey('p31_frecuencia_registro')) {
      context.handle(
          _p31FrecuenciaRegistroMeta,
          p31FrecuenciaRegistro.isAcceptableOrUnknown(
              data['p31_frecuencia_registro']!, _p31FrecuenciaRegistroMeta));
    }
    if (data.containsKey('p32_disposicion_registro')) {
      context.handle(
          _p32DisposicionRegistroMeta,
          p32DisposicionRegistro.isAcceptableOrUnknown(
              data['p32_disposicion_registro']!, _p32DisposicionRegistroMeta));
    }
    if (data.containsKey('p33_apoyo_registro')) {
      context.handle(
          _p33ApoyoRegistroMeta,
          p33ApoyoRegistro.isAcceptableOrUnknown(
              data['p33_apoyo_registro']!, _p33ApoyoRegistroMeta));
    }
    if (data.containsKey('p33_apoyo_registro_otro')) {
      context.handle(
          _p33ApoyoRegistroOtroMeta,
          p33ApoyoRegistroOtro.isAcceptableOrUnknown(
              data['p33_apoyo_registro_otro']!, _p33ApoyoRegistroOtroMeta));
    }
    if (data.containsKey('p34_temas_capacitacion')) {
      context.handle(
          _p34TemasCapacitacionMeta,
          p34TemasCapacitacion.isAcceptableOrUnknown(
              data['p34_temas_capacitacion']!, _p34TemasCapacitacionMeta));
    }
    if (data.containsKey('p34_temas_capacitacion_otro')) {
      context.handle(
          _p34TemasCapacitacionOtroMeta,
          p34TemasCapacitacionOtro.isAcceptableOrUnknown(
              data['p34_temas_capacitacion_otro']!,
              _p34TemasCapacitacionOtroMeta));
    }
    if (data.containsKey('p35_problema_urgente')) {
      context.handle(
          _p35ProblemaUrgenteMeta,
          p35ProblemaUrgente.isAcceptableOrUnknown(
              data['p35_problema_urgente']!, _p35ProblemaUrgenteMeta));
    }
    if (data.containsKey('p35_problema_urgente_otro')) {
      context.handle(
          _p35ProblemaUrgenteOtroMeta,
          p35ProblemaUrgenteOtro.isAcceptableOrUnknown(
              data['p35_problema_urgente_otro']!, _p35ProblemaUrgenteOtroMeta));
    }
    if (data.containsKey('p36_formato_aprendizaje')) {
      context.handle(
          _p36FormatoAprendizajeMeta,
          p36FormatoAprendizaje.isAcceptableOrUnknown(
              data['p36_formato_aprendizaje']!, _p36FormatoAprendizajeMeta));
    }
    if (data.containsKey('p36_formato_aprendizaje_otro')) {
      context.handle(
          _p36FormatoAprendizajeOtroMeta,
          p36FormatoAprendizajeOtro.isAcceptableOrUnknown(
              data['p36_formato_aprendizaje_otro']!,
              _p36FormatoAprendizajeOtroMeta));
    }
    if (data.containsKey('p37_tiempo_capacitacion')) {
      context.handle(
          _p37TiempoCapacitacionMeta,
          p37TiempoCapacitacion.isAcceptableOrUnknown(
              data['p37_tiempo_capacitacion']!, _p37TiempoCapacitacionMeta));
    }
    if (data.containsKey('p38_dificultad_asistencia')) {
      context.handle(
          _p38DificultadAsistenciaMeta,
          p38DificultadAsistencia.isAcceptableOrUnknown(
              data['p38_dificultad_asistencia']!,
              _p38DificultadAsistenciaMeta));
    }
    if (data.containsKey('p38_dificultad_asistencia_otro')) {
      context.handle(
          _p38DificultadAsistenciaOtroMeta,
          p38DificultadAsistenciaOtro.isAcceptableOrUnknown(
              data['p38_dificultad_asistencia_otro']!,
              _p38DificultadAsistenciaOtroMeta));
    }
    if (data.containsKey('p39_actividades_red')) {
      context.handle(
          _p39ActividadesRedMeta,
          p39ActividadesRed.isAcceptableOrUnknown(
              data['p39_actividades_red']!, _p39ActividadesRedMeta));
    }
    if (data.containsKey('p40_taller_diseno')) {
      context.handle(
          _p40TallerDisenoMeta,
          p40TallerDiseno.isAcceptableOrUnknown(
              data['p40_taller_diseno']!, _p40TallerDisenoMeta));
    }
    if (data.containsKey('latitud')) {
      context.handle(_latitudMeta,
          latitud.isAcceptableOrUnknown(data['latitud']!, _latitudMeta));
    }
    if (data.containsKey('longitud')) {
      context.handle(_longitudMeta,
          longitud.isAcceptableOrUnknown(data['longitud']!, _longitudMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idLocal};
  @override
  RespuestasDiagnosticoData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RespuestasDiagnosticoData(
      idLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_local'])!,
      syncStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sync_status'])!,
      fechaCapturaLocal: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}fecha_captura_local'])!,
      formulario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}formulario']),
      p1ComunidadVive: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p1_comunidad_vive']),
      p1BComunidadTrabaja: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p1_b_comunidad_trabaja']),
      p2Consentimiento: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p2_consentimiento']),
      p3Municipio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p3_municipio']),
      p4Nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p4_nombre']),
      p5Telefono: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p5_telefono']),
      p6Taller: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p6_taller']),
      p7CultivoPrincipal: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p7_cultivo_principal']),
      p7CultivoPrincipalOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p7_cultivo_principal_otro']),
      p8FormaTrabajo: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p8_forma_trabajo']),
      p9Distribucion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p9_distribucion']),
      p9DistribucionOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p9_distribucion_otro']),
      p10MesesAlta: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p10_meses_alta']),
      p11Policultivo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_policultivo']),
      p11Cobertura: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_cobertura']),
      p11Plagas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_plagas']),
      p11Agua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_agua']),
      p11Semillas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_semillas']),
      p11Barreras: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_barreras']),
      p11Reduccion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_reduccion']),
      p11Residuos: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p11_residuos']),
      p12Destino: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p12_destino']),
      p12DestinoOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p12_destino_otro']),
      p12Impedimentos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p12_impedimentos']),
      p12ImpedimentosOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p12_impedimentos_otro']),
      p13PracticaExitosa: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p13_practica_exitosa']),
      p14Necesidades: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p14_necesidades']),
      p14AccesoEstable: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p14_acceso_estable']),
      p14PocaDependencia: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p14_poca_dependencia']),
      p14Tradiciones: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p14_tradiciones']),
      p14DietaFamiliar: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p14_dieta_familiar']),
      p15MesesDificiles: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p15_meses_dificiles']),
      p16TiempoTransporte: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p16_tiempo_transporte']),
      p17GastoTransporte: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p17_gasto_transporte']),
      p18FrecuenciaViajes: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p18_frecuencia_viajes']),
      p19Mermas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p19_mermas']),
      p19Conservacion: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p19_conservacion']),
      p19ConservacionCuales: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p19_conservacion_cuales']),
      p20MomentoPago: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p20_momento_pago']),
      p21LimitacionRequisitos: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p21_limitacion_requisitos']),
      p22RequisitosDificiles: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p22_requisitos_dificiles']),
      p22RequisitosDificilesOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p22_requisitos_dificiles_otro']),
      p23ProbSequia: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p23_prob_sequia']),
      p23ProbHuracan: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_huracan']),
      p23ProbPlagas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p23_prob_plagas']),
      p23ProbFaltaAgua: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_falta_agua']),
      p23ProbPrecios: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_precios']),
      p23ProbPagoTardio: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_pago_tardio']),
      p23ProbCaminos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_caminos']),
      p23ProbFaltaInsumos: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p23_prob_falta_insumos']),
      p23ProbConflictos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_conflictos']),
      p23ProbInocuidad: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p23_prob_inocuidad']),
      p24ImpSequia: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p24_imp_sequia']),
      p24ImpHuracan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p24_imp_huracan']),
      p24ImpPlagas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p24_imp_plagas']),
      p24ImpFaltaAgua: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p24_imp_falta_agua']),
      p24ImpPrecios: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p24_imp_precios']),
      p24ImpPagoTardio: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p24_imp_pago_tardio']),
      p24ImpCaminos: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p24_imp_caminos']),
      p24ImpFaltaInsumos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p24_imp_falta_insumos']),
      p24ImpConflictos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p24_imp_conflictos']),
      p24ImpInocuidad: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p24_imp_inocuidad']),
      p25OtroRiesgo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p25_otro_riesgo']),
      p26Rol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p26_rol']),
      p26RolOtro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p26_rol_otro']),
      p27Acopio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_acopio']),
      p27Calendario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_calendario']),
      p27Transporte: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_transporte']),
      p27Circuitos: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_circuitos']),
      p27Compras: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_compras']),
      p27Confianza: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p27_confianza']),
      p28FactoresConfianza: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p28_factores_confianza']),
      p29LlevaRegistro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p29_lleva_registro']),
      p30DondeRegistra: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p30_donde_registra']),
      p30DondeRegistraOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p30_donde_registra_otro']),
      p31FrecuenciaRegistro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p31_frecuencia_registro']),
      p32DisposicionRegistro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p32_disposicion_registro']),
      p33ApoyoRegistro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p33_apoyo_registro']),
      p33ApoyoRegistroOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p33_apoyo_registro_otro']),
      p34TemasCapacitacion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p34_temas_capacitacion']),
      p34TemasCapacitacionOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p34_temas_capacitacion_otro']),
      p35ProblemaUrgente: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p35_problema_urgente']),
      p35ProblemaUrgenteOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p35_problema_urgente_otro']),
      p36FormatoAprendizaje: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p36_formato_aprendizaje']),
      p36FormatoAprendizajeOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p36_formato_aprendizaje_otro']),
      p37TiempoCapacitacion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p37_tiempo_capacitacion']),
      p38DificultadAsistencia: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p38_dificultad_asistencia']),
      p38DificultadAsistenciaOtro: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}p38_dificultad_asistencia_otro']),
      p39ActividadesRed: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p39_actividades_red']),
      p40TallerDiseno: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}p40_taller_diseno']),
      latitud: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitud']),
      longitud: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitud']),
    );
  }

  @override
  $RespuestasDiagnosticoTable createAlias(String alias) {
    return $RespuestasDiagnosticoTable(attachedDatabase, alias);
  }
}

class RespuestasDiagnosticoData extends DataClass
    implements Insertable<RespuestasDiagnosticoData> {
  final String idLocal;
  final String syncStatus;
  final DateTime fechaCapturaLocal;
  final String? formulario;
  final String? p1ComunidadVive;
  final String? p1BComunidadTrabaja;
  final String? p2Consentimiento;
  final String? p3Municipio;
  final String? p4Nombre;
  final String? p5Telefono;
  final String? p6Taller;
  final String? p7CultivoPrincipal;
  final String? p7CultivoPrincipalOtro;
  final String? p8FormaTrabajo;
  final String? p9Distribucion;
  final String? p9DistribucionOtro;
  final String? p10MesesAlta;
  final String? p11Policultivo;
  final String? p11Cobertura;
  final String? p11Plagas;
  final String? p11Agua;
  final String? p11Semillas;
  final String? p11Barreras;
  final String? p11Reduccion;
  final String? p11Residuos;
  final String? p12Destino;
  final String? p12DestinoOtro;
  final String? p12Impedimentos;
  final String? p12ImpedimentosOtro;
  final String? p13PracticaExitosa;
  final String? p14Necesidades;
  final String? p14AccesoEstable;
  final String? p14PocaDependencia;
  final String? p14Tradiciones;
  final String? p14DietaFamiliar;
  final String? p15MesesDificiles;
  final String? p16TiempoTransporte;
  final String? p17GastoTransporte;
  final String? p18FrecuenciaViajes;
  final String? p19Mermas;
  final String? p19Conservacion;
  final String? p19ConservacionCuales;
  final String? p20MomentoPago;
  final String? p21LimitacionRequisitos;
  final String? p22RequisitosDificiles;
  final String? p22RequisitosDificilesOtro;
  final String? p23ProbSequia;
  final String? p23ProbHuracan;
  final String? p23ProbPlagas;
  final String? p23ProbFaltaAgua;
  final String? p23ProbPrecios;
  final String? p23ProbPagoTardio;
  final String? p23ProbCaminos;
  final String? p23ProbFaltaInsumos;
  final String? p23ProbConflictos;
  final String? p23ProbInocuidad;
  final String? p24ImpSequia;
  final String? p24ImpHuracan;
  final String? p24ImpPlagas;
  final String? p24ImpFaltaAgua;
  final String? p24ImpPrecios;
  final String? p24ImpPagoTardio;
  final String? p24ImpCaminos;
  final String? p24ImpFaltaInsumos;
  final String? p24ImpConflictos;
  final String? p24ImpInocuidad;
  final String? p25OtroRiesgo;
  final String? p26Rol;
  final String? p26RolOtro;
  final String? p27Acopio;
  final String? p27Calendario;
  final String? p27Transporte;
  final String? p27Circuitos;
  final String? p27Compras;
  final String? p27Confianza;
  final String? p28FactoresConfianza;
  final String? p29LlevaRegistro;
  final String? p30DondeRegistra;
  final String? p30DondeRegistraOtro;
  final String? p31FrecuenciaRegistro;
  final String? p32DisposicionRegistro;
  final String? p33ApoyoRegistro;
  final String? p33ApoyoRegistroOtro;
  final String? p34TemasCapacitacion;
  final String? p34TemasCapacitacionOtro;
  final String? p35ProblemaUrgente;
  final String? p35ProblemaUrgenteOtro;
  final String? p36FormatoAprendizaje;
  final String? p36FormatoAprendizajeOtro;
  final String? p37TiempoCapacitacion;
  final String? p38DificultadAsistencia;
  final String? p38DificultadAsistenciaOtro;
  final String? p39ActividadesRed;
  final String? p40TallerDiseno;
  final double? latitud;
  final double? longitud;
  const RespuestasDiagnosticoData(
      {required this.idLocal,
      required this.syncStatus,
      required this.fechaCapturaLocal,
      this.formulario,
      this.p1ComunidadVive,
      this.p1BComunidadTrabaja,
      this.p2Consentimiento,
      this.p3Municipio,
      this.p4Nombre,
      this.p5Telefono,
      this.p6Taller,
      this.p7CultivoPrincipal,
      this.p7CultivoPrincipalOtro,
      this.p8FormaTrabajo,
      this.p9Distribucion,
      this.p9DistribucionOtro,
      this.p10MesesAlta,
      this.p11Policultivo,
      this.p11Cobertura,
      this.p11Plagas,
      this.p11Agua,
      this.p11Semillas,
      this.p11Barreras,
      this.p11Reduccion,
      this.p11Residuos,
      this.p12Destino,
      this.p12DestinoOtro,
      this.p12Impedimentos,
      this.p12ImpedimentosOtro,
      this.p13PracticaExitosa,
      this.p14Necesidades,
      this.p14AccesoEstable,
      this.p14PocaDependencia,
      this.p14Tradiciones,
      this.p14DietaFamiliar,
      this.p15MesesDificiles,
      this.p16TiempoTransporte,
      this.p17GastoTransporte,
      this.p18FrecuenciaViajes,
      this.p19Mermas,
      this.p19Conservacion,
      this.p19ConservacionCuales,
      this.p20MomentoPago,
      this.p21LimitacionRequisitos,
      this.p22RequisitosDificiles,
      this.p22RequisitosDificilesOtro,
      this.p23ProbSequia,
      this.p23ProbHuracan,
      this.p23ProbPlagas,
      this.p23ProbFaltaAgua,
      this.p23ProbPrecios,
      this.p23ProbPagoTardio,
      this.p23ProbCaminos,
      this.p23ProbFaltaInsumos,
      this.p23ProbConflictos,
      this.p23ProbInocuidad,
      this.p24ImpSequia,
      this.p24ImpHuracan,
      this.p24ImpPlagas,
      this.p24ImpFaltaAgua,
      this.p24ImpPrecios,
      this.p24ImpPagoTardio,
      this.p24ImpCaminos,
      this.p24ImpFaltaInsumos,
      this.p24ImpConflictos,
      this.p24ImpInocuidad,
      this.p25OtroRiesgo,
      this.p26Rol,
      this.p26RolOtro,
      this.p27Acopio,
      this.p27Calendario,
      this.p27Transporte,
      this.p27Circuitos,
      this.p27Compras,
      this.p27Confianza,
      this.p28FactoresConfianza,
      this.p29LlevaRegistro,
      this.p30DondeRegistra,
      this.p30DondeRegistraOtro,
      this.p31FrecuenciaRegistro,
      this.p32DisposicionRegistro,
      this.p33ApoyoRegistro,
      this.p33ApoyoRegistroOtro,
      this.p34TemasCapacitacion,
      this.p34TemasCapacitacionOtro,
      this.p35ProblemaUrgente,
      this.p35ProblemaUrgenteOtro,
      this.p36FormatoAprendizaje,
      this.p36FormatoAprendizajeOtro,
      this.p37TiempoCapacitacion,
      this.p38DificultadAsistencia,
      this.p38DificultadAsistenciaOtro,
      this.p39ActividadesRed,
      this.p40TallerDiseno,
      this.latitud,
      this.longitud});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_local'] = Variable<String>(idLocal);
    map['sync_status'] = Variable<String>(syncStatus);
    map['fecha_captura_local'] = Variable<DateTime>(fechaCapturaLocal);
    if (!nullToAbsent || formulario != null) {
      map['formulario'] = Variable<String>(formulario);
    }
    if (!nullToAbsent || p1ComunidadVive != null) {
      map['p1_comunidad_vive'] = Variable<String>(p1ComunidadVive);
    }
    if (!nullToAbsent || p1BComunidadTrabaja != null) {
      map['p1_b_comunidad_trabaja'] = Variable<String>(p1BComunidadTrabaja);
    }
    if (!nullToAbsent || p2Consentimiento != null) {
      map['p2_consentimiento'] = Variable<String>(p2Consentimiento);
    }
    if (!nullToAbsent || p3Municipio != null) {
      map['p3_municipio'] = Variable<String>(p3Municipio);
    }
    if (!nullToAbsent || p4Nombre != null) {
      map['p4_nombre'] = Variable<String>(p4Nombre);
    }
    if (!nullToAbsent || p5Telefono != null) {
      map['p5_telefono'] = Variable<String>(p5Telefono);
    }
    if (!nullToAbsent || p6Taller != null) {
      map['p6_taller'] = Variable<String>(p6Taller);
    }
    if (!nullToAbsent || p7CultivoPrincipal != null) {
      map['p7_cultivo_principal'] = Variable<String>(p7CultivoPrincipal);
    }
    if (!nullToAbsent || p7CultivoPrincipalOtro != null) {
      map['p7_cultivo_principal_otro'] =
          Variable<String>(p7CultivoPrincipalOtro);
    }
    if (!nullToAbsent || p8FormaTrabajo != null) {
      map['p8_forma_trabajo'] = Variable<String>(p8FormaTrabajo);
    }
    if (!nullToAbsent || p9Distribucion != null) {
      map['p9_distribucion'] = Variable<String>(p9Distribucion);
    }
    if (!nullToAbsent || p9DistribucionOtro != null) {
      map['p9_distribucion_otro'] = Variable<String>(p9DistribucionOtro);
    }
    if (!nullToAbsent || p10MesesAlta != null) {
      map['p10_meses_alta'] = Variable<String>(p10MesesAlta);
    }
    if (!nullToAbsent || p11Policultivo != null) {
      map['p11_policultivo'] = Variable<String>(p11Policultivo);
    }
    if (!nullToAbsent || p11Cobertura != null) {
      map['p11_cobertura'] = Variable<String>(p11Cobertura);
    }
    if (!nullToAbsent || p11Plagas != null) {
      map['p11_plagas'] = Variable<String>(p11Plagas);
    }
    if (!nullToAbsent || p11Agua != null) {
      map['p11_agua'] = Variable<String>(p11Agua);
    }
    if (!nullToAbsent || p11Semillas != null) {
      map['p11_semillas'] = Variable<String>(p11Semillas);
    }
    if (!nullToAbsent || p11Barreras != null) {
      map['p11_barreras'] = Variable<String>(p11Barreras);
    }
    if (!nullToAbsent || p11Reduccion != null) {
      map['p11_reduccion'] = Variable<String>(p11Reduccion);
    }
    if (!nullToAbsent || p11Residuos != null) {
      map['p11_residuos'] = Variable<String>(p11Residuos);
    }
    if (!nullToAbsent || p12Destino != null) {
      map['p12_destino'] = Variable<String>(p12Destino);
    }
    if (!nullToAbsent || p12DestinoOtro != null) {
      map['p12_destino_otro'] = Variable<String>(p12DestinoOtro);
    }
    if (!nullToAbsent || p12Impedimentos != null) {
      map['p12_impedimentos'] = Variable<String>(p12Impedimentos);
    }
    if (!nullToAbsent || p12ImpedimentosOtro != null) {
      map['p12_impedimentos_otro'] = Variable<String>(p12ImpedimentosOtro);
    }
    if (!nullToAbsent || p13PracticaExitosa != null) {
      map['p13_practica_exitosa'] = Variable<String>(p13PracticaExitosa);
    }
    if (!nullToAbsent || p14Necesidades != null) {
      map['p14_necesidades'] = Variable<String>(p14Necesidades);
    }
    if (!nullToAbsent || p14AccesoEstable != null) {
      map['p14_acceso_estable'] = Variable<String>(p14AccesoEstable);
    }
    if (!nullToAbsent || p14PocaDependencia != null) {
      map['p14_poca_dependencia'] = Variable<String>(p14PocaDependencia);
    }
    if (!nullToAbsent || p14Tradiciones != null) {
      map['p14_tradiciones'] = Variable<String>(p14Tradiciones);
    }
    if (!nullToAbsent || p14DietaFamiliar != null) {
      map['p14_dieta_familiar'] = Variable<String>(p14DietaFamiliar);
    }
    if (!nullToAbsent || p15MesesDificiles != null) {
      map['p15_meses_dificiles'] = Variable<String>(p15MesesDificiles);
    }
    if (!nullToAbsent || p16TiempoTransporte != null) {
      map['p16_tiempo_transporte'] = Variable<String>(p16TiempoTransporte);
    }
    if (!nullToAbsent || p17GastoTransporte != null) {
      map['p17_gasto_transporte'] = Variable<String>(p17GastoTransporte);
    }
    if (!nullToAbsent || p18FrecuenciaViajes != null) {
      map['p18_frecuencia_viajes'] = Variable<String>(p18FrecuenciaViajes);
    }
    if (!nullToAbsent || p19Mermas != null) {
      map['p19_mermas'] = Variable<String>(p19Mermas);
    }
    if (!nullToAbsent || p19Conservacion != null) {
      map['p19_conservacion'] = Variable<String>(p19Conservacion);
    }
    if (!nullToAbsent || p19ConservacionCuales != null) {
      map['p19_conservacion_cuales'] = Variable<String>(p19ConservacionCuales);
    }
    if (!nullToAbsent || p20MomentoPago != null) {
      map['p20_momento_pago'] = Variable<String>(p20MomentoPago);
    }
    if (!nullToAbsent || p21LimitacionRequisitos != null) {
      map['p21_limitacion_requisitos'] =
          Variable<String>(p21LimitacionRequisitos);
    }
    if (!nullToAbsent || p22RequisitosDificiles != null) {
      map['p22_requisitos_dificiles'] =
          Variable<String>(p22RequisitosDificiles);
    }
    if (!nullToAbsent || p22RequisitosDificilesOtro != null) {
      map['p22_requisitos_dificiles_otro'] =
          Variable<String>(p22RequisitosDificilesOtro);
    }
    if (!nullToAbsent || p23ProbSequia != null) {
      map['p23_prob_sequia'] = Variable<String>(p23ProbSequia);
    }
    if (!nullToAbsent || p23ProbHuracan != null) {
      map['p23_prob_huracan'] = Variable<String>(p23ProbHuracan);
    }
    if (!nullToAbsent || p23ProbPlagas != null) {
      map['p23_prob_plagas'] = Variable<String>(p23ProbPlagas);
    }
    if (!nullToAbsent || p23ProbFaltaAgua != null) {
      map['p23_prob_falta_agua'] = Variable<String>(p23ProbFaltaAgua);
    }
    if (!nullToAbsent || p23ProbPrecios != null) {
      map['p23_prob_precios'] = Variable<String>(p23ProbPrecios);
    }
    if (!nullToAbsent || p23ProbPagoTardio != null) {
      map['p23_prob_pago_tardio'] = Variable<String>(p23ProbPagoTardio);
    }
    if (!nullToAbsent || p23ProbCaminos != null) {
      map['p23_prob_caminos'] = Variable<String>(p23ProbCaminos);
    }
    if (!nullToAbsent || p23ProbFaltaInsumos != null) {
      map['p23_prob_falta_insumos'] = Variable<String>(p23ProbFaltaInsumos);
    }
    if (!nullToAbsent || p23ProbConflictos != null) {
      map['p23_prob_conflictos'] = Variable<String>(p23ProbConflictos);
    }
    if (!nullToAbsent || p23ProbInocuidad != null) {
      map['p23_prob_inocuidad'] = Variable<String>(p23ProbInocuidad);
    }
    if (!nullToAbsent || p24ImpSequia != null) {
      map['p24_imp_sequia'] = Variable<String>(p24ImpSequia);
    }
    if (!nullToAbsent || p24ImpHuracan != null) {
      map['p24_imp_huracan'] = Variable<String>(p24ImpHuracan);
    }
    if (!nullToAbsent || p24ImpPlagas != null) {
      map['p24_imp_plagas'] = Variable<String>(p24ImpPlagas);
    }
    if (!nullToAbsent || p24ImpFaltaAgua != null) {
      map['p24_imp_falta_agua'] = Variable<String>(p24ImpFaltaAgua);
    }
    if (!nullToAbsent || p24ImpPrecios != null) {
      map['p24_imp_precios'] = Variable<String>(p24ImpPrecios);
    }
    if (!nullToAbsent || p24ImpPagoTardio != null) {
      map['p24_imp_pago_tardio'] = Variable<String>(p24ImpPagoTardio);
    }
    if (!nullToAbsent || p24ImpCaminos != null) {
      map['p24_imp_caminos'] = Variable<String>(p24ImpCaminos);
    }
    if (!nullToAbsent || p24ImpFaltaInsumos != null) {
      map['p24_imp_falta_insumos'] = Variable<String>(p24ImpFaltaInsumos);
    }
    if (!nullToAbsent || p24ImpConflictos != null) {
      map['p24_imp_conflictos'] = Variable<String>(p24ImpConflictos);
    }
    if (!nullToAbsent || p24ImpInocuidad != null) {
      map['p24_imp_inocuidad'] = Variable<String>(p24ImpInocuidad);
    }
    if (!nullToAbsent || p25OtroRiesgo != null) {
      map['p25_otro_riesgo'] = Variable<String>(p25OtroRiesgo);
    }
    if (!nullToAbsent || p26Rol != null) {
      map['p26_rol'] = Variable<String>(p26Rol);
    }
    if (!nullToAbsent || p26RolOtro != null) {
      map['p26_rol_otro'] = Variable<String>(p26RolOtro);
    }
    if (!nullToAbsent || p27Acopio != null) {
      map['p27_acopio'] = Variable<String>(p27Acopio);
    }
    if (!nullToAbsent || p27Calendario != null) {
      map['p27_calendario'] = Variable<String>(p27Calendario);
    }
    if (!nullToAbsent || p27Transporte != null) {
      map['p27_transporte'] = Variable<String>(p27Transporte);
    }
    if (!nullToAbsent || p27Circuitos != null) {
      map['p27_circuitos'] = Variable<String>(p27Circuitos);
    }
    if (!nullToAbsent || p27Compras != null) {
      map['p27_compras'] = Variable<String>(p27Compras);
    }
    if (!nullToAbsent || p27Confianza != null) {
      map['p27_confianza'] = Variable<String>(p27Confianza);
    }
    if (!nullToAbsent || p28FactoresConfianza != null) {
      map['p28_factores_confianza'] = Variable<String>(p28FactoresConfianza);
    }
    if (!nullToAbsent || p29LlevaRegistro != null) {
      map['p29_lleva_registro'] = Variable<String>(p29LlevaRegistro);
    }
    if (!nullToAbsent || p30DondeRegistra != null) {
      map['p30_donde_registra'] = Variable<String>(p30DondeRegistra);
    }
    if (!nullToAbsent || p30DondeRegistraOtro != null) {
      map['p30_donde_registra_otro'] = Variable<String>(p30DondeRegistraOtro);
    }
    if (!nullToAbsent || p31FrecuenciaRegistro != null) {
      map['p31_frecuencia_registro'] = Variable<String>(p31FrecuenciaRegistro);
    }
    if (!nullToAbsent || p32DisposicionRegistro != null) {
      map['p32_disposicion_registro'] =
          Variable<String>(p32DisposicionRegistro);
    }
    if (!nullToAbsent || p33ApoyoRegistro != null) {
      map['p33_apoyo_registro'] = Variable<String>(p33ApoyoRegistro);
    }
    if (!nullToAbsent || p33ApoyoRegistroOtro != null) {
      map['p33_apoyo_registro_otro'] = Variable<String>(p33ApoyoRegistroOtro);
    }
    if (!nullToAbsent || p34TemasCapacitacion != null) {
      map['p34_temas_capacitacion'] = Variable<String>(p34TemasCapacitacion);
    }
    if (!nullToAbsent || p34TemasCapacitacionOtro != null) {
      map['p34_temas_capacitacion_otro'] =
          Variable<String>(p34TemasCapacitacionOtro);
    }
    if (!nullToAbsent || p35ProblemaUrgente != null) {
      map['p35_problema_urgente'] = Variable<String>(p35ProblemaUrgente);
    }
    if (!nullToAbsent || p35ProblemaUrgenteOtro != null) {
      map['p35_problema_urgente_otro'] =
          Variable<String>(p35ProblemaUrgenteOtro);
    }
    if (!nullToAbsent || p36FormatoAprendizaje != null) {
      map['p36_formato_aprendizaje'] = Variable<String>(p36FormatoAprendizaje);
    }
    if (!nullToAbsent || p36FormatoAprendizajeOtro != null) {
      map['p36_formato_aprendizaje_otro'] =
          Variable<String>(p36FormatoAprendizajeOtro);
    }
    if (!nullToAbsent || p37TiempoCapacitacion != null) {
      map['p37_tiempo_capacitacion'] = Variable<String>(p37TiempoCapacitacion);
    }
    if (!nullToAbsent || p38DificultadAsistencia != null) {
      map['p38_dificultad_asistencia'] =
          Variable<String>(p38DificultadAsistencia);
    }
    if (!nullToAbsent || p38DificultadAsistenciaOtro != null) {
      map['p38_dificultad_asistencia_otro'] =
          Variable<String>(p38DificultadAsistenciaOtro);
    }
    if (!nullToAbsent || p39ActividadesRed != null) {
      map['p39_actividades_red'] = Variable<String>(p39ActividadesRed);
    }
    if (!nullToAbsent || p40TallerDiseno != null) {
      map['p40_taller_diseno'] = Variable<String>(p40TallerDiseno);
    }
    if (!nullToAbsent || latitud != null) {
      map['latitud'] = Variable<double>(latitud);
    }
    if (!nullToAbsent || longitud != null) {
      map['longitud'] = Variable<double>(longitud);
    }
    return map;
  }

  RespuestasDiagnosticoCompanion toCompanion(bool nullToAbsent) {
    return RespuestasDiagnosticoCompanion(
      idLocal: Value(idLocal),
      syncStatus: Value(syncStatus),
      fechaCapturaLocal: Value(fechaCapturaLocal),
      formulario: formulario == null && nullToAbsent
          ? const Value.absent()
          : Value(formulario),
      p1ComunidadVive: p1ComunidadVive == null && nullToAbsent
          ? const Value.absent()
          : Value(p1ComunidadVive),
      p1BComunidadTrabaja: p1BComunidadTrabaja == null && nullToAbsent
          ? const Value.absent()
          : Value(p1BComunidadTrabaja),
      p2Consentimiento: p2Consentimiento == null && nullToAbsent
          ? const Value.absent()
          : Value(p2Consentimiento),
      p3Municipio: p3Municipio == null && nullToAbsent
          ? const Value.absent()
          : Value(p3Municipio),
      p4Nombre: p4Nombre == null && nullToAbsent
          ? const Value.absent()
          : Value(p4Nombre),
      p5Telefono: p5Telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(p5Telefono),
      p6Taller: p6Taller == null && nullToAbsent
          ? const Value.absent()
          : Value(p6Taller),
      p7CultivoPrincipal: p7CultivoPrincipal == null && nullToAbsent
          ? const Value.absent()
          : Value(p7CultivoPrincipal),
      p7CultivoPrincipalOtro: p7CultivoPrincipalOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p7CultivoPrincipalOtro),
      p8FormaTrabajo: p8FormaTrabajo == null && nullToAbsent
          ? const Value.absent()
          : Value(p8FormaTrabajo),
      p9Distribucion: p9Distribucion == null && nullToAbsent
          ? const Value.absent()
          : Value(p9Distribucion),
      p9DistribucionOtro: p9DistribucionOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p9DistribucionOtro),
      p10MesesAlta: p10MesesAlta == null && nullToAbsent
          ? const Value.absent()
          : Value(p10MesesAlta),
      p11Policultivo: p11Policultivo == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Policultivo),
      p11Cobertura: p11Cobertura == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Cobertura),
      p11Plagas: p11Plagas == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Plagas),
      p11Agua: p11Agua == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Agua),
      p11Semillas: p11Semillas == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Semillas),
      p11Barreras: p11Barreras == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Barreras),
      p11Reduccion: p11Reduccion == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Reduccion),
      p11Residuos: p11Residuos == null && nullToAbsent
          ? const Value.absent()
          : Value(p11Residuos),
      p12Destino: p12Destino == null && nullToAbsent
          ? const Value.absent()
          : Value(p12Destino),
      p12DestinoOtro: p12DestinoOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p12DestinoOtro),
      p12Impedimentos: p12Impedimentos == null && nullToAbsent
          ? const Value.absent()
          : Value(p12Impedimentos),
      p12ImpedimentosOtro: p12ImpedimentosOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p12ImpedimentosOtro),
      p13PracticaExitosa: p13PracticaExitosa == null && nullToAbsent
          ? const Value.absent()
          : Value(p13PracticaExitosa),
      p14Necesidades: p14Necesidades == null && nullToAbsent
          ? const Value.absent()
          : Value(p14Necesidades),
      p14AccesoEstable: p14AccesoEstable == null && nullToAbsent
          ? const Value.absent()
          : Value(p14AccesoEstable),
      p14PocaDependencia: p14PocaDependencia == null && nullToAbsent
          ? const Value.absent()
          : Value(p14PocaDependencia),
      p14Tradiciones: p14Tradiciones == null && nullToAbsent
          ? const Value.absent()
          : Value(p14Tradiciones),
      p14DietaFamiliar: p14DietaFamiliar == null && nullToAbsent
          ? const Value.absent()
          : Value(p14DietaFamiliar),
      p15MesesDificiles: p15MesesDificiles == null && nullToAbsent
          ? const Value.absent()
          : Value(p15MesesDificiles),
      p16TiempoTransporte: p16TiempoTransporte == null && nullToAbsent
          ? const Value.absent()
          : Value(p16TiempoTransporte),
      p17GastoTransporte: p17GastoTransporte == null && nullToAbsent
          ? const Value.absent()
          : Value(p17GastoTransporte),
      p18FrecuenciaViajes: p18FrecuenciaViajes == null && nullToAbsent
          ? const Value.absent()
          : Value(p18FrecuenciaViajes),
      p19Mermas: p19Mermas == null && nullToAbsent
          ? const Value.absent()
          : Value(p19Mermas),
      p19Conservacion: p19Conservacion == null && nullToAbsent
          ? const Value.absent()
          : Value(p19Conservacion),
      p19ConservacionCuales: p19ConservacionCuales == null && nullToAbsent
          ? const Value.absent()
          : Value(p19ConservacionCuales),
      p20MomentoPago: p20MomentoPago == null && nullToAbsent
          ? const Value.absent()
          : Value(p20MomentoPago),
      p21LimitacionRequisitos: p21LimitacionRequisitos == null && nullToAbsent
          ? const Value.absent()
          : Value(p21LimitacionRequisitos),
      p22RequisitosDificiles: p22RequisitosDificiles == null && nullToAbsent
          ? const Value.absent()
          : Value(p22RequisitosDificiles),
      p22RequisitosDificilesOtro:
          p22RequisitosDificilesOtro == null && nullToAbsent
              ? const Value.absent()
              : Value(p22RequisitosDificilesOtro),
      p23ProbSequia: p23ProbSequia == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbSequia),
      p23ProbHuracan: p23ProbHuracan == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbHuracan),
      p23ProbPlagas: p23ProbPlagas == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbPlagas),
      p23ProbFaltaAgua: p23ProbFaltaAgua == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbFaltaAgua),
      p23ProbPrecios: p23ProbPrecios == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbPrecios),
      p23ProbPagoTardio: p23ProbPagoTardio == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbPagoTardio),
      p23ProbCaminos: p23ProbCaminos == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbCaminos),
      p23ProbFaltaInsumos: p23ProbFaltaInsumos == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbFaltaInsumos),
      p23ProbConflictos: p23ProbConflictos == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbConflictos),
      p23ProbInocuidad: p23ProbInocuidad == null && nullToAbsent
          ? const Value.absent()
          : Value(p23ProbInocuidad),
      p24ImpSequia: p24ImpSequia == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpSequia),
      p24ImpHuracan: p24ImpHuracan == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpHuracan),
      p24ImpPlagas: p24ImpPlagas == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpPlagas),
      p24ImpFaltaAgua: p24ImpFaltaAgua == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpFaltaAgua),
      p24ImpPrecios: p24ImpPrecios == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpPrecios),
      p24ImpPagoTardio: p24ImpPagoTardio == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpPagoTardio),
      p24ImpCaminos: p24ImpCaminos == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpCaminos),
      p24ImpFaltaInsumos: p24ImpFaltaInsumos == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpFaltaInsumos),
      p24ImpConflictos: p24ImpConflictos == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpConflictos),
      p24ImpInocuidad: p24ImpInocuidad == null && nullToAbsent
          ? const Value.absent()
          : Value(p24ImpInocuidad),
      p25OtroRiesgo: p25OtroRiesgo == null && nullToAbsent
          ? const Value.absent()
          : Value(p25OtroRiesgo),
      p26Rol:
          p26Rol == null && nullToAbsent ? const Value.absent() : Value(p26Rol),
      p26RolOtro: p26RolOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p26RolOtro),
      p27Acopio: p27Acopio == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Acopio),
      p27Calendario: p27Calendario == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Calendario),
      p27Transporte: p27Transporte == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Transporte),
      p27Circuitos: p27Circuitos == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Circuitos),
      p27Compras: p27Compras == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Compras),
      p27Confianza: p27Confianza == null && nullToAbsent
          ? const Value.absent()
          : Value(p27Confianza),
      p28FactoresConfianza: p28FactoresConfianza == null && nullToAbsent
          ? const Value.absent()
          : Value(p28FactoresConfianza),
      p29LlevaRegistro: p29LlevaRegistro == null && nullToAbsent
          ? const Value.absent()
          : Value(p29LlevaRegistro),
      p30DondeRegistra: p30DondeRegistra == null && nullToAbsent
          ? const Value.absent()
          : Value(p30DondeRegistra),
      p30DondeRegistraOtro: p30DondeRegistraOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p30DondeRegistraOtro),
      p31FrecuenciaRegistro: p31FrecuenciaRegistro == null && nullToAbsent
          ? const Value.absent()
          : Value(p31FrecuenciaRegistro),
      p32DisposicionRegistro: p32DisposicionRegistro == null && nullToAbsent
          ? const Value.absent()
          : Value(p32DisposicionRegistro),
      p33ApoyoRegistro: p33ApoyoRegistro == null && nullToAbsent
          ? const Value.absent()
          : Value(p33ApoyoRegistro),
      p33ApoyoRegistroOtro: p33ApoyoRegistroOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p33ApoyoRegistroOtro),
      p34TemasCapacitacion: p34TemasCapacitacion == null && nullToAbsent
          ? const Value.absent()
          : Value(p34TemasCapacitacion),
      p34TemasCapacitacionOtro: p34TemasCapacitacionOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p34TemasCapacitacionOtro),
      p35ProblemaUrgente: p35ProblemaUrgente == null && nullToAbsent
          ? const Value.absent()
          : Value(p35ProblemaUrgente),
      p35ProblemaUrgenteOtro: p35ProblemaUrgenteOtro == null && nullToAbsent
          ? const Value.absent()
          : Value(p35ProblemaUrgenteOtro),
      p36FormatoAprendizaje: p36FormatoAprendizaje == null && nullToAbsent
          ? const Value.absent()
          : Value(p36FormatoAprendizaje),
      p36FormatoAprendizajeOtro:
          p36FormatoAprendizajeOtro == null && nullToAbsent
              ? const Value.absent()
              : Value(p36FormatoAprendizajeOtro),
      p37TiempoCapacitacion: p37TiempoCapacitacion == null && nullToAbsent
          ? const Value.absent()
          : Value(p37TiempoCapacitacion),
      p38DificultadAsistencia: p38DificultadAsistencia == null && nullToAbsent
          ? const Value.absent()
          : Value(p38DificultadAsistencia),
      p38DificultadAsistenciaOtro:
          p38DificultadAsistenciaOtro == null && nullToAbsent
              ? const Value.absent()
              : Value(p38DificultadAsistenciaOtro),
      p39ActividadesRed: p39ActividadesRed == null && nullToAbsent
          ? const Value.absent()
          : Value(p39ActividadesRed),
      p40TallerDiseno: p40TallerDiseno == null && nullToAbsent
          ? const Value.absent()
          : Value(p40TallerDiseno),
      latitud: latitud == null && nullToAbsent
          ? const Value.absent()
          : Value(latitud),
      longitud: longitud == null && nullToAbsent
          ? const Value.absent()
          : Value(longitud),
    );
  }

  factory RespuestasDiagnosticoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RespuestasDiagnosticoData(
      idLocal: serializer.fromJson<String>(json['idLocal']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
      fechaCapturaLocal:
          serializer.fromJson<DateTime>(json['fechaCapturaLocal']),
      formulario: serializer.fromJson<String?>(json['formulario']),
      p1ComunidadVive: serializer.fromJson<String?>(json['p1ComunidadVive']),
      p1BComunidadTrabaja:
          serializer.fromJson<String?>(json['p1BComunidadTrabaja']),
      p2Consentimiento: serializer.fromJson<String?>(json['p2Consentimiento']),
      p3Municipio: serializer.fromJson<String?>(json['p3Municipio']),
      p4Nombre: serializer.fromJson<String?>(json['p4Nombre']),
      p5Telefono: serializer.fromJson<String?>(json['p5Telefono']),
      p6Taller: serializer.fromJson<String?>(json['p6Taller']),
      p7CultivoPrincipal:
          serializer.fromJson<String?>(json['p7CultivoPrincipal']),
      p7CultivoPrincipalOtro:
          serializer.fromJson<String?>(json['p7CultivoPrincipalOtro']),
      p8FormaTrabajo: serializer.fromJson<String?>(json['p8FormaTrabajo']),
      p9Distribucion: serializer.fromJson<String?>(json['p9Distribucion']),
      p9DistribucionOtro:
          serializer.fromJson<String?>(json['p9DistribucionOtro']),
      p10MesesAlta: serializer.fromJson<String?>(json['p10MesesAlta']),
      p11Policultivo: serializer.fromJson<String?>(json['p11Policultivo']),
      p11Cobertura: serializer.fromJson<String?>(json['p11Cobertura']),
      p11Plagas: serializer.fromJson<String?>(json['p11Plagas']),
      p11Agua: serializer.fromJson<String?>(json['p11Agua']),
      p11Semillas: serializer.fromJson<String?>(json['p11Semillas']),
      p11Barreras: serializer.fromJson<String?>(json['p11Barreras']),
      p11Reduccion: serializer.fromJson<String?>(json['p11Reduccion']),
      p11Residuos: serializer.fromJson<String?>(json['p11Residuos']),
      p12Destino: serializer.fromJson<String?>(json['p12Destino']),
      p12DestinoOtro: serializer.fromJson<String?>(json['p12DestinoOtro']),
      p12Impedimentos: serializer.fromJson<String?>(json['p12Impedimentos']),
      p12ImpedimentosOtro:
          serializer.fromJson<String?>(json['p12ImpedimentosOtro']),
      p13PracticaExitosa:
          serializer.fromJson<String?>(json['p13PracticaExitosa']),
      p14Necesidades: serializer.fromJson<String?>(json['p14Necesidades']),
      p14AccesoEstable: serializer.fromJson<String?>(json['p14AccesoEstable']),
      p14PocaDependencia:
          serializer.fromJson<String?>(json['p14PocaDependencia']),
      p14Tradiciones: serializer.fromJson<String?>(json['p14Tradiciones']),
      p14DietaFamiliar: serializer.fromJson<String?>(json['p14DietaFamiliar']),
      p15MesesDificiles:
          serializer.fromJson<String?>(json['p15MesesDificiles']),
      p16TiempoTransporte:
          serializer.fromJson<String?>(json['p16TiempoTransporte']),
      p17GastoTransporte:
          serializer.fromJson<String?>(json['p17GastoTransporte']),
      p18FrecuenciaViajes:
          serializer.fromJson<String?>(json['p18FrecuenciaViajes']),
      p19Mermas: serializer.fromJson<String?>(json['p19Mermas']),
      p19Conservacion: serializer.fromJson<String?>(json['p19Conservacion']),
      p19ConservacionCuales:
          serializer.fromJson<String?>(json['p19ConservacionCuales']),
      p20MomentoPago: serializer.fromJson<String?>(json['p20MomentoPago']),
      p21LimitacionRequisitos:
          serializer.fromJson<String?>(json['p21LimitacionRequisitos']),
      p22RequisitosDificiles:
          serializer.fromJson<String?>(json['p22RequisitosDificiles']),
      p22RequisitosDificilesOtro:
          serializer.fromJson<String?>(json['p22RequisitosDificilesOtro']),
      p23ProbSequia: serializer.fromJson<String?>(json['p23ProbSequia']),
      p23ProbHuracan: serializer.fromJson<String?>(json['p23ProbHuracan']),
      p23ProbPlagas: serializer.fromJson<String?>(json['p23ProbPlagas']),
      p23ProbFaltaAgua: serializer.fromJson<String?>(json['p23ProbFaltaAgua']),
      p23ProbPrecios: serializer.fromJson<String?>(json['p23ProbPrecios']),
      p23ProbPagoTardio:
          serializer.fromJson<String?>(json['p23ProbPagoTardio']),
      p23ProbCaminos: serializer.fromJson<String?>(json['p23ProbCaminos']),
      p23ProbFaltaInsumos:
          serializer.fromJson<String?>(json['p23ProbFaltaInsumos']),
      p23ProbConflictos:
          serializer.fromJson<String?>(json['p23ProbConflictos']),
      p23ProbInocuidad: serializer.fromJson<String?>(json['p23ProbInocuidad']),
      p24ImpSequia: serializer.fromJson<String?>(json['p24ImpSequia']),
      p24ImpHuracan: serializer.fromJson<String?>(json['p24ImpHuracan']),
      p24ImpPlagas: serializer.fromJson<String?>(json['p24ImpPlagas']),
      p24ImpFaltaAgua: serializer.fromJson<String?>(json['p24ImpFaltaAgua']),
      p24ImpPrecios: serializer.fromJson<String?>(json['p24ImpPrecios']),
      p24ImpPagoTardio: serializer.fromJson<String?>(json['p24ImpPagoTardio']),
      p24ImpCaminos: serializer.fromJson<String?>(json['p24ImpCaminos']),
      p24ImpFaltaInsumos:
          serializer.fromJson<String?>(json['p24ImpFaltaInsumos']),
      p24ImpConflictos: serializer.fromJson<String?>(json['p24ImpConflictos']),
      p24ImpInocuidad: serializer.fromJson<String?>(json['p24ImpInocuidad']),
      p25OtroRiesgo: serializer.fromJson<String?>(json['p25OtroRiesgo']),
      p26Rol: serializer.fromJson<String?>(json['p26Rol']),
      p26RolOtro: serializer.fromJson<String?>(json['p26RolOtro']),
      p27Acopio: serializer.fromJson<String?>(json['p27Acopio']),
      p27Calendario: serializer.fromJson<String?>(json['p27Calendario']),
      p27Transporte: serializer.fromJson<String?>(json['p27Transporte']),
      p27Circuitos: serializer.fromJson<String?>(json['p27Circuitos']),
      p27Compras: serializer.fromJson<String?>(json['p27Compras']),
      p27Confianza: serializer.fromJson<String?>(json['p27Confianza']),
      p28FactoresConfianza:
          serializer.fromJson<String?>(json['p28FactoresConfianza']),
      p29LlevaRegistro: serializer.fromJson<String?>(json['p29LlevaRegistro']),
      p30DondeRegistra: serializer.fromJson<String?>(json['p30DondeRegistra']),
      p30DondeRegistraOtro:
          serializer.fromJson<String?>(json['p30DondeRegistraOtro']),
      p31FrecuenciaRegistro:
          serializer.fromJson<String?>(json['p31FrecuenciaRegistro']),
      p32DisposicionRegistro:
          serializer.fromJson<String?>(json['p32DisposicionRegistro']),
      p33ApoyoRegistro: serializer.fromJson<String?>(json['p33ApoyoRegistro']),
      p33ApoyoRegistroOtro:
          serializer.fromJson<String?>(json['p33ApoyoRegistroOtro']),
      p34TemasCapacitacion:
          serializer.fromJson<String?>(json['p34TemasCapacitacion']),
      p34TemasCapacitacionOtro:
          serializer.fromJson<String?>(json['p34TemasCapacitacionOtro']),
      p35ProblemaUrgente:
          serializer.fromJson<String?>(json['p35ProblemaUrgente']),
      p35ProblemaUrgenteOtro:
          serializer.fromJson<String?>(json['p35ProblemaUrgenteOtro']),
      p36FormatoAprendizaje:
          serializer.fromJson<String?>(json['p36FormatoAprendizaje']),
      p36FormatoAprendizajeOtro:
          serializer.fromJson<String?>(json['p36FormatoAprendizajeOtro']),
      p37TiempoCapacitacion:
          serializer.fromJson<String?>(json['p37TiempoCapacitacion']),
      p38DificultadAsistencia:
          serializer.fromJson<String?>(json['p38DificultadAsistencia']),
      p38DificultadAsistenciaOtro:
          serializer.fromJson<String?>(json['p38DificultadAsistenciaOtro']),
      p39ActividadesRed:
          serializer.fromJson<String?>(json['p39ActividadesRed']),
      p40TallerDiseno: serializer.fromJson<String?>(json['p40TallerDiseno']),
      latitud: serializer.fromJson<double?>(json['latitud']),
      longitud: serializer.fromJson<double?>(json['longitud']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idLocal': serializer.toJson<String>(idLocal),
      'syncStatus': serializer.toJson<String>(syncStatus),
      'fechaCapturaLocal': serializer.toJson<DateTime>(fechaCapturaLocal),
      'formulario': serializer.toJson<String?>(formulario),
      'p1ComunidadVive': serializer.toJson<String?>(p1ComunidadVive),
      'p1BComunidadTrabaja': serializer.toJson<String?>(p1BComunidadTrabaja),
      'p2Consentimiento': serializer.toJson<String?>(p2Consentimiento),
      'p3Municipio': serializer.toJson<String?>(p3Municipio),
      'p4Nombre': serializer.toJson<String?>(p4Nombre),
      'p5Telefono': serializer.toJson<String?>(p5Telefono),
      'p6Taller': serializer.toJson<String?>(p6Taller),
      'p7CultivoPrincipal': serializer.toJson<String?>(p7CultivoPrincipal),
      'p7CultivoPrincipalOtro':
          serializer.toJson<String?>(p7CultivoPrincipalOtro),
      'p8FormaTrabajo': serializer.toJson<String?>(p8FormaTrabajo),
      'p9Distribucion': serializer.toJson<String?>(p9Distribucion),
      'p9DistribucionOtro': serializer.toJson<String?>(p9DistribucionOtro),
      'p10MesesAlta': serializer.toJson<String?>(p10MesesAlta),
      'p11Policultivo': serializer.toJson<String?>(p11Policultivo),
      'p11Cobertura': serializer.toJson<String?>(p11Cobertura),
      'p11Plagas': serializer.toJson<String?>(p11Plagas),
      'p11Agua': serializer.toJson<String?>(p11Agua),
      'p11Semillas': serializer.toJson<String?>(p11Semillas),
      'p11Barreras': serializer.toJson<String?>(p11Barreras),
      'p11Reduccion': serializer.toJson<String?>(p11Reduccion),
      'p11Residuos': serializer.toJson<String?>(p11Residuos),
      'p12Destino': serializer.toJson<String?>(p12Destino),
      'p12DestinoOtro': serializer.toJson<String?>(p12DestinoOtro),
      'p12Impedimentos': serializer.toJson<String?>(p12Impedimentos),
      'p12ImpedimentosOtro': serializer.toJson<String?>(p12ImpedimentosOtro),
      'p13PracticaExitosa': serializer.toJson<String?>(p13PracticaExitosa),
      'p14Necesidades': serializer.toJson<String?>(p14Necesidades),
      'p14AccesoEstable': serializer.toJson<String?>(p14AccesoEstable),
      'p14PocaDependencia': serializer.toJson<String?>(p14PocaDependencia),
      'p14Tradiciones': serializer.toJson<String?>(p14Tradiciones),
      'p14DietaFamiliar': serializer.toJson<String?>(p14DietaFamiliar),
      'p15MesesDificiles': serializer.toJson<String?>(p15MesesDificiles),
      'p16TiempoTransporte': serializer.toJson<String?>(p16TiempoTransporte),
      'p17GastoTransporte': serializer.toJson<String?>(p17GastoTransporte),
      'p18FrecuenciaViajes': serializer.toJson<String?>(p18FrecuenciaViajes),
      'p19Mermas': serializer.toJson<String?>(p19Mermas),
      'p19Conservacion': serializer.toJson<String?>(p19Conservacion),
      'p19ConservacionCuales':
          serializer.toJson<String?>(p19ConservacionCuales),
      'p20MomentoPago': serializer.toJson<String?>(p20MomentoPago),
      'p21LimitacionRequisitos':
          serializer.toJson<String?>(p21LimitacionRequisitos),
      'p22RequisitosDificiles':
          serializer.toJson<String?>(p22RequisitosDificiles),
      'p22RequisitosDificilesOtro':
          serializer.toJson<String?>(p22RequisitosDificilesOtro),
      'p23ProbSequia': serializer.toJson<String?>(p23ProbSequia),
      'p23ProbHuracan': serializer.toJson<String?>(p23ProbHuracan),
      'p23ProbPlagas': serializer.toJson<String?>(p23ProbPlagas),
      'p23ProbFaltaAgua': serializer.toJson<String?>(p23ProbFaltaAgua),
      'p23ProbPrecios': serializer.toJson<String?>(p23ProbPrecios),
      'p23ProbPagoTardio': serializer.toJson<String?>(p23ProbPagoTardio),
      'p23ProbCaminos': serializer.toJson<String?>(p23ProbCaminos),
      'p23ProbFaltaInsumos': serializer.toJson<String?>(p23ProbFaltaInsumos),
      'p23ProbConflictos': serializer.toJson<String?>(p23ProbConflictos),
      'p23ProbInocuidad': serializer.toJson<String?>(p23ProbInocuidad),
      'p24ImpSequia': serializer.toJson<String?>(p24ImpSequia),
      'p24ImpHuracan': serializer.toJson<String?>(p24ImpHuracan),
      'p24ImpPlagas': serializer.toJson<String?>(p24ImpPlagas),
      'p24ImpFaltaAgua': serializer.toJson<String?>(p24ImpFaltaAgua),
      'p24ImpPrecios': serializer.toJson<String?>(p24ImpPrecios),
      'p24ImpPagoTardio': serializer.toJson<String?>(p24ImpPagoTardio),
      'p24ImpCaminos': serializer.toJson<String?>(p24ImpCaminos),
      'p24ImpFaltaInsumos': serializer.toJson<String?>(p24ImpFaltaInsumos),
      'p24ImpConflictos': serializer.toJson<String?>(p24ImpConflictos),
      'p24ImpInocuidad': serializer.toJson<String?>(p24ImpInocuidad),
      'p25OtroRiesgo': serializer.toJson<String?>(p25OtroRiesgo),
      'p26Rol': serializer.toJson<String?>(p26Rol),
      'p26RolOtro': serializer.toJson<String?>(p26RolOtro),
      'p27Acopio': serializer.toJson<String?>(p27Acopio),
      'p27Calendario': serializer.toJson<String?>(p27Calendario),
      'p27Transporte': serializer.toJson<String?>(p27Transporte),
      'p27Circuitos': serializer.toJson<String?>(p27Circuitos),
      'p27Compras': serializer.toJson<String?>(p27Compras),
      'p27Confianza': serializer.toJson<String?>(p27Confianza),
      'p28FactoresConfianza': serializer.toJson<String?>(p28FactoresConfianza),
      'p29LlevaRegistro': serializer.toJson<String?>(p29LlevaRegistro),
      'p30DondeRegistra': serializer.toJson<String?>(p30DondeRegistra),
      'p30DondeRegistraOtro': serializer.toJson<String?>(p30DondeRegistraOtro),
      'p31FrecuenciaRegistro':
          serializer.toJson<String?>(p31FrecuenciaRegistro),
      'p32DisposicionRegistro':
          serializer.toJson<String?>(p32DisposicionRegistro),
      'p33ApoyoRegistro': serializer.toJson<String?>(p33ApoyoRegistro),
      'p33ApoyoRegistroOtro': serializer.toJson<String?>(p33ApoyoRegistroOtro),
      'p34TemasCapacitacion': serializer.toJson<String?>(p34TemasCapacitacion),
      'p34TemasCapacitacionOtro':
          serializer.toJson<String?>(p34TemasCapacitacionOtro),
      'p35ProblemaUrgente': serializer.toJson<String?>(p35ProblemaUrgente),
      'p35ProblemaUrgenteOtro':
          serializer.toJson<String?>(p35ProblemaUrgenteOtro),
      'p36FormatoAprendizaje':
          serializer.toJson<String?>(p36FormatoAprendizaje),
      'p36FormatoAprendizajeOtro':
          serializer.toJson<String?>(p36FormatoAprendizajeOtro),
      'p37TiempoCapacitacion':
          serializer.toJson<String?>(p37TiempoCapacitacion),
      'p38DificultadAsistencia':
          serializer.toJson<String?>(p38DificultadAsistencia),
      'p38DificultadAsistenciaOtro':
          serializer.toJson<String?>(p38DificultadAsistenciaOtro),
      'p39ActividadesRed': serializer.toJson<String?>(p39ActividadesRed),
      'p40TallerDiseno': serializer.toJson<String?>(p40TallerDiseno),
      'latitud': serializer.toJson<double?>(latitud),
      'longitud': serializer.toJson<double?>(longitud),
    };
  }

  RespuestasDiagnosticoData copyWith(
          {String? idLocal,
          String? syncStatus,
          DateTime? fechaCapturaLocal,
          Value<String?> formulario = const Value.absent(),
          Value<String?> p1ComunidadVive = const Value.absent(),
          Value<String?> p1BComunidadTrabaja = const Value.absent(),
          Value<String?> p2Consentimiento = const Value.absent(),
          Value<String?> p3Municipio = const Value.absent(),
          Value<String?> p4Nombre = const Value.absent(),
          Value<String?> p5Telefono = const Value.absent(),
          Value<String?> p6Taller = const Value.absent(),
          Value<String?> p7CultivoPrincipal = const Value.absent(),
          Value<String?> p7CultivoPrincipalOtro = const Value.absent(),
          Value<String?> p8FormaTrabajo = const Value.absent(),
          Value<String?> p9Distribucion = const Value.absent(),
          Value<String?> p9DistribucionOtro = const Value.absent(),
          Value<String?> p10MesesAlta = const Value.absent(),
          Value<String?> p11Policultivo = const Value.absent(),
          Value<String?> p11Cobertura = const Value.absent(),
          Value<String?> p11Plagas = const Value.absent(),
          Value<String?> p11Agua = const Value.absent(),
          Value<String?> p11Semillas = const Value.absent(),
          Value<String?> p11Barreras = const Value.absent(),
          Value<String?> p11Reduccion = const Value.absent(),
          Value<String?> p11Residuos = const Value.absent(),
          Value<String?> p12Destino = const Value.absent(),
          Value<String?> p12DestinoOtro = const Value.absent(),
          Value<String?> p12Impedimentos = const Value.absent(),
          Value<String?> p12ImpedimentosOtro = const Value.absent(),
          Value<String?> p13PracticaExitosa = const Value.absent(),
          Value<String?> p14Necesidades = const Value.absent(),
          Value<String?> p14AccesoEstable = const Value.absent(),
          Value<String?> p14PocaDependencia = const Value.absent(),
          Value<String?> p14Tradiciones = const Value.absent(),
          Value<String?> p14DietaFamiliar = const Value.absent(),
          Value<String?> p15MesesDificiles = const Value.absent(),
          Value<String?> p16TiempoTransporte = const Value.absent(),
          Value<String?> p17GastoTransporte = const Value.absent(),
          Value<String?> p18FrecuenciaViajes = const Value.absent(),
          Value<String?> p19Mermas = const Value.absent(),
          Value<String?> p19Conservacion = const Value.absent(),
          Value<String?> p19ConservacionCuales = const Value.absent(),
          Value<String?> p20MomentoPago = const Value.absent(),
          Value<String?> p21LimitacionRequisitos = const Value.absent(),
          Value<String?> p22RequisitosDificiles = const Value.absent(),
          Value<String?> p22RequisitosDificilesOtro = const Value.absent(),
          Value<String?> p23ProbSequia = const Value.absent(),
          Value<String?> p23ProbHuracan = const Value.absent(),
          Value<String?> p23ProbPlagas = const Value.absent(),
          Value<String?> p23ProbFaltaAgua = const Value.absent(),
          Value<String?> p23ProbPrecios = const Value.absent(),
          Value<String?> p23ProbPagoTardio = const Value.absent(),
          Value<String?> p23ProbCaminos = const Value.absent(),
          Value<String?> p23ProbFaltaInsumos = const Value.absent(),
          Value<String?> p23ProbConflictos = const Value.absent(),
          Value<String?> p23ProbInocuidad = const Value.absent(),
          Value<String?> p24ImpSequia = const Value.absent(),
          Value<String?> p24ImpHuracan = const Value.absent(),
          Value<String?> p24ImpPlagas = const Value.absent(),
          Value<String?> p24ImpFaltaAgua = const Value.absent(),
          Value<String?> p24ImpPrecios = const Value.absent(),
          Value<String?> p24ImpPagoTardio = const Value.absent(),
          Value<String?> p24ImpCaminos = const Value.absent(),
          Value<String?> p24ImpFaltaInsumos = const Value.absent(),
          Value<String?> p24ImpConflictos = const Value.absent(),
          Value<String?> p24ImpInocuidad = const Value.absent(),
          Value<String?> p25OtroRiesgo = const Value.absent(),
          Value<String?> p26Rol = const Value.absent(),
          Value<String?> p26RolOtro = const Value.absent(),
          Value<String?> p27Acopio = const Value.absent(),
          Value<String?> p27Calendario = const Value.absent(),
          Value<String?> p27Transporte = const Value.absent(),
          Value<String?> p27Circuitos = const Value.absent(),
          Value<String?> p27Compras = const Value.absent(),
          Value<String?> p27Confianza = const Value.absent(),
          Value<String?> p28FactoresConfianza = const Value.absent(),
          Value<String?> p29LlevaRegistro = const Value.absent(),
          Value<String?> p30DondeRegistra = const Value.absent(),
          Value<String?> p30DondeRegistraOtro = const Value.absent(),
          Value<String?> p31FrecuenciaRegistro = const Value.absent(),
          Value<String?> p32DisposicionRegistro = const Value.absent(),
          Value<String?> p33ApoyoRegistro = const Value.absent(),
          Value<String?> p33ApoyoRegistroOtro = const Value.absent(),
          Value<String?> p34TemasCapacitacion = const Value.absent(),
          Value<String?> p34TemasCapacitacionOtro = const Value.absent(),
          Value<String?> p35ProblemaUrgente = const Value.absent(),
          Value<String?> p35ProblemaUrgenteOtro = const Value.absent(),
          Value<String?> p36FormatoAprendizaje = const Value.absent(),
          Value<String?> p36FormatoAprendizajeOtro = const Value.absent(),
          Value<String?> p37TiempoCapacitacion = const Value.absent(),
          Value<String?> p38DificultadAsistencia = const Value.absent(),
          Value<String?> p38DificultadAsistenciaOtro = const Value.absent(),
          Value<String?> p39ActividadesRed = const Value.absent(),
          Value<String?> p40TallerDiseno = const Value.absent(),
          Value<double?> latitud = const Value.absent(),
          Value<double?> longitud = const Value.absent()}) =>
      RespuestasDiagnosticoData(
        idLocal: idLocal ?? this.idLocal,
        syncStatus: syncStatus ?? this.syncStatus,
        fechaCapturaLocal: fechaCapturaLocal ?? this.fechaCapturaLocal,
        formulario: formulario.present ? formulario.value : this.formulario,
        p1ComunidadVive: p1ComunidadVive.present
            ? p1ComunidadVive.value
            : this.p1ComunidadVive,
        p1BComunidadTrabaja: p1BComunidadTrabaja.present
            ? p1BComunidadTrabaja.value
            : this.p1BComunidadTrabaja,
        p2Consentimiento: p2Consentimiento.present
            ? p2Consentimiento.value
            : this.p2Consentimiento,
        p3Municipio: p3Municipio.present ? p3Municipio.value : this.p3Municipio,
        p4Nombre: p4Nombre.present ? p4Nombre.value : this.p4Nombre,
        p5Telefono: p5Telefono.present ? p5Telefono.value : this.p5Telefono,
        p6Taller: p6Taller.present ? p6Taller.value : this.p6Taller,
        p7CultivoPrincipal: p7CultivoPrincipal.present
            ? p7CultivoPrincipal.value
            : this.p7CultivoPrincipal,
        p7CultivoPrincipalOtro: p7CultivoPrincipalOtro.present
            ? p7CultivoPrincipalOtro.value
            : this.p7CultivoPrincipalOtro,
        p8FormaTrabajo:
            p8FormaTrabajo.present ? p8FormaTrabajo.value : this.p8FormaTrabajo,
        p9Distribucion:
            p9Distribucion.present ? p9Distribucion.value : this.p9Distribucion,
        p9DistribucionOtro: p9DistribucionOtro.present
            ? p9DistribucionOtro.value
            : this.p9DistribucionOtro,
        p10MesesAlta:
            p10MesesAlta.present ? p10MesesAlta.value : this.p10MesesAlta,
        p11Policultivo:
            p11Policultivo.present ? p11Policultivo.value : this.p11Policultivo,
        p11Cobertura:
            p11Cobertura.present ? p11Cobertura.value : this.p11Cobertura,
        p11Plagas: p11Plagas.present ? p11Plagas.value : this.p11Plagas,
        p11Agua: p11Agua.present ? p11Agua.value : this.p11Agua,
        p11Semillas: p11Semillas.present ? p11Semillas.value : this.p11Semillas,
        p11Barreras: p11Barreras.present ? p11Barreras.value : this.p11Barreras,
        p11Reduccion:
            p11Reduccion.present ? p11Reduccion.value : this.p11Reduccion,
        p11Residuos: p11Residuos.present ? p11Residuos.value : this.p11Residuos,
        p12Destino: p12Destino.present ? p12Destino.value : this.p12Destino,
        p12DestinoOtro:
            p12DestinoOtro.present ? p12DestinoOtro.value : this.p12DestinoOtro,
        p12Impedimentos: p12Impedimentos.present
            ? p12Impedimentos.value
            : this.p12Impedimentos,
        p12ImpedimentosOtro: p12ImpedimentosOtro.present
            ? p12ImpedimentosOtro.value
            : this.p12ImpedimentosOtro,
        p13PracticaExitosa: p13PracticaExitosa.present
            ? p13PracticaExitosa.value
            : this.p13PracticaExitosa,
        p14Necesidades:
            p14Necesidades.present ? p14Necesidades.value : this.p14Necesidades,
        p14AccesoEstable: p14AccesoEstable.present
            ? p14AccesoEstable.value
            : this.p14AccesoEstable,
        p14PocaDependencia: p14PocaDependencia.present
            ? p14PocaDependencia.value
            : this.p14PocaDependencia,
        p14Tradiciones:
            p14Tradiciones.present ? p14Tradiciones.value : this.p14Tradiciones,
        p14DietaFamiliar: p14DietaFamiliar.present
            ? p14DietaFamiliar.value
            : this.p14DietaFamiliar,
        p15MesesDificiles: p15MesesDificiles.present
            ? p15MesesDificiles.value
            : this.p15MesesDificiles,
        p16TiempoTransporte: p16TiempoTransporte.present
            ? p16TiempoTransporte.value
            : this.p16TiempoTransporte,
        p17GastoTransporte: p17GastoTransporte.present
            ? p17GastoTransporte.value
            : this.p17GastoTransporte,
        p18FrecuenciaViajes: p18FrecuenciaViajes.present
            ? p18FrecuenciaViajes.value
            : this.p18FrecuenciaViajes,
        p19Mermas: p19Mermas.present ? p19Mermas.value : this.p19Mermas,
        p19Conservacion: p19Conservacion.present
            ? p19Conservacion.value
            : this.p19Conservacion,
        p19ConservacionCuales: p19ConservacionCuales.present
            ? p19ConservacionCuales.value
            : this.p19ConservacionCuales,
        p20MomentoPago:
            p20MomentoPago.present ? p20MomentoPago.value : this.p20MomentoPago,
        p21LimitacionRequisitos: p21LimitacionRequisitos.present
            ? p21LimitacionRequisitos.value
            : this.p21LimitacionRequisitos,
        p22RequisitosDificiles: p22RequisitosDificiles.present
            ? p22RequisitosDificiles.value
            : this.p22RequisitosDificiles,
        p22RequisitosDificilesOtro: p22RequisitosDificilesOtro.present
            ? p22RequisitosDificilesOtro.value
            : this.p22RequisitosDificilesOtro,
        p23ProbSequia:
            p23ProbSequia.present ? p23ProbSequia.value : this.p23ProbSequia,
        p23ProbHuracan:
            p23ProbHuracan.present ? p23ProbHuracan.value : this.p23ProbHuracan,
        p23ProbPlagas:
            p23ProbPlagas.present ? p23ProbPlagas.value : this.p23ProbPlagas,
        p23ProbFaltaAgua: p23ProbFaltaAgua.present
            ? p23ProbFaltaAgua.value
            : this.p23ProbFaltaAgua,
        p23ProbPrecios:
            p23ProbPrecios.present ? p23ProbPrecios.value : this.p23ProbPrecios,
        p23ProbPagoTardio: p23ProbPagoTardio.present
            ? p23ProbPagoTardio.value
            : this.p23ProbPagoTardio,
        p23ProbCaminos:
            p23ProbCaminos.present ? p23ProbCaminos.value : this.p23ProbCaminos,
        p23ProbFaltaInsumos: p23ProbFaltaInsumos.present
            ? p23ProbFaltaInsumos.value
            : this.p23ProbFaltaInsumos,
        p23ProbConflictos: p23ProbConflictos.present
            ? p23ProbConflictos.value
            : this.p23ProbConflictos,
        p23ProbInocuidad: p23ProbInocuidad.present
            ? p23ProbInocuidad.value
            : this.p23ProbInocuidad,
        p24ImpSequia:
            p24ImpSequia.present ? p24ImpSequia.value : this.p24ImpSequia,
        p24ImpHuracan:
            p24ImpHuracan.present ? p24ImpHuracan.value : this.p24ImpHuracan,
        p24ImpPlagas:
            p24ImpPlagas.present ? p24ImpPlagas.value : this.p24ImpPlagas,
        p24ImpFaltaAgua: p24ImpFaltaAgua.present
            ? p24ImpFaltaAgua.value
            : this.p24ImpFaltaAgua,
        p24ImpPrecios:
            p24ImpPrecios.present ? p24ImpPrecios.value : this.p24ImpPrecios,
        p24ImpPagoTardio: p24ImpPagoTardio.present
            ? p24ImpPagoTardio.value
            : this.p24ImpPagoTardio,
        p24ImpCaminos:
            p24ImpCaminos.present ? p24ImpCaminos.value : this.p24ImpCaminos,
        p24ImpFaltaInsumos: p24ImpFaltaInsumos.present
            ? p24ImpFaltaInsumos.value
            : this.p24ImpFaltaInsumos,
        p24ImpConflictos: p24ImpConflictos.present
            ? p24ImpConflictos.value
            : this.p24ImpConflictos,
        p24ImpInocuidad: p24ImpInocuidad.present
            ? p24ImpInocuidad.value
            : this.p24ImpInocuidad,
        p25OtroRiesgo:
            p25OtroRiesgo.present ? p25OtroRiesgo.value : this.p25OtroRiesgo,
        p26Rol: p26Rol.present ? p26Rol.value : this.p26Rol,
        p26RolOtro: p26RolOtro.present ? p26RolOtro.value : this.p26RolOtro,
        p27Acopio: p27Acopio.present ? p27Acopio.value : this.p27Acopio,
        p27Calendario:
            p27Calendario.present ? p27Calendario.value : this.p27Calendario,
        p27Transporte:
            p27Transporte.present ? p27Transporte.value : this.p27Transporte,
        p27Circuitos:
            p27Circuitos.present ? p27Circuitos.value : this.p27Circuitos,
        p27Compras: p27Compras.present ? p27Compras.value : this.p27Compras,
        p27Confianza:
            p27Confianza.present ? p27Confianza.value : this.p27Confianza,
        p28FactoresConfianza: p28FactoresConfianza.present
            ? p28FactoresConfianza.value
            : this.p28FactoresConfianza,
        p29LlevaRegistro: p29LlevaRegistro.present
            ? p29LlevaRegistro.value
            : this.p29LlevaRegistro,
        p30DondeRegistra: p30DondeRegistra.present
            ? p30DondeRegistra.value
            : this.p30DondeRegistra,
        p30DondeRegistraOtro: p30DondeRegistraOtro.present
            ? p30DondeRegistraOtro.value
            : this.p30DondeRegistraOtro,
        p31FrecuenciaRegistro: p31FrecuenciaRegistro.present
            ? p31FrecuenciaRegistro.value
            : this.p31FrecuenciaRegistro,
        p32DisposicionRegistro: p32DisposicionRegistro.present
            ? p32DisposicionRegistro.value
            : this.p32DisposicionRegistro,
        p33ApoyoRegistro: p33ApoyoRegistro.present
            ? p33ApoyoRegistro.value
            : this.p33ApoyoRegistro,
        p33ApoyoRegistroOtro: p33ApoyoRegistroOtro.present
            ? p33ApoyoRegistroOtro.value
            : this.p33ApoyoRegistroOtro,
        p34TemasCapacitacion: p34TemasCapacitacion.present
            ? p34TemasCapacitacion.value
            : this.p34TemasCapacitacion,
        p34TemasCapacitacionOtro: p34TemasCapacitacionOtro.present
            ? p34TemasCapacitacionOtro.value
            : this.p34TemasCapacitacionOtro,
        p35ProblemaUrgente: p35ProblemaUrgente.present
            ? p35ProblemaUrgente.value
            : this.p35ProblemaUrgente,
        p35ProblemaUrgenteOtro: p35ProblemaUrgenteOtro.present
            ? p35ProblemaUrgenteOtro.value
            : this.p35ProblemaUrgenteOtro,
        p36FormatoAprendizaje: p36FormatoAprendizaje.present
            ? p36FormatoAprendizaje.value
            : this.p36FormatoAprendizaje,
        p36FormatoAprendizajeOtro: p36FormatoAprendizajeOtro.present
            ? p36FormatoAprendizajeOtro.value
            : this.p36FormatoAprendizajeOtro,
        p37TiempoCapacitacion: p37TiempoCapacitacion.present
            ? p37TiempoCapacitacion.value
            : this.p37TiempoCapacitacion,
        p38DificultadAsistencia: p38DificultadAsistencia.present
            ? p38DificultadAsistencia.value
            : this.p38DificultadAsistencia,
        p38DificultadAsistenciaOtro: p38DificultadAsistenciaOtro.present
            ? p38DificultadAsistenciaOtro.value
            : this.p38DificultadAsistenciaOtro,
        p39ActividadesRed: p39ActividadesRed.present
            ? p39ActividadesRed.value
            : this.p39ActividadesRed,
        p40TallerDiseno: p40TallerDiseno.present
            ? p40TallerDiseno.value
            : this.p40TallerDiseno,
        latitud: latitud.present ? latitud.value : this.latitud,
        longitud: longitud.present ? longitud.value : this.longitud,
      );
  RespuestasDiagnosticoData copyWithCompanion(
      RespuestasDiagnosticoCompanion data) {
    return RespuestasDiagnosticoData(
      idLocal: data.idLocal.present ? data.idLocal.value : this.idLocal,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
      fechaCapturaLocal: data.fechaCapturaLocal.present
          ? data.fechaCapturaLocal.value
          : this.fechaCapturaLocal,
      formulario:
          data.formulario.present ? data.formulario.value : this.formulario,
      p1ComunidadVive: data.p1ComunidadVive.present
          ? data.p1ComunidadVive.value
          : this.p1ComunidadVive,
      p1BComunidadTrabaja: data.p1BComunidadTrabaja.present
          ? data.p1BComunidadTrabaja.value
          : this.p1BComunidadTrabaja,
      p2Consentimiento: data.p2Consentimiento.present
          ? data.p2Consentimiento.value
          : this.p2Consentimiento,
      p3Municipio:
          data.p3Municipio.present ? data.p3Municipio.value : this.p3Municipio,
      p4Nombre: data.p4Nombre.present ? data.p4Nombre.value : this.p4Nombre,
      p5Telefono:
          data.p5Telefono.present ? data.p5Telefono.value : this.p5Telefono,
      p6Taller: data.p6Taller.present ? data.p6Taller.value : this.p6Taller,
      p7CultivoPrincipal: data.p7CultivoPrincipal.present
          ? data.p7CultivoPrincipal.value
          : this.p7CultivoPrincipal,
      p7CultivoPrincipalOtro: data.p7CultivoPrincipalOtro.present
          ? data.p7CultivoPrincipalOtro.value
          : this.p7CultivoPrincipalOtro,
      p8FormaTrabajo: data.p8FormaTrabajo.present
          ? data.p8FormaTrabajo.value
          : this.p8FormaTrabajo,
      p9Distribucion: data.p9Distribucion.present
          ? data.p9Distribucion.value
          : this.p9Distribucion,
      p9DistribucionOtro: data.p9DistribucionOtro.present
          ? data.p9DistribucionOtro.value
          : this.p9DistribucionOtro,
      p10MesesAlta: data.p10MesesAlta.present
          ? data.p10MesesAlta.value
          : this.p10MesesAlta,
      p11Policultivo: data.p11Policultivo.present
          ? data.p11Policultivo.value
          : this.p11Policultivo,
      p11Cobertura: data.p11Cobertura.present
          ? data.p11Cobertura.value
          : this.p11Cobertura,
      p11Plagas: data.p11Plagas.present ? data.p11Plagas.value : this.p11Plagas,
      p11Agua: data.p11Agua.present ? data.p11Agua.value : this.p11Agua,
      p11Semillas:
          data.p11Semillas.present ? data.p11Semillas.value : this.p11Semillas,
      p11Barreras:
          data.p11Barreras.present ? data.p11Barreras.value : this.p11Barreras,
      p11Reduccion: data.p11Reduccion.present
          ? data.p11Reduccion.value
          : this.p11Reduccion,
      p11Residuos:
          data.p11Residuos.present ? data.p11Residuos.value : this.p11Residuos,
      p12Destino:
          data.p12Destino.present ? data.p12Destino.value : this.p12Destino,
      p12DestinoOtro: data.p12DestinoOtro.present
          ? data.p12DestinoOtro.value
          : this.p12DestinoOtro,
      p12Impedimentos: data.p12Impedimentos.present
          ? data.p12Impedimentos.value
          : this.p12Impedimentos,
      p12ImpedimentosOtro: data.p12ImpedimentosOtro.present
          ? data.p12ImpedimentosOtro.value
          : this.p12ImpedimentosOtro,
      p13PracticaExitosa: data.p13PracticaExitosa.present
          ? data.p13PracticaExitosa.value
          : this.p13PracticaExitosa,
      p14Necesidades: data.p14Necesidades.present
          ? data.p14Necesidades.value
          : this.p14Necesidades,
      p14AccesoEstable: data.p14AccesoEstable.present
          ? data.p14AccesoEstable.value
          : this.p14AccesoEstable,
      p14PocaDependencia: data.p14PocaDependencia.present
          ? data.p14PocaDependencia.value
          : this.p14PocaDependencia,
      p14Tradiciones: data.p14Tradiciones.present
          ? data.p14Tradiciones.value
          : this.p14Tradiciones,
      p14DietaFamiliar: data.p14DietaFamiliar.present
          ? data.p14DietaFamiliar.value
          : this.p14DietaFamiliar,
      p15MesesDificiles: data.p15MesesDificiles.present
          ? data.p15MesesDificiles.value
          : this.p15MesesDificiles,
      p16TiempoTransporte: data.p16TiempoTransporte.present
          ? data.p16TiempoTransporte.value
          : this.p16TiempoTransporte,
      p17GastoTransporte: data.p17GastoTransporte.present
          ? data.p17GastoTransporte.value
          : this.p17GastoTransporte,
      p18FrecuenciaViajes: data.p18FrecuenciaViajes.present
          ? data.p18FrecuenciaViajes.value
          : this.p18FrecuenciaViajes,
      p19Mermas: data.p19Mermas.present ? data.p19Mermas.value : this.p19Mermas,
      p19Conservacion: data.p19Conservacion.present
          ? data.p19Conservacion.value
          : this.p19Conservacion,
      p19ConservacionCuales: data.p19ConservacionCuales.present
          ? data.p19ConservacionCuales.value
          : this.p19ConservacionCuales,
      p20MomentoPago: data.p20MomentoPago.present
          ? data.p20MomentoPago.value
          : this.p20MomentoPago,
      p21LimitacionRequisitos: data.p21LimitacionRequisitos.present
          ? data.p21LimitacionRequisitos.value
          : this.p21LimitacionRequisitos,
      p22RequisitosDificiles: data.p22RequisitosDificiles.present
          ? data.p22RequisitosDificiles.value
          : this.p22RequisitosDificiles,
      p22RequisitosDificilesOtro: data.p22RequisitosDificilesOtro.present
          ? data.p22RequisitosDificilesOtro.value
          : this.p22RequisitosDificilesOtro,
      p23ProbSequia: data.p23ProbSequia.present
          ? data.p23ProbSequia.value
          : this.p23ProbSequia,
      p23ProbHuracan: data.p23ProbHuracan.present
          ? data.p23ProbHuracan.value
          : this.p23ProbHuracan,
      p23ProbPlagas: data.p23ProbPlagas.present
          ? data.p23ProbPlagas.value
          : this.p23ProbPlagas,
      p23ProbFaltaAgua: data.p23ProbFaltaAgua.present
          ? data.p23ProbFaltaAgua.value
          : this.p23ProbFaltaAgua,
      p23ProbPrecios: data.p23ProbPrecios.present
          ? data.p23ProbPrecios.value
          : this.p23ProbPrecios,
      p23ProbPagoTardio: data.p23ProbPagoTardio.present
          ? data.p23ProbPagoTardio.value
          : this.p23ProbPagoTardio,
      p23ProbCaminos: data.p23ProbCaminos.present
          ? data.p23ProbCaminos.value
          : this.p23ProbCaminos,
      p23ProbFaltaInsumos: data.p23ProbFaltaInsumos.present
          ? data.p23ProbFaltaInsumos.value
          : this.p23ProbFaltaInsumos,
      p23ProbConflictos: data.p23ProbConflictos.present
          ? data.p23ProbConflictos.value
          : this.p23ProbConflictos,
      p23ProbInocuidad: data.p23ProbInocuidad.present
          ? data.p23ProbInocuidad.value
          : this.p23ProbInocuidad,
      p24ImpSequia: data.p24ImpSequia.present
          ? data.p24ImpSequia.value
          : this.p24ImpSequia,
      p24ImpHuracan: data.p24ImpHuracan.present
          ? data.p24ImpHuracan.value
          : this.p24ImpHuracan,
      p24ImpPlagas: data.p24ImpPlagas.present
          ? data.p24ImpPlagas.value
          : this.p24ImpPlagas,
      p24ImpFaltaAgua: data.p24ImpFaltaAgua.present
          ? data.p24ImpFaltaAgua.value
          : this.p24ImpFaltaAgua,
      p24ImpPrecios: data.p24ImpPrecios.present
          ? data.p24ImpPrecios.value
          : this.p24ImpPrecios,
      p24ImpPagoTardio: data.p24ImpPagoTardio.present
          ? data.p24ImpPagoTardio.value
          : this.p24ImpPagoTardio,
      p24ImpCaminos: data.p24ImpCaminos.present
          ? data.p24ImpCaminos.value
          : this.p24ImpCaminos,
      p24ImpFaltaInsumos: data.p24ImpFaltaInsumos.present
          ? data.p24ImpFaltaInsumos.value
          : this.p24ImpFaltaInsumos,
      p24ImpConflictos: data.p24ImpConflictos.present
          ? data.p24ImpConflictos.value
          : this.p24ImpConflictos,
      p24ImpInocuidad: data.p24ImpInocuidad.present
          ? data.p24ImpInocuidad.value
          : this.p24ImpInocuidad,
      p25OtroRiesgo: data.p25OtroRiesgo.present
          ? data.p25OtroRiesgo.value
          : this.p25OtroRiesgo,
      p26Rol: data.p26Rol.present ? data.p26Rol.value : this.p26Rol,
      p26RolOtro:
          data.p26RolOtro.present ? data.p26RolOtro.value : this.p26RolOtro,
      p27Acopio: data.p27Acopio.present ? data.p27Acopio.value : this.p27Acopio,
      p27Calendario: data.p27Calendario.present
          ? data.p27Calendario.value
          : this.p27Calendario,
      p27Transporte: data.p27Transporte.present
          ? data.p27Transporte.value
          : this.p27Transporte,
      p27Circuitos: data.p27Circuitos.present
          ? data.p27Circuitos.value
          : this.p27Circuitos,
      p27Compras:
          data.p27Compras.present ? data.p27Compras.value : this.p27Compras,
      p27Confianza: data.p27Confianza.present
          ? data.p27Confianza.value
          : this.p27Confianza,
      p28FactoresConfianza: data.p28FactoresConfianza.present
          ? data.p28FactoresConfianza.value
          : this.p28FactoresConfianza,
      p29LlevaRegistro: data.p29LlevaRegistro.present
          ? data.p29LlevaRegistro.value
          : this.p29LlevaRegistro,
      p30DondeRegistra: data.p30DondeRegistra.present
          ? data.p30DondeRegistra.value
          : this.p30DondeRegistra,
      p30DondeRegistraOtro: data.p30DondeRegistraOtro.present
          ? data.p30DondeRegistraOtro.value
          : this.p30DondeRegistraOtro,
      p31FrecuenciaRegistro: data.p31FrecuenciaRegistro.present
          ? data.p31FrecuenciaRegistro.value
          : this.p31FrecuenciaRegistro,
      p32DisposicionRegistro: data.p32DisposicionRegistro.present
          ? data.p32DisposicionRegistro.value
          : this.p32DisposicionRegistro,
      p33ApoyoRegistro: data.p33ApoyoRegistro.present
          ? data.p33ApoyoRegistro.value
          : this.p33ApoyoRegistro,
      p33ApoyoRegistroOtro: data.p33ApoyoRegistroOtro.present
          ? data.p33ApoyoRegistroOtro.value
          : this.p33ApoyoRegistroOtro,
      p34TemasCapacitacion: data.p34TemasCapacitacion.present
          ? data.p34TemasCapacitacion.value
          : this.p34TemasCapacitacion,
      p34TemasCapacitacionOtro: data.p34TemasCapacitacionOtro.present
          ? data.p34TemasCapacitacionOtro.value
          : this.p34TemasCapacitacionOtro,
      p35ProblemaUrgente: data.p35ProblemaUrgente.present
          ? data.p35ProblemaUrgente.value
          : this.p35ProblemaUrgente,
      p35ProblemaUrgenteOtro: data.p35ProblemaUrgenteOtro.present
          ? data.p35ProblemaUrgenteOtro.value
          : this.p35ProblemaUrgenteOtro,
      p36FormatoAprendizaje: data.p36FormatoAprendizaje.present
          ? data.p36FormatoAprendizaje.value
          : this.p36FormatoAprendizaje,
      p36FormatoAprendizajeOtro: data.p36FormatoAprendizajeOtro.present
          ? data.p36FormatoAprendizajeOtro.value
          : this.p36FormatoAprendizajeOtro,
      p37TiempoCapacitacion: data.p37TiempoCapacitacion.present
          ? data.p37TiempoCapacitacion.value
          : this.p37TiempoCapacitacion,
      p38DificultadAsistencia: data.p38DificultadAsistencia.present
          ? data.p38DificultadAsistencia.value
          : this.p38DificultadAsistencia,
      p38DificultadAsistenciaOtro: data.p38DificultadAsistenciaOtro.present
          ? data.p38DificultadAsistenciaOtro.value
          : this.p38DificultadAsistenciaOtro,
      p39ActividadesRed: data.p39ActividadesRed.present
          ? data.p39ActividadesRed.value
          : this.p39ActividadesRed,
      p40TallerDiseno: data.p40TallerDiseno.present
          ? data.p40TallerDiseno.value
          : this.p40TallerDiseno,
      latitud: data.latitud.present ? data.latitud.value : this.latitud,
      longitud: data.longitud.present ? data.longitud.value : this.longitud,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RespuestasDiagnosticoData(')
          ..write('idLocal: $idLocal, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('fechaCapturaLocal: $fechaCapturaLocal, ')
          ..write('formulario: $formulario, ')
          ..write('p1ComunidadVive: $p1ComunidadVive, ')
          ..write('p1BComunidadTrabaja: $p1BComunidadTrabaja, ')
          ..write('p2Consentimiento: $p2Consentimiento, ')
          ..write('p3Municipio: $p3Municipio, ')
          ..write('p4Nombre: $p4Nombre, ')
          ..write('p5Telefono: $p5Telefono, ')
          ..write('p6Taller: $p6Taller, ')
          ..write('p7CultivoPrincipal: $p7CultivoPrincipal, ')
          ..write('p7CultivoPrincipalOtro: $p7CultivoPrincipalOtro, ')
          ..write('p8FormaTrabajo: $p8FormaTrabajo, ')
          ..write('p9Distribucion: $p9Distribucion, ')
          ..write('p9DistribucionOtro: $p9DistribucionOtro, ')
          ..write('p10MesesAlta: $p10MesesAlta, ')
          ..write('p11Policultivo: $p11Policultivo, ')
          ..write('p11Cobertura: $p11Cobertura, ')
          ..write('p11Plagas: $p11Plagas, ')
          ..write('p11Agua: $p11Agua, ')
          ..write('p11Semillas: $p11Semillas, ')
          ..write('p11Barreras: $p11Barreras, ')
          ..write('p11Reduccion: $p11Reduccion, ')
          ..write('p11Residuos: $p11Residuos, ')
          ..write('p12Destino: $p12Destino, ')
          ..write('p12DestinoOtro: $p12DestinoOtro, ')
          ..write('p12Impedimentos: $p12Impedimentos, ')
          ..write('p12ImpedimentosOtro: $p12ImpedimentosOtro, ')
          ..write('p13PracticaExitosa: $p13PracticaExitosa, ')
          ..write('p14Necesidades: $p14Necesidades, ')
          ..write('p14AccesoEstable: $p14AccesoEstable, ')
          ..write('p14PocaDependencia: $p14PocaDependencia, ')
          ..write('p14Tradiciones: $p14Tradiciones, ')
          ..write('p14DietaFamiliar: $p14DietaFamiliar, ')
          ..write('p15MesesDificiles: $p15MesesDificiles, ')
          ..write('p16TiempoTransporte: $p16TiempoTransporte, ')
          ..write('p17GastoTransporte: $p17GastoTransporte, ')
          ..write('p18FrecuenciaViajes: $p18FrecuenciaViajes, ')
          ..write('p19Mermas: $p19Mermas, ')
          ..write('p19Conservacion: $p19Conservacion, ')
          ..write('p19ConservacionCuales: $p19ConservacionCuales, ')
          ..write('p20MomentoPago: $p20MomentoPago, ')
          ..write('p21LimitacionRequisitos: $p21LimitacionRequisitos, ')
          ..write('p22RequisitosDificiles: $p22RequisitosDificiles, ')
          ..write('p22RequisitosDificilesOtro: $p22RequisitosDificilesOtro, ')
          ..write('p23ProbSequia: $p23ProbSequia, ')
          ..write('p23ProbHuracan: $p23ProbHuracan, ')
          ..write('p23ProbPlagas: $p23ProbPlagas, ')
          ..write('p23ProbFaltaAgua: $p23ProbFaltaAgua, ')
          ..write('p23ProbPrecios: $p23ProbPrecios, ')
          ..write('p23ProbPagoTardio: $p23ProbPagoTardio, ')
          ..write('p23ProbCaminos: $p23ProbCaminos, ')
          ..write('p23ProbFaltaInsumos: $p23ProbFaltaInsumos, ')
          ..write('p23ProbConflictos: $p23ProbConflictos, ')
          ..write('p23ProbInocuidad: $p23ProbInocuidad, ')
          ..write('p24ImpSequia: $p24ImpSequia, ')
          ..write('p24ImpHuracan: $p24ImpHuracan, ')
          ..write('p24ImpPlagas: $p24ImpPlagas, ')
          ..write('p24ImpFaltaAgua: $p24ImpFaltaAgua, ')
          ..write('p24ImpPrecios: $p24ImpPrecios, ')
          ..write('p24ImpPagoTardio: $p24ImpPagoTardio, ')
          ..write('p24ImpCaminos: $p24ImpCaminos, ')
          ..write('p24ImpFaltaInsumos: $p24ImpFaltaInsumos, ')
          ..write('p24ImpConflictos: $p24ImpConflictos, ')
          ..write('p24ImpInocuidad: $p24ImpInocuidad, ')
          ..write('p25OtroRiesgo: $p25OtroRiesgo, ')
          ..write('p26Rol: $p26Rol, ')
          ..write('p26RolOtro: $p26RolOtro, ')
          ..write('p27Acopio: $p27Acopio, ')
          ..write('p27Calendario: $p27Calendario, ')
          ..write('p27Transporte: $p27Transporte, ')
          ..write('p27Circuitos: $p27Circuitos, ')
          ..write('p27Compras: $p27Compras, ')
          ..write('p27Confianza: $p27Confianza, ')
          ..write('p28FactoresConfianza: $p28FactoresConfianza, ')
          ..write('p29LlevaRegistro: $p29LlevaRegistro, ')
          ..write('p30DondeRegistra: $p30DondeRegistra, ')
          ..write('p30DondeRegistraOtro: $p30DondeRegistraOtro, ')
          ..write('p31FrecuenciaRegistro: $p31FrecuenciaRegistro, ')
          ..write('p32DisposicionRegistro: $p32DisposicionRegistro, ')
          ..write('p33ApoyoRegistro: $p33ApoyoRegistro, ')
          ..write('p33ApoyoRegistroOtro: $p33ApoyoRegistroOtro, ')
          ..write('p34TemasCapacitacion: $p34TemasCapacitacion, ')
          ..write('p34TemasCapacitacionOtro: $p34TemasCapacitacionOtro, ')
          ..write('p35ProblemaUrgente: $p35ProblemaUrgente, ')
          ..write('p35ProblemaUrgenteOtro: $p35ProblemaUrgenteOtro, ')
          ..write('p36FormatoAprendizaje: $p36FormatoAprendizaje, ')
          ..write('p36FormatoAprendizajeOtro: $p36FormatoAprendizajeOtro, ')
          ..write('p37TiempoCapacitacion: $p37TiempoCapacitacion, ')
          ..write('p38DificultadAsistencia: $p38DificultadAsistencia, ')
          ..write('p38DificultadAsistenciaOtro: $p38DificultadAsistenciaOtro, ')
          ..write('p39ActividadesRed: $p39ActividadesRed, ')
          ..write('p40TallerDiseno: $p40TallerDiseno, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        idLocal,
        syncStatus,
        fechaCapturaLocal,
        formulario,
        p1ComunidadVive,
        p1BComunidadTrabaja,
        p2Consentimiento,
        p3Municipio,
        p4Nombre,
        p5Telefono,
        p6Taller,
        p7CultivoPrincipal,
        p7CultivoPrincipalOtro,
        p8FormaTrabajo,
        p9Distribucion,
        p9DistribucionOtro,
        p10MesesAlta,
        p11Policultivo,
        p11Cobertura,
        p11Plagas,
        p11Agua,
        p11Semillas,
        p11Barreras,
        p11Reduccion,
        p11Residuos,
        p12Destino,
        p12DestinoOtro,
        p12Impedimentos,
        p12ImpedimentosOtro,
        p13PracticaExitosa,
        p14Necesidades,
        p14AccesoEstable,
        p14PocaDependencia,
        p14Tradiciones,
        p14DietaFamiliar,
        p15MesesDificiles,
        p16TiempoTransporte,
        p17GastoTransporte,
        p18FrecuenciaViajes,
        p19Mermas,
        p19Conservacion,
        p19ConservacionCuales,
        p20MomentoPago,
        p21LimitacionRequisitos,
        p22RequisitosDificiles,
        p22RequisitosDificilesOtro,
        p23ProbSequia,
        p23ProbHuracan,
        p23ProbPlagas,
        p23ProbFaltaAgua,
        p23ProbPrecios,
        p23ProbPagoTardio,
        p23ProbCaminos,
        p23ProbFaltaInsumos,
        p23ProbConflictos,
        p23ProbInocuidad,
        p24ImpSequia,
        p24ImpHuracan,
        p24ImpPlagas,
        p24ImpFaltaAgua,
        p24ImpPrecios,
        p24ImpPagoTardio,
        p24ImpCaminos,
        p24ImpFaltaInsumos,
        p24ImpConflictos,
        p24ImpInocuidad,
        p25OtroRiesgo,
        p26Rol,
        p26RolOtro,
        p27Acopio,
        p27Calendario,
        p27Transporte,
        p27Circuitos,
        p27Compras,
        p27Confianza,
        p28FactoresConfianza,
        p29LlevaRegistro,
        p30DondeRegistra,
        p30DondeRegistraOtro,
        p31FrecuenciaRegistro,
        p32DisposicionRegistro,
        p33ApoyoRegistro,
        p33ApoyoRegistroOtro,
        p34TemasCapacitacion,
        p34TemasCapacitacionOtro,
        p35ProblemaUrgente,
        p35ProblemaUrgenteOtro,
        p36FormatoAprendizaje,
        p36FormatoAprendizajeOtro,
        p37TiempoCapacitacion,
        p38DificultadAsistencia,
        p38DificultadAsistenciaOtro,
        p39ActividadesRed,
        p40TallerDiseno,
        latitud,
        longitud
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RespuestasDiagnosticoData &&
          other.idLocal == this.idLocal &&
          other.syncStatus == this.syncStatus &&
          other.fechaCapturaLocal == this.fechaCapturaLocal &&
          other.formulario == this.formulario &&
          other.p1ComunidadVive == this.p1ComunidadVive &&
          other.p1BComunidadTrabaja == this.p1BComunidadTrabaja &&
          other.p2Consentimiento == this.p2Consentimiento &&
          other.p3Municipio == this.p3Municipio &&
          other.p4Nombre == this.p4Nombre &&
          other.p5Telefono == this.p5Telefono &&
          other.p6Taller == this.p6Taller &&
          other.p7CultivoPrincipal == this.p7CultivoPrincipal &&
          other.p7CultivoPrincipalOtro == this.p7CultivoPrincipalOtro &&
          other.p8FormaTrabajo == this.p8FormaTrabajo &&
          other.p9Distribucion == this.p9Distribucion &&
          other.p9DistribucionOtro == this.p9DistribucionOtro &&
          other.p10MesesAlta == this.p10MesesAlta &&
          other.p11Policultivo == this.p11Policultivo &&
          other.p11Cobertura == this.p11Cobertura &&
          other.p11Plagas == this.p11Plagas &&
          other.p11Agua == this.p11Agua &&
          other.p11Semillas == this.p11Semillas &&
          other.p11Barreras == this.p11Barreras &&
          other.p11Reduccion == this.p11Reduccion &&
          other.p11Residuos == this.p11Residuos &&
          other.p12Destino == this.p12Destino &&
          other.p12DestinoOtro == this.p12DestinoOtro &&
          other.p12Impedimentos == this.p12Impedimentos &&
          other.p12ImpedimentosOtro == this.p12ImpedimentosOtro &&
          other.p13PracticaExitosa == this.p13PracticaExitosa &&
          other.p14Necesidades == this.p14Necesidades &&
          other.p14AccesoEstable == this.p14AccesoEstable &&
          other.p14PocaDependencia == this.p14PocaDependencia &&
          other.p14Tradiciones == this.p14Tradiciones &&
          other.p14DietaFamiliar == this.p14DietaFamiliar &&
          other.p15MesesDificiles == this.p15MesesDificiles &&
          other.p16TiempoTransporte == this.p16TiempoTransporte &&
          other.p17GastoTransporte == this.p17GastoTransporte &&
          other.p18FrecuenciaViajes == this.p18FrecuenciaViajes &&
          other.p19Mermas == this.p19Mermas &&
          other.p19Conservacion == this.p19Conservacion &&
          other.p19ConservacionCuales == this.p19ConservacionCuales &&
          other.p20MomentoPago == this.p20MomentoPago &&
          other.p21LimitacionRequisitos == this.p21LimitacionRequisitos &&
          other.p22RequisitosDificiles == this.p22RequisitosDificiles &&
          other.p22RequisitosDificilesOtro == this.p22RequisitosDificilesOtro &&
          other.p23ProbSequia == this.p23ProbSequia &&
          other.p23ProbHuracan == this.p23ProbHuracan &&
          other.p23ProbPlagas == this.p23ProbPlagas &&
          other.p23ProbFaltaAgua == this.p23ProbFaltaAgua &&
          other.p23ProbPrecios == this.p23ProbPrecios &&
          other.p23ProbPagoTardio == this.p23ProbPagoTardio &&
          other.p23ProbCaminos == this.p23ProbCaminos &&
          other.p23ProbFaltaInsumos == this.p23ProbFaltaInsumos &&
          other.p23ProbConflictos == this.p23ProbConflictos &&
          other.p23ProbInocuidad == this.p23ProbInocuidad &&
          other.p24ImpSequia == this.p24ImpSequia &&
          other.p24ImpHuracan == this.p24ImpHuracan &&
          other.p24ImpPlagas == this.p24ImpPlagas &&
          other.p24ImpFaltaAgua == this.p24ImpFaltaAgua &&
          other.p24ImpPrecios == this.p24ImpPrecios &&
          other.p24ImpPagoTardio == this.p24ImpPagoTardio &&
          other.p24ImpCaminos == this.p24ImpCaminos &&
          other.p24ImpFaltaInsumos == this.p24ImpFaltaInsumos &&
          other.p24ImpConflictos == this.p24ImpConflictos &&
          other.p24ImpInocuidad == this.p24ImpInocuidad &&
          other.p25OtroRiesgo == this.p25OtroRiesgo &&
          other.p26Rol == this.p26Rol &&
          other.p26RolOtro == this.p26RolOtro &&
          other.p27Acopio == this.p27Acopio &&
          other.p27Calendario == this.p27Calendario &&
          other.p27Transporte == this.p27Transporte &&
          other.p27Circuitos == this.p27Circuitos &&
          other.p27Compras == this.p27Compras &&
          other.p27Confianza == this.p27Confianza &&
          other.p28FactoresConfianza == this.p28FactoresConfianza &&
          other.p29LlevaRegistro == this.p29LlevaRegistro &&
          other.p30DondeRegistra == this.p30DondeRegistra &&
          other.p30DondeRegistraOtro == this.p30DondeRegistraOtro &&
          other.p31FrecuenciaRegistro == this.p31FrecuenciaRegistro &&
          other.p32DisposicionRegistro == this.p32DisposicionRegistro &&
          other.p33ApoyoRegistro == this.p33ApoyoRegistro &&
          other.p33ApoyoRegistroOtro == this.p33ApoyoRegistroOtro &&
          other.p34TemasCapacitacion == this.p34TemasCapacitacion &&
          other.p34TemasCapacitacionOtro == this.p34TemasCapacitacionOtro &&
          other.p35ProblemaUrgente == this.p35ProblemaUrgente &&
          other.p35ProblemaUrgenteOtro == this.p35ProblemaUrgenteOtro &&
          other.p36FormatoAprendizaje == this.p36FormatoAprendizaje &&
          other.p36FormatoAprendizajeOtro == this.p36FormatoAprendizajeOtro &&
          other.p37TiempoCapacitacion == this.p37TiempoCapacitacion &&
          other.p38DificultadAsistencia == this.p38DificultadAsistencia &&
          other.p38DificultadAsistenciaOtro ==
              this.p38DificultadAsistenciaOtro &&
          other.p39ActividadesRed == this.p39ActividadesRed &&
          other.p40TallerDiseno == this.p40TallerDiseno &&
          other.latitud == this.latitud &&
          other.longitud == this.longitud);
}

class RespuestasDiagnosticoCompanion
    extends UpdateCompanion<RespuestasDiagnosticoData> {
  final Value<String> idLocal;
  final Value<String> syncStatus;
  final Value<DateTime> fechaCapturaLocal;
  final Value<String?> formulario;
  final Value<String?> p1ComunidadVive;
  final Value<String?> p1BComunidadTrabaja;
  final Value<String?> p2Consentimiento;
  final Value<String?> p3Municipio;
  final Value<String?> p4Nombre;
  final Value<String?> p5Telefono;
  final Value<String?> p6Taller;
  final Value<String?> p7CultivoPrincipal;
  final Value<String?> p7CultivoPrincipalOtro;
  final Value<String?> p8FormaTrabajo;
  final Value<String?> p9Distribucion;
  final Value<String?> p9DistribucionOtro;
  final Value<String?> p10MesesAlta;
  final Value<String?> p11Policultivo;
  final Value<String?> p11Cobertura;
  final Value<String?> p11Plagas;
  final Value<String?> p11Agua;
  final Value<String?> p11Semillas;
  final Value<String?> p11Barreras;
  final Value<String?> p11Reduccion;
  final Value<String?> p11Residuos;
  final Value<String?> p12Destino;
  final Value<String?> p12DestinoOtro;
  final Value<String?> p12Impedimentos;
  final Value<String?> p12ImpedimentosOtro;
  final Value<String?> p13PracticaExitosa;
  final Value<String?> p14Necesidades;
  final Value<String?> p14AccesoEstable;
  final Value<String?> p14PocaDependencia;
  final Value<String?> p14Tradiciones;
  final Value<String?> p14DietaFamiliar;
  final Value<String?> p15MesesDificiles;
  final Value<String?> p16TiempoTransporte;
  final Value<String?> p17GastoTransporte;
  final Value<String?> p18FrecuenciaViajes;
  final Value<String?> p19Mermas;
  final Value<String?> p19Conservacion;
  final Value<String?> p19ConservacionCuales;
  final Value<String?> p20MomentoPago;
  final Value<String?> p21LimitacionRequisitos;
  final Value<String?> p22RequisitosDificiles;
  final Value<String?> p22RequisitosDificilesOtro;
  final Value<String?> p23ProbSequia;
  final Value<String?> p23ProbHuracan;
  final Value<String?> p23ProbPlagas;
  final Value<String?> p23ProbFaltaAgua;
  final Value<String?> p23ProbPrecios;
  final Value<String?> p23ProbPagoTardio;
  final Value<String?> p23ProbCaminos;
  final Value<String?> p23ProbFaltaInsumos;
  final Value<String?> p23ProbConflictos;
  final Value<String?> p23ProbInocuidad;
  final Value<String?> p24ImpSequia;
  final Value<String?> p24ImpHuracan;
  final Value<String?> p24ImpPlagas;
  final Value<String?> p24ImpFaltaAgua;
  final Value<String?> p24ImpPrecios;
  final Value<String?> p24ImpPagoTardio;
  final Value<String?> p24ImpCaminos;
  final Value<String?> p24ImpFaltaInsumos;
  final Value<String?> p24ImpConflictos;
  final Value<String?> p24ImpInocuidad;
  final Value<String?> p25OtroRiesgo;
  final Value<String?> p26Rol;
  final Value<String?> p26RolOtro;
  final Value<String?> p27Acopio;
  final Value<String?> p27Calendario;
  final Value<String?> p27Transporte;
  final Value<String?> p27Circuitos;
  final Value<String?> p27Compras;
  final Value<String?> p27Confianza;
  final Value<String?> p28FactoresConfianza;
  final Value<String?> p29LlevaRegistro;
  final Value<String?> p30DondeRegistra;
  final Value<String?> p30DondeRegistraOtro;
  final Value<String?> p31FrecuenciaRegistro;
  final Value<String?> p32DisposicionRegistro;
  final Value<String?> p33ApoyoRegistro;
  final Value<String?> p33ApoyoRegistroOtro;
  final Value<String?> p34TemasCapacitacion;
  final Value<String?> p34TemasCapacitacionOtro;
  final Value<String?> p35ProblemaUrgente;
  final Value<String?> p35ProblemaUrgenteOtro;
  final Value<String?> p36FormatoAprendizaje;
  final Value<String?> p36FormatoAprendizajeOtro;
  final Value<String?> p37TiempoCapacitacion;
  final Value<String?> p38DificultadAsistencia;
  final Value<String?> p38DificultadAsistenciaOtro;
  final Value<String?> p39ActividadesRed;
  final Value<String?> p40TallerDiseno;
  final Value<double?> latitud;
  final Value<double?> longitud;
  final Value<int> rowid;
  const RespuestasDiagnosticoCompanion({
    this.idLocal = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.fechaCapturaLocal = const Value.absent(),
    this.formulario = const Value.absent(),
    this.p1ComunidadVive = const Value.absent(),
    this.p1BComunidadTrabaja = const Value.absent(),
    this.p2Consentimiento = const Value.absent(),
    this.p3Municipio = const Value.absent(),
    this.p4Nombre = const Value.absent(),
    this.p5Telefono = const Value.absent(),
    this.p6Taller = const Value.absent(),
    this.p7CultivoPrincipal = const Value.absent(),
    this.p7CultivoPrincipalOtro = const Value.absent(),
    this.p8FormaTrabajo = const Value.absent(),
    this.p9Distribucion = const Value.absent(),
    this.p9DistribucionOtro = const Value.absent(),
    this.p10MesesAlta = const Value.absent(),
    this.p11Policultivo = const Value.absent(),
    this.p11Cobertura = const Value.absent(),
    this.p11Plagas = const Value.absent(),
    this.p11Agua = const Value.absent(),
    this.p11Semillas = const Value.absent(),
    this.p11Barreras = const Value.absent(),
    this.p11Reduccion = const Value.absent(),
    this.p11Residuos = const Value.absent(),
    this.p12Destino = const Value.absent(),
    this.p12DestinoOtro = const Value.absent(),
    this.p12Impedimentos = const Value.absent(),
    this.p12ImpedimentosOtro = const Value.absent(),
    this.p13PracticaExitosa = const Value.absent(),
    this.p14Necesidades = const Value.absent(),
    this.p14AccesoEstable = const Value.absent(),
    this.p14PocaDependencia = const Value.absent(),
    this.p14Tradiciones = const Value.absent(),
    this.p14DietaFamiliar = const Value.absent(),
    this.p15MesesDificiles = const Value.absent(),
    this.p16TiempoTransporte = const Value.absent(),
    this.p17GastoTransporte = const Value.absent(),
    this.p18FrecuenciaViajes = const Value.absent(),
    this.p19Mermas = const Value.absent(),
    this.p19Conservacion = const Value.absent(),
    this.p19ConservacionCuales = const Value.absent(),
    this.p20MomentoPago = const Value.absent(),
    this.p21LimitacionRequisitos = const Value.absent(),
    this.p22RequisitosDificiles = const Value.absent(),
    this.p22RequisitosDificilesOtro = const Value.absent(),
    this.p23ProbSequia = const Value.absent(),
    this.p23ProbHuracan = const Value.absent(),
    this.p23ProbPlagas = const Value.absent(),
    this.p23ProbFaltaAgua = const Value.absent(),
    this.p23ProbPrecios = const Value.absent(),
    this.p23ProbPagoTardio = const Value.absent(),
    this.p23ProbCaminos = const Value.absent(),
    this.p23ProbFaltaInsumos = const Value.absent(),
    this.p23ProbConflictos = const Value.absent(),
    this.p23ProbInocuidad = const Value.absent(),
    this.p24ImpSequia = const Value.absent(),
    this.p24ImpHuracan = const Value.absent(),
    this.p24ImpPlagas = const Value.absent(),
    this.p24ImpFaltaAgua = const Value.absent(),
    this.p24ImpPrecios = const Value.absent(),
    this.p24ImpPagoTardio = const Value.absent(),
    this.p24ImpCaminos = const Value.absent(),
    this.p24ImpFaltaInsumos = const Value.absent(),
    this.p24ImpConflictos = const Value.absent(),
    this.p24ImpInocuidad = const Value.absent(),
    this.p25OtroRiesgo = const Value.absent(),
    this.p26Rol = const Value.absent(),
    this.p26RolOtro = const Value.absent(),
    this.p27Acopio = const Value.absent(),
    this.p27Calendario = const Value.absent(),
    this.p27Transporte = const Value.absent(),
    this.p27Circuitos = const Value.absent(),
    this.p27Compras = const Value.absent(),
    this.p27Confianza = const Value.absent(),
    this.p28FactoresConfianza = const Value.absent(),
    this.p29LlevaRegistro = const Value.absent(),
    this.p30DondeRegistra = const Value.absent(),
    this.p30DondeRegistraOtro = const Value.absent(),
    this.p31FrecuenciaRegistro = const Value.absent(),
    this.p32DisposicionRegistro = const Value.absent(),
    this.p33ApoyoRegistro = const Value.absent(),
    this.p33ApoyoRegistroOtro = const Value.absent(),
    this.p34TemasCapacitacion = const Value.absent(),
    this.p34TemasCapacitacionOtro = const Value.absent(),
    this.p35ProblemaUrgente = const Value.absent(),
    this.p35ProblemaUrgenteOtro = const Value.absent(),
    this.p36FormatoAprendizaje = const Value.absent(),
    this.p36FormatoAprendizajeOtro = const Value.absent(),
    this.p37TiempoCapacitacion = const Value.absent(),
    this.p38DificultadAsistencia = const Value.absent(),
    this.p38DificultadAsistenciaOtro = const Value.absent(),
    this.p39ActividadesRed = const Value.absent(),
    this.p40TallerDiseno = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RespuestasDiagnosticoCompanion.insert({
    required String idLocal,
    this.syncStatus = const Value.absent(),
    required DateTime fechaCapturaLocal,
    this.formulario = const Value.absent(),
    this.p1ComunidadVive = const Value.absent(),
    this.p1BComunidadTrabaja = const Value.absent(),
    this.p2Consentimiento = const Value.absent(),
    this.p3Municipio = const Value.absent(),
    this.p4Nombre = const Value.absent(),
    this.p5Telefono = const Value.absent(),
    this.p6Taller = const Value.absent(),
    this.p7CultivoPrincipal = const Value.absent(),
    this.p7CultivoPrincipalOtro = const Value.absent(),
    this.p8FormaTrabajo = const Value.absent(),
    this.p9Distribucion = const Value.absent(),
    this.p9DistribucionOtro = const Value.absent(),
    this.p10MesesAlta = const Value.absent(),
    this.p11Policultivo = const Value.absent(),
    this.p11Cobertura = const Value.absent(),
    this.p11Plagas = const Value.absent(),
    this.p11Agua = const Value.absent(),
    this.p11Semillas = const Value.absent(),
    this.p11Barreras = const Value.absent(),
    this.p11Reduccion = const Value.absent(),
    this.p11Residuos = const Value.absent(),
    this.p12Destino = const Value.absent(),
    this.p12DestinoOtro = const Value.absent(),
    this.p12Impedimentos = const Value.absent(),
    this.p12ImpedimentosOtro = const Value.absent(),
    this.p13PracticaExitosa = const Value.absent(),
    this.p14Necesidades = const Value.absent(),
    this.p14AccesoEstable = const Value.absent(),
    this.p14PocaDependencia = const Value.absent(),
    this.p14Tradiciones = const Value.absent(),
    this.p14DietaFamiliar = const Value.absent(),
    this.p15MesesDificiles = const Value.absent(),
    this.p16TiempoTransporte = const Value.absent(),
    this.p17GastoTransporte = const Value.absent(),
    this.p18FrecuenciaViajes = const Value.absent(),
    this.p19Mermas = const Value.absent(),
    this.p19Conservacion = const Value.absent(),
    this.p19ConservacionCuales = const Value.absent(),
    this.p20MomentoPago = const Value.absent(),
    this.p21LimitacionRequisitos = const Value.absent(),
    this.p22RequisitosDificiles = const Value.absent(),
    this.p22RequisitosDificilesOtro = const Value.absent(),
    this.p23ProbSequia = const Value.absent(),
    this.p23ProbHuracan = const Value.absent(),
    this.p23ProbPlagas = const Value.absent(),
    this.p23ProbFaltaAgua = const Value.absent(),
    this.p23ProbPrecios = const Value.absent(),
    this.p23ProbPagoTardio = const Value.absent(),
    this.p23ProbCaminos = const Value.absent(),
    this.p23ProbFaltaInsumos = const Value.absent(),
    this.p23ProbConflictos = const Value.absent(),
    this.p23ProbInocuidad = const Value.absent(),
    this.p24ImpSequia = const Value.absent(),
    this.p24ImpHuracan = const Value.absent(),
    this.p24ImpPlagas = const Value.absent(),
    this.p24ImpFaltaAgua = const Value.absent(),
    this.p24ImpPrecios = const Value.absent(),
    this.p24ImpPagoTardio = const Value.absent(),
    this.p24ImpCaminos = const Value.absent(),
    this.p24ImpFaltaInsumos = const Value.absent(),
    this.p24ImpConflictos = const Value.absent(),
    this.p24ImpInocuidad = const Value.absent(),
    this.p25OtroRiesgo = const Value.absent(),
    this.p26Rol = const Value.absent(),
    this.p26RolOtro = const Value.absent(),
    this.p27Acopio = const Value.absent(),
    this.p27Calendario = const Value.absent(),
    this.p27Transporte = const Value.absent(),
    this.p27Circuitos = const Value.absent(),
    this.p27Compras = const Value.absent(),
    this.p27Confianza = const Value.absent(),
    this.p28FactoresConfianza = const Value.absent(),
    this.p29LlevaRegistro = const Value.absent(),
    this.p30DondeRegistra = const Value.absent(),
    this.p30DondeRegistraOtro = const Value.absent(),
    this.p31FrecuenciaRegistro = const Value.absent(),
    this.p32DisposicionRegistro = const Value.absent(),
    this.p33ApoyoRegistro = const Value.absent(),
    this.p33ApoyoRegistroOtro = const Value.absent(),
    this.p34TemasCapacitacion = const Value.absent(),
    this.p34TemasCapacitacionOtro = const Value.absent(),
    this.p35ProblemaUrgente = const Value.absent(),
    this.p35ProblemaUrgenteOtro = const Value.absent(),
    this.p36FormatoAprendizaje = const Value.absent(),
    this.p36FormatoAprendizajeOtro = const Value.absent(),
    this.p37TiempoCapacitacion = const Value.absent(),
    this.p38DificultadAsistencia = const Value.absent(),
    this.p38DificultadAsistenciaOtro = const Value.absent(),
    this.p39ActividadesRed = const Value.absent(),
    this.p40TallerDiseno = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : idLocal = Value(idLocal),
        fechaCapturaLocal = Value(fechaCapturaLocal);
  static Insertable<RespuestasDiagnosticoData> custom({
    Expression<String>? idLocal,
    Expression<String>? syncStatus,
    Expression<DateTime>? fechaCapturaLocal,
    Expression<String>? formulario,
    Expression<String>? p1ComunidadVive,
    Expression<String>? p1BComunidadTrabaja,
    Expression<String>? p2Consentimiento,
    Expression<String>? p3Municipio,
    Expression<String>? p4Nombre,
    Expression<String>? p5Telefono,
    Expression<String>? p6Taller,
    Expression<String>? p7CultivoPrincipal,
    Expression<String>? p7CultivoPrincipalOtro,
    Expression<String>? p8FormaTrabajo,
    Expression<String>? p9Distribucion,
    Expression<String>? p9DistribucionOtro,
    Expression<String>? p10MesesAlta,
    Expression<String>? p11Policultivo,
    Expression<String>? p11Cobertura,
    Expression<String>? p11Plagas,
    Expression<String>? p11Agua,
    Expression<String>? p11Semillas,
    Expression<String>? p11Barreras,
    Expression<String>? p11Reduccion,
    Expression<String>? p11Residuos,
    Expression<String>? p12Destino,
    Expression<String>? p12DestinoOtro,
    Expression<String>? p12Impedimentos,
    Expression<String>? p12ImpedimentosOtro,
    Expression<String>? p13PracticaExitosa,
    Expression<String>? p14Necesidades,
    Expression<String>? p14AccesoEstable,
    Expression<String>? p14PocaDependencia,
    Expression<String>? p14Tradiciones,
    Expression<String>? p14DietaFamiliar,
    Expression<String>? p15MesesDificiles,
    Expression<String>? p16TiempoTransporte,
    Expression<String>? p17GastoTransporte,
    Expression<String>? p18FrecuenciaViajes,
    Expression<String>? p19Mermas,
    Expression<String>? p19Conservacion,
    Expression<String>? p19ConservacionCuales,
    Expression<String>? p20MomentoPago,
    Expression<String>? p21LimitacionRequisitos,
    Expression<String>? p22RequisitosDificiles,
    Expression<String>? p22RequisitosDificilesOtro,
    Expression<String>? p23ProbSequia,
    Expression<String>? p23ProbHuracan,
    Expression<String>? p23ProbPlagas,
    Expression<String>? p23ProbFaltaAgua,
    Expression<String>? p23ProbPrecios,
    Expression<String>? p23ProbPagoTardio,
    Expression<String>? p23ProbCaminos,
    Expression<String>? p23ProbFaltaInsumos,
    Expression<String>? p23ProbConflictos,
    Expression<String>? p23ProbInocuidad,
    Expression<String>? p24ImpSequia,
    Expression<String>? p24ImpHuracan,
    Expression<String>? p24ImpPlagas,
    Expression<String>? p24ImpFaltaAgua,
    Expression<String>? p24ImpPrecios,
    Expression<String>? p24ImpPagoTardio,
    Expression<String>? p24ImpCaminos,
    Expression<String>? p24ImpFaltaInsumos,
    Expression<String>? p24ImpConflictos,
    Expression<String>? p24ImpInocuidad,
    Expression<String>? p25OtroRiesgo,
    Expression<String>? p26Rol,
    Expression<String>? p26RolOtro,
    Expression<String>? p27Acopio,
    Expression<String>? p27Calendario,
    Expression<String>? p27Transporte,
    Expression<String>? p27Circuitos,
    Expression<String>? p27Compras,
    Expression<String>? p27Confianza,
    Expression<String>? p28FactoresConfianza,
    Expression<String>? p29LlevaRegistro,
    Expression<String>? p30DondeRegistra,
    Expression<String>? p30DondeRegistraOtro,
    Expression<String>? p31FrecuenciaRegistro,
    Expression<String>? p32DisposicionRegistro,
    Expression<String>? p33ApoyoRegistro,
    Expression<String>? p33ApoyoRegistroOtro,
    Expression<String>? p34TemasCapacitacion,
    Expression<String>? p34TemasCapacitacionOtro,
    Expression<String>? p35ProblemaUrgente,
    Expression<String>? p35ProblemaUrgenteOtro,
    Expression<String>? p36FormatoAprendizaje,
    Expression<String>? p36FormatoAprendizajeOtro,
    Expression<String>? p37TiempoCapacitacion,
    Expression<String>? p38DificultadAsistencia,
    Expression<String>? p38DificultadAsistenciaOtro,
    Expression<String>? p39ActividadesRed,
    Expression<String>? p40TallerDiseno,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idLocal != null) 'id_local': idLocal,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (fechaCapturaLocal != null) 'fecha_captura_local': fechaCapturaLocal,
      if (formulario != null) 'formulario': formulario,
      if (p1ComunidadVive != null) 'p1_comunidad_vive': p1ComunidadVive,
      if (p1BComunidadTrabaja != null)
        'p1_b_comunidad_trabaja': p1BComunidadTrabaja,
      if (p2Consentimiento != null) 'p2_consentimiento': p2Consentimiento,
      if (p3Municipio != null) 'p3_municipio': p3Municipio,
      if (p4Nombre != null) 'p4_nombre': p4Nombre,
      if (p5Telefono != null) 'p5_telefono': p5Telefono,
      if (p6Taller != null) 'p6_taller': p6Taller,
      if (p7CultivoPrincipal != null)
        'p7_cultivo_principal': p7CultivoPrincipal,
      if (p7CultivoPrincipalOtro != null)
        'p7_cultivo_principal_otro': p7CultivoPrincipalOtro,
      if (p8FormaTrabajo != null) 'p8_forma_trabajo': p8FormaTrabajo,
      if (p9Distribucion != null) 'p9_distribucion': p9Distribucion,
      if (p9DistribucionOtro != null)
        'p9_distribucion_otro': p9DistribucionOtro,
      if (p10MesesAlta != null) 'p10_meses_alta': p10MesesAlta,
      if (p11Policultivo != null) 'p11_policultivo': p11Policultivo,
      if (p11Cobertura != null) 'p11_cobertura': p11Cobertura,
      if (p11Plagas != null) 'p11_plagas': p11Plagas,
      if (p11Agua != null) 'p11_agua': p11Agua,
      if (p11Semillas != null) 'p11_semillas': p11Semillas,
      if (p11Barreras != null) 'p11_barreras': p11Barreras,
      if (p11Reduccion != null) 'p11_reduccion': p11Reduccion,
      if (p11Residuos != null) 'p11_residuos': p11Residuos,
      if (p12Destino != null) 'p12_destino': p12Destino,
      if (p12DestinoOtro != null) 'p12_destino_otro': p12DestinoOtro,
      if (p12Impedimentos != null) 'p12_impedimentos': p12Impedimentos,
      if (p12ImpedimentosOtro != null)
        'p12_impedimentos_otro': p12ImpedimentosOtro,
      if (p13PracticaExitosa != null)
        'p13_practica_exitosa': p13PracticaExitosa,
      if (p14Necesidades != null) 'p14_necesidades': p14Necesidades,
      if (p14AccesoEstable != null) 'p14_acceso_estable': p14AccesoEstable,
      if (p14PocaDependencia != null)
        'p14_poca_dependencia': p14PocaDependencia,
      if (p14Tradiciones != null) 'p14_tradiciones': p14Tradiciones,
      if (p14DietaFamiliar != null) 'p14_dieta_familiar': p14DietaFamiliar,
      if (p15MesesDificiles != null) 'p15_meses_dificiles': p15MesesDificiles,
      if (p16TiempoTransporte != null)
        'p16_tiempo_transporte': p16TiempoTransporte,
      if (p17GastoTransporte != null)
        'p17_gasto_transporte': p17GastoTransporte,
      if (p18FrecuenciaViajes != null)
        'p18_frecuencia_viajes': p18FrecuenciaViajes,
      if (p19Mermas != null) 'p19_mermas': p19Mermas,
      if (p19Conservacion != null) 'p19_conservacion': p19Conservacion,
      if (p19ConservacionCuales != null)
        'p19_conservacion_cuales': p19ConservacionCuales,
      if (p20MomentoPago != null) 'p20_momento_pago': p20MomentoPago,
      if (p21LimitacionRequisitos != null)
        'p21_limitacion_requisitos': p21LimitacionRequisitos,
      if (p22RequisitosDificiles != null)
        'p22_requisitos_dificiles': p22RequisitosDificiles,
      if (p22RequisitosDificilesOtro != null)
        'p22_requisitos_dificiles_otro': p22RequisitosDificilesOtro,
      if (p23ProbSequia != null) 'p23_prob_sequia': p23ProbSequia,
      if (p23ProbHuracan != null) 'p23_prob_huracan': p23ProbHuracan,
      if (p23ProbPlagas != null) 'p23_prob_plagas': p23ProbPlagas,
      if (p23ProbFaltaAgua != null) 'p23_prob_falta_agua': p23ProbFaltaAgua,
      if (p23ProbPrecios != null) 'p23_prob_precios': p23ProbPrecios,
      if (p23ProbPagoTardio != null) 'p23_prob_pago_tardio': p23ProbPagoTardio,
      if (p23ProbCaminos != null) 'p23_prob_caminos': p23ProbCaminos,
      if (p23ProbFaltaInsumos != null)
        'p23_prob_falta_insumos': p23ProbFaltaInsumos,
      if (p23ProbConflictos != null) 'p23_prob_conflictos': p23ProbConflictos,
      if (p23ProbInocuidad != null) 'p23_prob_inocuidad': p23ProbInocuidad,
      if (p24ImpSequia != null) 'p24_imp_sequia': p24ImpSequia,
      if (p24ImpHuracan != null) 'p24_imp_huracan': p24ImpHuracan,
      if (p24ImpPlagas != null) 'p24_imp_plagas': p24ImpPlagas,
      if (p24ImpFaltaAgua != null) 'p24_imp_falta_agua': p24ImpFaltaAgua,
      if (p24ImpPrecios != null) 'p24_imp_precios': p24ImpPrecios,
      if (p24ImpPagoTardio != null) 'p24_imp_pago_tardio': p24ImpPagoTardio,
      if (p24ImpCaminos != null) 'p24_imp_caminos': p24ImpCaminos,
      if (p24ImpFaltaInsumos != null)
        'p24_imp_falta_insumos': p24ImpFaltaInsumos,
      if (p24ImpConflictos != null) 'p24_imp_conflictos': p24ImpConflictos,
      if (p24ImpInocuidad != null) 'p24_imp_inocuidad': p24ImpInocuidad,
      if (p25OtroRiesgo != null) 'p25_otro_riesgo': p25OtroRiesgo,
      if (p26Rol != null) 'p26_rol': p26Rol,
      if (p26RolOtro != null) 'p26_rol_otro': p26RolOtro,
      if (p27Acopio != null) 'p27_acopio': p27Acopio,
      if (p27Calendario != null) 'p27_calendario': p27Calendario,
      if (p27Transporte != null) 'p27_transporte': p27Transporte,
      if (p27Circuitos != null) 'p27_circuitos': p27Circuitos,
      if (p27Compras != null) 'p27_compras': p27Compras,
      if (p27Confianza != null) 'p27_confianza': p27Confianza,
      if (p28FactoresConfianza != null)
        'p28_factores_confianza': p28FactoresConfianza,
      if (p29LlevaRegistro != null) 'p29_lleva_registro': p29LlevaRegistro,
      if (p30DondeRegistra != null) 'p30_donde_registra': p30DondeRegistra,
      if (p30DondeRegistraOtro != null)
        'p30_donde_registra_otro': p30DondeRegistraOtro,
      if (p31FrecuenciaRegistro != null)
        'p31_frecuencia_registro': p31FrecuenciaRegistro,
      if (p32DisposicionRegistro != null)
        'p32_disposicion_registro': p32DisposicionRegistro,
      if (p33ApoyoRegistro != null) 'p33_apoyo_registro': p33ApoyoRegistro,
      if (p33ApoyoRegistroOtro != null)
        'p33_apoyo_registro_otro': p33ApoyoRegistroOtro,
      if (p34TemasCapacitacion != null)
        'p34_temas_capacitacion': p34TemasCapacitacion,
      if (p34TemasCapacitacionOtro != null)
        'p34_temas_capacitacion_otro': p34TemasCapacitacionOtro,
      if (p35ProblemaUrgente != null)
        'p35_problema_urgente': p35ProblemaUrgente,
      if (p35ProblemaUrgenteOtro != null)
        'p35_problema_urgente_otro': p35ProblemaUrgenteOtro,
      if (p36FormatoAprendizaje != null)
        'p36_formato_aprendizaje': p36FormatoAprendizaje,
      if (p36FormatoAprendizajeOtro != null)
        'p36_formato_aprendizaje_otro': p36FormatoAprendizajeOtro,
      if (p37TiempoCapacitacion != null)
        'p37_tiempo_capacitacion': p37TiempoCapacitacion,
      if (p38DificultadAsistencia != null)
        'p38_dificultad_asistencia': p38DificultadAsistencia,
      if (p38DificultadAsistenciaOtro != null)
        'p38_dificultad_asistencia_otro': p38DificultadAsistenciaOtro,
      if (p39ActividadesRed != null) 'p39_actividades_red': p39ActividadesRed,
      if (p40TallerDiseno != null) 'p40_taller_diseno': p40TallerDiseno,
      if (latitud != null) 'latitud': latitud,
      if (longitud != null) 'longitud': longitud,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RespuestasDiagnosticoCompanion copyWith(
      {Value<String>? idLocal,
      Value<String>? syncStatus,
      Value<DateTime>? fechaCapturaLocal,
      Value<String?>? formulario,
      Value<String?>? p1ComunidadVive,
      Value<String?>? p1BComunidadTrabaja,
      Value<String?>? p2Consentimiento,
      Value<String?>? p3Municipio,
      Value<String?>? p4Nombre,
      Value<String?>? p5Telefono,
      Value<String?>? p6Taller,
      Value<String?>? p7CultivoPrincipal,
      Value<String?>? p7CultivoPrincipalOtro,
      Value<String?>? p8FormaTrabajo,
      Value<String?>? p9Distribucion,
      Value<String?>? p9DistribucionOtro,
      Value<String?>? p10MesesAlta,
      Value<String?>? p11Policultivo,
      Value<String?>? p11Cobertura,
      Value<String?>? p11Plagas,
      Value<String?>? p11Agua,
      Value<String?>? p11Semillas,
      Value<String?>? p11Barreras,
      Value<String?>? p11Reduccion,
      Value<String?>? p11Residuos,
      Value<String?>? p12Destino,
      Value<String?>? p12DestinoOtro,
      Value<String?>? p12Impedimentos,
      Value<String?>? p12ImpedimentosOtro,
      Value<String?>? p13PracticaExitosa,
      Value<String?>? p14Necesidades,
      Value<String?>? p14AccesoEstable,
      Value<String?>? p14PocaDependencia,
      Value<String?>? p14Tradiciones,
      Value<String?>? p14DietaFamiliar,
      Value<String?>? p15MesesDificiles,
      Value<String?>? p16TiempoTransporte,
      Value<String?>? p17GastoTransporte,
      Value<String?>? p18FrecuenciaViajes,
      Value<String?>? p19Mermas,
      Value<String?>? p19Conservacion,
      Value<String?>? p19ConservacionCuales,
      Value<String?>? p20MomentoPago,
      Value<String?>? p21LimitacionRequisitos,
      Value<String?>? p22RequisitosDificiles,
      Value<String?>? p22RequisitosDificilesOtro,
      Value<String?>? p23ProbSequia,
      Value<String?>? p23ProbHuracan,
      Value<String?>? p23ProbPlagas,
      Value<String?>? p23ProbFaltaAgua,
      Value<String?>? p23ProbPrecios,
      Value<String?>? p23ProbPagoTardio,
      Value<String?>? p23ProbCaminos,
      Value<String?>? p23ProbFaltaInsumos,
      Value<String?>? p23ProbConflictos,
      Value<String?>? p23ProbInocuidad,
      Value<String?>? p24ImpSequia,
      Value<String?>? p24ImpHuracan,
      Value<String?>? p24ImpPlagas,
      Value<String?>? p24ImpFaltaAgua,
      Value<String?>? p24ImpPrecios,
      Value<String?>? p24ImpPagoTardio,
      Value<String?>? p24ImpCaminos,
      Value<String?>? p24ImpFaltaInsumos,
      Value<String?>? p24ImpConflictos,
      Value<String?>? p24ImpInocuidad,
      Value<String?>? p25OtroRiesgo,
      Value<String?>? p26Rol,
      Value<String?>? p26RolOtro,
      Value<String?>? p27Acopio,
      Value<String?>? p27Calendario,
      Value<String?>? p27Transporte,
      Value<String?>? p27Circuitos,
      Value<String?>? p27Compras,
      Value<String?>? p27Confianza,
      Value<String?>? p28FactoresConfianza,
      Value<String?>? p29LlevaRegistro,
      Value<String?>? p30DondeRegistra,
      Value<String?>? p30DondeRegistraOtro,
      Value<String?>? p31FrecuenciaRegistro,
      Value<String?>? p32DisposicionRegistro,
      Value<String?>? p33ApoyoRegistro,
      Value<String?>? p33ApoyoRegistroOtro,
      Value<String?>? p34TemasCapacitacion,
      Value<String?>? p34TemasCapacitacionOtro,
      Value<String?>? p35ProblemaUrgente,
      Value<String?>? p35ProblemaUrgenteOtro,
      Value<String?>? p36FormatoAprendizaje,
      Value<String?>? p36FormatoAprendizajeOtro,
      Value<String?>? p37TiempoCapacitacion,
      Value<String?>? p38DificultadAsistencia,
      Value<String?>? p38DificultadAsistenciaOtro,
      Value<String?>? p39ActividadesRed,
      Value<String?>? p40TallerDiseno,
      Value<double?>? latitud,
      Value<double?>? longitud,
      Value<int>? rowid}) {
    return RespuestasDiagnosticoCompanion(
      idLocal: idLocal ?? this.idLocal,
      syncStatus: syncStatus ?? this.syncStatus,
      fechaCapturaLocal: fechaCapturaLocal ?? this.fechaCapturaLocal,
      formulario: formulario ?? this.formulario,
      p1ComunidadVive: p1ComunidadVive ?? this.p1ComunidadVive,
      p1BComunidadTrabaja: p1BComunidadTrabaja ?? this.p1BComunidadTrabaja,
      p2Consentimiento: p2Consentimiento ?? this.p2Consentimiento,
      p3Municipio: p3Municipio ?? this.p3Municipio,
      p4Nombre: p4Nombre ?? this.p4Nombre,
      p5Telefono: p5Telefono ?? this.p5Telefono,
      p6Taller: p6Taller ?? this.p6Taller,
      p7CultivoPrincipal: p7CultivoPrincipal ?? this.p7CultivoPrincipal,
      p7CultivoPrincipalOtro:
          p7CultivoPrincipalOtro ?? this.p7CultivoPrincipalOtro,
      p8FormaTrabajo: p8FormaTrabajo ?? this.p8FormaTrabajo,
      p9Distribucion: p9Distribucion ?? this.p9Distribucion,
      p9DistribucionOtro: p9DistribucionOtro ?? this.p9DistribucionOtro,
      p10MesesAlta: p10MesesAlta ?? this.p10MesesAlta,
      p11Policultivo: p11Policultivo ?? this.p11Policultivo,
      p11Cobertura: p11Cobertura ?? this.p11Cobertura,
      p11Plagas: p11Plagas ?? this.p11Plagas,
      p11Agua: p11Agua ?? this.p11Agua,
      p11Semillas: p11Semillas ?? this.p11Semillas,
      p11Barreras: p11Barreras ?? this.p11Barreras,
      p11Reduccion: p11Reduccion ?? this.p11Reduccion,
      p11Residuos: p11Residuos ?? this.p11Residuos,
      p12Destino: p12Destino ?? this.p12Destino,
      p12DestinoOtro: p12DestinoOtro ?? this.p12DestinoOtro,
      p12Impedimentos: p12Impedimentos ?? this.p12Impedimentos,
      p12ImpedimentosOtro: p12ImpedimentosOtro ?? this.p12ImpedimentosOtro,
      p13PracticaExitosa: p13PracticaExitosa ?? this.p13PracticaExitosa,
      p14Necesidades: p14Necesidades ?? this.p14Necesidades,
      p14AccesoEstable: p14AccesoEstable ?? this.p14AccesoEstable,
      p14PocaDependencia: p14PocaDependencia ?? this.p14PocaDependencia,
      p14Tradiciones: p14Tradiciones ?? this.p14Tradiciones,
      p14DietaFamiliar: p14DietaFamiliar ?? this.p14DietaFamiliar,
      p15MesesDificiles: p15MesesDificiles ?? this.p15MesesDificiles,
      p16TiempoTransporte: p16TiempoTransporte ?? this.p16TiempoTransporte,
      p17GastoTransporte: p17GastoTransporte ?? this.p17GastoTransporte,
      p18FrecuenciaViajes: p18FrecuenciaViajes ?? this.p18FrecuenciaViajes,
      p19Mermas: p19Mermas ?? this.p19Mermas,
      p19Conservacion: p19Conservacion ?? this.p19Conservacion,
      p19ConservacionCuales:
          p19ConservacionCuales ?? this.p19ConservacionCuales,
      p20MomentoPago: p20MomentoPago ?? this.p20MomentoPago,
      p21LimitacionRequisitos:
          p21LimitacionRequisitos ?? this.p21LimitacionRequisitos,
      p22RequisitosDificiles:
          p22RequisitosDificiles ?? this.p22RequisitosDificiles,
      p22RequisitosDificilesOtro:
          p22RequisitosDificilesOtro ?? this.p22RequisitosDificilesOtro,
      p23ProbSequia: p23ProbSequia ?? this.p23ProbSequia,
      p23ProbHuracan: p23ProbHuracan ?? this.p23ProbHuracan,
      p23ProbPlagas: p23ProbPlagas ?? this.p23ProbPlagas,
      p23ProbFaltaAgua: p23ProbFaltaAgua ?? this.p23ProbFaltaAgua,
      p23ProbPrecios: p23ProbPrecios ?? this.p23ProbPrecios,
      p23ProbPagoTardio: p23ProbPagoTardio ?? this.p23ProbPagoTardio,
      p23ProbCaminos: p23ProbCaminos ?? this.p23ProbCaminos,
      p23ProbFaltaInsumos: p23ProbFaltaInsumos ?? this.p23ProbFaltaInsumos,
      p23ProbConflictos: p23ProbConflictos ?? this.p23ProbConflictos,
      p23ProbInocuidad: p23ProbInocuidad ?? this.p23ProbInocuidad,
      p24ImpSequia: p24ImpSequia ?? this.p24ImpSequia,
      p24ImpHuracan: p24ImpHuracan ?? this.p24ImpHuracan,
      p24ImpPlagas: p24ImpPlagas ?? this.p24ImpPlagas,
      p24ImpFaltaAgua: p24ImpFaltaAgua ?? this.p24ImpFaltaAgua,
      p24ImpPrecios: p24ImpPrecios ?? this.p24ImpPrecios,
      p24ImpPagoTardio: p24ImpPagoTardio ?? this.p24ImpPagoTardio,
      p24ImpCaminos: p24ImpCaminos ?? this.p24ImpCaminos,
      p24ImpFaltaInsumos: p24ImpFaltaInsumos ?? this.p24ImpFaltaInsumos,
      p24ImpConflictos: p24ImpConflictos ?? this.p24ImpConflictos,
      p24ImpInocuidad: p24ImpInocuidad ?? this.p24ImpInocuidad,
      p25OtroRiesgo: p25OtroRiesgo ?? this.p25OtroRiesgo,
      p26Rol: p26Rol ?? this.p26Rol,
      p26RolOtro: p26RolOtro ?? this.p26RolOtro,
      p27Acopio: p27Acopio ?? this.p27Acopio,
      p27Calendario: p27Calendario ?? this.p27Calendario,
      p27Transporte: p27Transporte ?? this.p27Transporte,
      p27Circuitos: p27Circuitos ?? this.p27Circuitos,
      p27Compras: p27Compras ?? this.p27Compras,
      p27Confianza: p27Confianza ?? this.p27Confianza,
      p28FactoresConfianza: p28FactoresConfianza ?? this.p28FactoresConfianza,
      p29LlevaRegistro: p29LlevaRegistro ?? this.p29LlevaRegistro,
      p30DondeRegistra: p30DondeRegistra ?? this.p30DondeRegistra,
      p30DondeRegistraOtro: p30DondeRegistraOtro ?? this.p30DondeRegistraOtro,
      p31FrecuenciaRegistro:
          p31FrecuenciaRegistro ?? this.p31FrecuenciaRegistro,
      p32DisposicionRegistro:
          p32DisposicionRegistro ?? this.p32DisposicionRegistro,
      p33ApoyoRegistro: p33ApoyoRegistro ?? this.p33ApoyoRegistro,
      p33ApoyoRegistroOtro: p33ApoyoRegistroOtro ?? this.p33ApoyoRegistroOtro,
      p34TemasCapacitacion: p34TemasCapacitacion ?? this.p34TemasCapacitacion,
      p34TemasCapacitacionOtro:
          p34TemasCapacitacionOtro ?? this.p34TemasCapacitacionOtro,
      p35ProblemaUrgente: p35ProblemaUrgente ?? this.p35ProblemaUrgente,
      p35ProblemaUrgenteOtro:
          p35ProblemaUrgenteOtro ?? this.p35ProblemaUrgenteOtro,
      p36FormatoAprendizaje:
          p36FormatoAprendizaje ?? this.p36FormatoAprendizaje,
      p36FormatoAprendizajeOtro:
          p36FormatoAprendizajeOtro ?? this.p36FormatoAprendizajeOtro,
      p37TiempoCapacitacion:
          p37TiempoCapacitacion ?? this.p37TiempoCapacitacion,
      p38DificultadAsistencia:
          p38DificultadAsistencia ?? this.p38DificultadAsistencia,
      p38DificultadAsistenciaOtro:
          p38DificultadAsistenciaOtro ?? this.p38DificultadAsistenciaOtro,
      p39ActividadesRed: p39ActividadesRed ?? this.p39ActividadesRed,
      p40TallerDiseno: p40TallerDiseno ?? this.p40TallerDiseno,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idLocal.present) {
      map['id_local'] = Variable<String>(idLocal.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (fechaCapturaLocal.present) {
      map['fecha_captura_local'] = Variable<DateTime>(fechaCapturaLocal.value);
    }
    if (formulario.present) {
      map['formulario'] = Variable<String>(formulario.value);
    }
    if (p1ComunidadVive.present) {
      map['p1_comunidad_vive'] = Variable<String>(p1ComunidadVive.value);
    }
    if (p1BComunidadTrabaja.present) {
      map['p1_b_comunidad_trabaja'] =
          Variable<String>(p1BComunidadTrabaja.value);
    }
    if (p2Consentimiento.present) {
      map['p2_consentimiento'] = Variable<String>(p2Consentimiento.value);
    }
    if (p3Municipio.present) {
      map['p3_municipio'] = Variable<String>(p3Municipio.value);
    }
    if (p4Nombre.present) {
      map['p4_nombre'] = Variable<String>(p4Nombre.value);
    }
    if (p5Telefono.present) {
      map['p5_telefono'] = Variable<String>(p5Telefono.value);
    }
    if (p6Taller.present) {
      map['p6_taller'] = Variable<String>(p6Taller.value);
    }
    if (p7CultivoPrincipal.present) {
      map['p7_cultivo_principal'] = Variable<String>(p7CultivoPrincipal.value);
    }
    if (p7CultivoPrincipalOtro.present) {
      map['p7_cultivo_principal_otro'] =
          Variable<String>(p7CultivoPrincipalOtro.value);
    }
    if (p8FormaTrabajo.present) {
      map['p8_forma_trabajo'] = Variable<String>(p8FormaTrabajo.value);
    }
    if (p9Distribucion.present) {
      map['p9_distribucion'] = Variable<String>(p9Distribucion.value);
    }
    if (p9DistribucionOtro.present) {
      map['p9_distribucion_otro'] = Variable<String>(p9DistribucionOtro.value);
    }
    if (p10MesesAlta.present) {
      map['p10_meses_alta'] = Variable<String>(p10MesesAlta.value);
    }
    if (p11Policultivo.present) {
      map['p11_policultivo'] = Variable<String>(p11Policultivo.value);
    }
    if (p11Cobertura.present) {
      map['p11_cobertura'] = Variable<String>(p11Cobertura.value);
    }
    if (p11Plagas.present) {
      map['p11_plagas'] = Variable<String>(p11Plagas.value);
    }
    if (p11Agua.present) {
      map['p11_agua'] = Variable<String>(p11Agua.value);
    }
    if (p11Semillas.present) {
      map['p11_semillas'] = Variable<String>(p11Semillas.value);
    }
    if (p11Barreras.present) {
      map['p11_barreras'] = Variable<String>(p11Barreras.value);
    }
    if (p11Reduccion.present) {
      map['p11_reduccion'] = Variable<String>(p11Reduccion.value);
    }
    if (p11Residuos.present) {
      map['p11_residuos'] = Variable<String>(p11Residuos.value);
    }
    if (p12Destino.present) {
      map['p12_destino'] = Variable<String>(p12Destino.value);
    }
    if (p12DestinoOtro.present) {
      map['p12_destino_otro'] = Variable<String>(p12DestinoOtro.value);
    }
    if (p12Impedimentos.present) {
      map['p12_impedimentos'] = Variable<String>(p12Impedimentos.value);
    }
    if (p12ImpedimentosOtro.present) {
      map['p12_impedimentos_otro'] =
          Variable<String>(p12ImpedimentosOtro.value);
    }
    if (p13PracticaExitosa.present) {
      map['p13_practica_exitosa'] = Variable<String>(p13PracticaExitosa.value);
    }
    if (p14Necesidades.present) {
      map['p14_necesidades'] = Variable<String>(p14Necesidades.value);
    }
    if (p14AccesoEstable.present) {
      map['p14_acceso_estable'] = Variable<String>(p14AccesoEstable.value);
    }
    if (p14PocaDependencia.present) {
      map['p14_poca_dependencia'] = Variable<String>(p14PocaDependencia.value);
    }
    if (p14Tradiciones.present) {
      map['p14_tradiciones'] = Variable<String>(p14Tradiciones.value);
    }
    if (p14DietaFamiliar.present) {
      map['p14_dieta_familiar'] = Variable<String>(p14DietaFamiliar.value);
    }
    if (p15MesesDificiles.present) {
      map['p15_meses_dificiles'] = Variable<String>(p15MesesDificiles.value);
    }
    if (p16TiempoTransporte.present) {
      map['p16_tiempo_transporte'] =
          Variable<String>(p16TiempoTransporte.value);
    }
    if (p17GastoTransporte.present) {
      map['p17_gasto_transporte'] = Variable<String>(p17GastoTransporte.value);
    }
    if (p18FrecuenciaViajes.present) {
      map['p18_frecuencia_viajes'] =
          Variable<String>(p18FrecuenciaViajes.value);
    }
    if (p19Mermas.present) {
      map['p19_mermas'] = Variable<String>(p19Mermas.value);
    }
    if (p19Conservacion.present) {
      map['p19_conservacion'] = Variable<String>(p19Conservacion.value);
    }
    if (p19ConservacionCuales.present) {
      map['p19_conservacion_cuales'] =
          Variable<String>(p19ConservacionCuales.value);
    }
    if (p20MomentoPago.present) {
      map['p20_momento_pago'] = Variable<String>(p20MomentoPago.value);
    }
    if (p21LimitacionRequisitos.present) {
      map['p21_limitacion_requisitos'] =
          Variable<String>(p21LimitacionRequisitos.value);
    }
    if (p22RequisitosDificiles.present) {
      map['p22_requisitos_dificiles'] =
          Variable<String>(p22RequisitosDificiles.value);
    }
    if (p22RequisitosDificilesOtro.present) {
      map['p22_requisitos_dificiles_otro'] =
          Variable<String>(p22RequisitosDificilesOtro.value);
    }
    if (p23ProbSequia.present) {
      map['p23_prob_sequia'] = Variable<String>(p23ProbSequia.value);
    }
    if (p23ProbHuracan.present) {
      map['p23_prob_huracan'] = Variable<String>(p23ProbHuracan.value);
    }
    if (p23ProbPlagas.present) {
      map['p23_prob_plagas'] = Variable<String>(p23ProbPlagas.value);
    }
    if (p23ProbFaltaAgua.present) {
      map['p23_prob_falta_agua'] = Variable<String>(p23ProbFaltaAgua.value);
    }
    if (p23ProbPrecios.present) {
      map['p23_prob_precios'] = Variable<String>(p23ProbPrecios.value);
    }
    if (p23ProbPagoTardio.present) {
      map['p23_prob_pago_tardio'] = Variable<String>(p23ProbPagoTardio.value);
    }
    if (p23ProbCaminos.present) {
      map['p23_prob_caminos'] = Variable<String>(p23ProbCaminos.value);
    }
    if (p23ProbFaltaInsumos.present) {
      map['p23_prob_falta_insumos'] =
          Variable<String>(p23ProbFaltaInsumos.value);
    }
    if (p23ProbConflictos.present) {
      map['p23_prob_conflictos'] = Variable<String>(p23ProbConflictos.value);
    }
    if (p23ProbInocuidad.present) {
      map['p23_prob_inocuidad'] = Variable<String>(p23ProbInocuidad.value);
    }
    if (p24ImpSequia.present) {
      map['p24_imp_sequia'] = Variable<String>(p24ImpSequia.value);
    }
    if (p24ImpHuracan.present) {
      map['p24_imp_huracan'] = Variable<String>(p24ImpHuracan.value);
    }
    if (p24ImpPlagas.present) {
      map['p24_imp_plagas'] = Variable<String>(p24ImpPlagas.value);
    }
    if (p24ImpFaltaAgua.present) {
      map['p24_imp_falta_agua'] = Variable<String>(p24ImpFaltaAgua.value);
    }
    if (p24ImpPrecios.present) {
      map['p24_imp_precios'] = Variable<String>(p24ImpPrecios.value);
    }
    if (p24ImpPagoTardio.present) {
      map['p24_imp_pago_tardio'] = Variable<String>(p24ImpPagoTardio.value);
    }
    if (p24ImpCaminos.present) {
      map['p24_imp_caminos'] = Variable<String>(p24ImpCaminos.value);
    }
    if (p24ImpFaltaInsumos.present) {
      map['p24_imp_falta_insumos'] = Variable<String>(p24ImpFaltaInsumos.value);
    }
    if (p24ImpConflictos.present) {
      map['p24_imp_conflictos'] = Variable<String>(p24ImpConflictos.value);
    }
    if (p24ImpInocuidad.present) {
      map['p24_imp_inocuidad'] = Variable<String>(p24ImpInocuidad.value);
    }
    if (p25OtroRiesgo.present) {
      map['p25_otro_riesgo'] = Variable<String>(p25OtroRiesgo.value);
    }
    if (p26Rol.present) {
      map['p26_rol'] = Variable<String>(p26Rol.value);
    }
    if (p26RolOtro.present) {
      map['p26_rol_otro'] = Variable<String>(p26RolOtro.value);
    }
    if (p27Acopio.present) {
      map['p27_acopio'] = Variable<String>(p27Acopio.value);
    }
    if (p27Calendario.present) {
      map['p27_calendario'] = Variable<String>(p27Calendario.value);
    }
    if (p27Transporte.present) {
      map['p27_transporte'] = Variable<String>(p27Transporte.value);
    }
    if (p27Circuitos.present) {
      map['p27_circuitos'] = Variable<String>(p27Circuitos.value);
    }
    if (p27Compras.present) {
      map['p27_compras'] = Variable<String>(p27Compras.value);
    }
    if (p27Confianza.present) {
      map['p27_confianza'] = Variable<String>(p27Confianza.value);
    }
    if (p28FactoresConfianza.present) {
      map['p28_factores_confianza'] =
          Variable<String>(p28FactoresConfianza.value);
    }
    if (p29LlevaRegistro.present) {
      map['p29_lleva_registro'] = Variable<String>(p29LlevaRegistro.value);
    }
    if (p30DondeRegistra.present) {
      map['p30_donde_registra'] = Variable<String>(p30DondeRegistra.value);
    }
    if (p30DondeRegistraOtro.present) {
      map['p30_donde_registra_otro'] =
          Variable<String>(p30DondeRegistraOtro.value);
    }
    if (p31FrecuenciaRegistro.present) {
      map['p31_frecuencia_registro'] =
          Variable<String>(p31FrecuenciaRegistro.value);
    }
    if (p32DisposicionRegistro.present) {
      map['p32_disposicion_registro'] =
          Variable<String>(p32DisposicionRegistro.value);
    }
    if (p33ApoyoRegistro.present) {
      map['p33_apoyo_registro'] = Variable<String>(p33ApoyoRegistro.value);
    }
    if (p33ApoyoRegistroOtro.present) {
      map['p33_apoyo_registro_otro'] =
          Variable<String>(p33ApoyoRegistroOtro.value);
    }
    if (p34TemasCapacitacion.present) {
      map['p34_temas_capacitacion'] =
          Variable<String>(p34TemasCapacitacion.value);
    }
    if (p34TemasCapacitacionOtro.present) {
      map['p34_temas_capacitacion_otro'] =
          Variable<String>(p34TemasCapacitacionOtro.value);
    }
    if (p35ProblemaUrgente.present) {
      map['p35_problema_urgente'] = Variable<String>(p35ProblemaUrgente.value);
    }
    if (p35ProblemaUrgenteOtro.present) {
      map['p35_problema_urgente_otro'] =
          Variable<String>(p35ProblemaUrgenteOtro.value);
    }
    if (p36FormatoAprendizaje.present) {
      map['p36_formato_aprendizaje'] =
          Variable<String>(p36FormatoAprendizaje.value);
    }
    if (p36FormatoAprendizajeOtro.present) {
      map['p36_formato_aprendizaje_otro'] =
          Variable<String>(p36FormatoAprendizajeOtro.value);
    }
    if (p37TiempoCapacitacion.present) {
      map['p37_tiempo_capacitacion'] =
          Variable<String>(p37TiempoCapacitacion.value);
    }
    if (p38DificultadAsistencia.present) {
      map['p38_dificultad_asistencia'] =
          Variable<String>(p38DificultadAsistencia.value);
    }
    if (p38DificultadAsistenciaOtro.present) {
      map['p38_dificultad_asistencia_otro'] =
          Variable<String>(p38DificultadAsistenciaOtro.value);
    }
    if (p39ActividadesRed.present) {
      map['p39_actividades_red'] = Variable<String>(p39ActividadesRed.value);
    }
    if (p40TallerDiseno.present) {
      map['p40_taller_diseno'] = Variable<String>(p40TallerDiseno.value);
    }
    if (latitud.present) {
      map['latitud'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['longitud'] = Variable<double>(longitud.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RespuestasDiagnosticoCompanion(')
          ..write('idLocal: $idLocal, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('fechaCapturaLocal: $fechaCapturaLocal, ')
          ..write('formulario: $formulario, ')
          ..write('p1ComunidadVive: $p1ComunidadVive, ')
          ..write('p1BComunidadTrabaja: $p1BComunidadTrabaja, ')
          ..write('p2Consentimiento: $p2Consentimiento, ')
          ..write('p3Municipio: $p3Municipio, ')
          ..write('p4Nombre: $p4Nombre, ')
          ..write('p5Telefono: $p5Telefono, ')
          ..write('p6Taller: $p6Taller, ')
          ..write('p7CultivoPrincipal: $p7CultivoPrincipal, ')
          ..write('p7CultivoPrincipalOtro: $p7CultivoPrincipalOtro, ')
          ..write('p8FormaTrabajo: $p8FormaTrabajo, ')
          ..write('p9Distribucion: $p9Distribucion, ')
          ..write('p9DistribucionOtro: $p9DistribucionOtro, ')
          ..write('p10MesesAlta: $p10MesesAlta, ')
          ..write('p11Policultivo: $p11Policultivo, ')
          ..write('p11Cobertura: $p11Cobertura, ')
          ..write('p11Plagas: $p11Plagas, ')
          ..write('p11Agua: $p11Agua, ')
          ..write('p11Semillas: $p11Semillas, ')
          ..write('p11Barreras: $p11Barreras, ')
          ..write('p11Reduccion: $p11Reduccion, ')
          ..write('p11Residuos: $p11Residuos, ')
          ..write('p12Destino: $p12Destino, ')
          ..write('p12DestinoOtro: $p12DestinoOtro, ')
          ..write('p12Impedimentos: $p12Impedimentos, ')
          ..write('p12ImpedimentosOtro: $p12ImpedimentosOtro, ')
          ..write('p13PracticaExitosa: $p13PracticaExitosa, ')
          ..write('p14Necesidades: $p14Necesidades, ')
          ..write('p14AccesoEstable: $p14AccesoEstable, ')
          ..write('p14PocaDependencia: $p14PocaDependencia, ')
          ..write('p14Tradiciones: $p14Tradiciones, ')
          ..write('p14DietaFamiliar: $p14DietaFamiliar, ')
          ..write('p15MesesDificiles: $p15MesesDificiles, ')
          ..write('p16TiempoTransporte: $p16TiempoTransporte, ')
          ..write('p17GastoTransporte: $p17GastoTransporte, ')
          ..write('p18FrecuenciaViajes: $p18FrecuenciaViajes, ')
          ..write('p19Mermas: $p19Mermas, ')
          ..write('p19Conservacion: $p19Conservacion, ')
          ..write('p19ConservacionCuales: $p19ConservacionCuales, ')
          ..write('p20MomentoPago: $p20MomentoPago, ')
          ..write('p21LimitacionRequisitos: $p21LimitacionRequisitos, ')
          ..write('p22RequisitosDificiles: $p22RequisitosDificiles, ')
          ..write('p22RequisitosDificilesOtro: $p22RequisitosDificilesOtro, ')
          ..write('p23ProbSequia: $p23ProbSequia, ')
          ..write('p23ProbHuracan: $p23ProbHuracan, ')
          ..write('p23ProbPlagas: $p23ProbPlagas, ')
          ..write('p23ProbFaltaAgua: $p23ProbFaltaAgua, ')
          ..write('p23ProbPrecios: $p23ProbPrecios, ')
          ..write('p23ProbPagoTardio: $p23ProbPagoTardio, ')
          ..write('p23ProbCaminos: $p23ProbCaminos, ')
          ..write('p23ProbFaltaInsumos: $p23ProbFaltaInsumos, ')
          ..write('p23ProbConflictos: $p23ProbConflictos, ')
          ..write('p23ProbInocuidad: $p23ProbInocuidad, ')
          ..write('p24ImpSequia: $p24ImpSequia, ')
          ..write('p24ImpHuracan: $p24ImpHuracan, ')
          ..write('p24ImpPlagas: $p24ImpPlagas, ')
          ..write('p24ImpFaltaAgua: $p24ImpFaltaAgua, ')
          ..write('p24ImpPrecios: $p24ImpPrecios, ')
          ..write('p24ImpPagoTardio: $p24ImpPagoTardio, ')
          ..write('p24ImpCaminos: $p24ImpCaminos, ')
          ..write('p24ImpFaltaInsumos: $p24ImpFaltaInsumos, ')
          ..write('p24ImpConflictos: $p24ImpConflictos, ')
          ..write('p24ImpInocuidad: $p24ImpInocuidad, ')
          ..write('p25OtroRiesgo: $p25OtroRiesgo, ')
          ..write('p26Rol: $p26Rol, ')
          ..write('p26RolOtro: $p26RolOtro, ')
          ..write('p27Acopio: $p27Acopio, ')
          ..write('p27Calendario: $p27Calendario, ')
          ..write('p27Transporte: $p27Transporte, ')
          ..write('p27Circuitos: $p27Circuitos, ')
          ..write('p27Compras: $p27Compras, ')
          ..write('p27Confianza: $p27Confianza, ')
          ..write('p28FactoresConfianza: $p28FactoresConfianza, ')
          ..write('p29LlevaRegistro: $p29LlevaRegistro, ')
          ..write('p30DondeRegistra: $p30DondeRegistra, ')
          ..write('p30DondeRegistraOtro: $p30DondeRegistraOtro, ')
          ..write('p31FrecuenciaRegistro: $p31FrecuenciaRegistro, ')
          ..write('p32DisposicionRegistro: $p32DisposicionRegistro, ')
          ..write('p33ApoyoRegistro: $p33ApoyoRegistro, ')
          ..write('p33ApoyoRegistroOtro: $p33ApoyoRegistroOtro, ')
          ..write('p34TemasCapacitacion: $p34TemasCapacitacion, ')
          ..write('p34TemasCapacitacionOtro: $p34TemasCapacitacionOtro, ')
          ..write('p35ProblemaUrgente: $p35ProblemaUrgente, ')
          ..write('p35ProblemaUrgenteOtro: $p35ProblemaUrgenteOtro, ')
          ..write('p36FormatoAprendizaje: $p36FormatoAprendizaje, ')
          ..write('p36FormatoAprendizajeOtro: $p36FormatoAprendizajeOtro, ')
          ..write('p37TiempoCapacitacion: $p37TiempoCapacitacion, ')
          ..write('p38DificultadAsistencia: $p38DificultadAsistencia, ')
          ..write('p38DificultadAsistenciaOtro: $p38DificultadAsistenciaOtro, ')
          ..write('p39ActividadesRed: $p39ActividadesRed, ')
          ..write('p40TallerDiseno: $p40TallerDiseno, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $RespuestasDiagnosticoTable respuestasDiagnostico =
      $RespuestasDiagnosticoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [respuestasDiagnostico];
}

typedef $$RespuestasDiagnosticoTableCreateCompanionBuilder
    = RespuestasDiagnosticoCompanion Function({
  required String idLocal,
  Value<String> syncStatus,
  required DateTime fechaCapturaLocal,
  Value<String?> formulario,
  Value<String?> p1ComunidadVive,
  Value<String?> p1BComunidadTrabaja,
  Value<String?> p2Consentimiento,
  Value<String?> p3Municipio,
  Value<String?> p4Nombre,
  Value<String?> p5Telefono,
  Value<String?> p6Taller,
  Value<String?> p7CultivoPrincipal,
  Value<String?> p7CultivoPrincipalOtro,
  Value<String?> p8FormaTrabajo,
  Value<String?> p9Distribucion,
  Value<String?> p9DistribucionOtro,
  Value<String?> p10MesesAlta,
  Value<String?> p11Policultivo,
  Value<String?> p11Cobertura,
  Value<String?> p11Plagas,
  Value<String?> p11Agua,
  Value<String?> p11Semillas,
  Value<String?> p11Barreras,
  Value<String?> p11Reduccion,
  Value<String?> p11Residuos,
  Value<String?> p12Destino,
  Value<String?> p12DestinoOtro,
  Value<String?> p12Impedimentos,
  Value<String?> p12ImpedimentosOtro,
  Value<String?> p13PracticaExitosa,
  Value<String?> p14Necesidades,
  Value<String?> p14AccesoEstable,
  Value<String?> p14PocaDependencia,
  Value<String?> p14Tradiciones,
  Value<String?> p14DietaFamiliar,
  Value<String?> p15MesesDificiles,
  Value<String?> p16TiempoTransporte,
  Value<String?> p17GastoTransporte,
  Value<String?> p18FrecuenciaViajes,
  Value<String?> p19Mermas,
  Value<String?> p19Conservacion,
  Value<String?> p19ConservacionCuales,
  Value<String?> p20MomentoPago,
  Value<String?> p21LimitacionRequisitos,
  Value<String?> p22RequisitosDificiles,
  Value<String?> p22RequisitosDificilesOtro,
  Value<String?> p23ProbSequia,
  Value<String?> p23ProbHuracan,
  Value<String?> p23ProbPlagas,
  Value<String?> p23ProbFaltaAgua,
  Value<String?> p23ProbPrecios,
  Value<String?> p23ProbPagoTardio,
  Value<String?> p23ProbCaminos,
  Value<String?> p23ProbFaltaInsumos,
  Value<String?> p23ProbConflictos,
  Value<String?> p23ProbInocuidad,
  Value<String?> p24ImpSequia,
  Value<String?> p24ImpHuracan,
  Value<String?> p24ImpPlagas,
  Value<String?> p24ImpFaltaAgua,
  Value<String?> p24ImpPrecios,
  Value<String?> p24ImpPagoTardio,
  Value<String?> p24ImpCaminos,
  Value<String?> p24ImpFaltaInsumos,
  Value<String?> p24ImpConflictos,
  Value<String?> p24ImpInocuidad,
  Value<String?> p25OtroRiesgo,
  Value<String?> p26Rol,
  Value<String?> p26RolOtro,
  Value<String?> p27Acopio,
  Value<String?> p27Calendario,
  Value<String?> p27Transporte,
  Value<String?> p27Circuitos,
  Value<String?> p27Compras,
  Value<String?> p27Confianza,
  Value<String?> p28FactoresConfianza,
  Value<String?> p29LlevaRegistro,
  Value<String?> p30DondeRegistra,
  Value<String?> p30DondeRegistraOtro,
  Value<String?> p31FrecuenciaRegistro,
  Value<String?> p32DisposicionRegistro,
  Value<String?> p33ApoyoRegistro,
  Value<String?> p33ApoyoRegistroOtro,
  Value<String?> p34TemasCapacitacion,
  Value<String?> p34TemasCapacitacionOtro,
  Value<String?> p35ProblemaUrgente,
  Value<String?> p35ProblemaUrgenteOtro,
  Value<String?> p36FormatoAprendizaje,
  Value<String?> p36FormatoAprendizajeOtro,
  Value<String?> p37TiempoCapacitacion,
  Value<String?> p38DificultadAsistencia,
  Value<String?> p38DificultadAsistenciaOtro,
  Value<String?> p39ActividadesRed,
  Value<String?> p40TallerDiseno,
  Value<double?> latitud,
  Value<double?> longitud,
  Value<int> rowid,
});
typedef $$RespuestasDiagnosticoTableUpdateCompanionBuilder
    = RespuestasDiagnosticoCompanion Function({
  Value<String> idLocal,
  Value<String> syncStatus,
  Value<DateTime> fechaCapturaLocal,
  Value<String?> formulario,
  Value<String?> p1ComunidadVive,
  Value<String?> p1BComunidadTrabaja,
  Value<String?> p2Consentimiento,
  Value<String?> p3Municipio,
  Value<String?> p4Nombre,
  Value<String?> p5Telefono,
  Value<String?> p6Taller,
  Value<String?> p7CultivoPrincipal,
  Value<String?> p7CultivoPrincipalOtro,
  Value<String?> p8FormaTrabajo,
  Value<String?> p9Distribucion,
  Value<String?> p9DistribucionOtro,
  Value<String?> p10MesesAlta,
  Value<String?> p11Policultivo,
  Value<String?> p11Cobertura,
  Value<String?> p11Plagas,
  Value<String?> p11Agua,
  Value<String?> p11Semillas,
  Value<String?> p11Barreras,
  Value<String?> p11Reduccion,
  Value<String?> p11Residuos,
  Value<String?> p12Destino,
  Value<String?> p12DestinoOtro,
  Value<String?> p12Impedimentos,
  Value<String?> p12ImpedimentosOtro,
  Value<String?> p13PracticaExitosa,
  Value<String?> p14Necesidades,
  Value<String?> p14AccesoEstable,
  Value<String?> p14PocaDependencia,
  Value<String?> p14Tradiciones,
  Value<String?> p14DietaFamiliar,
  Value<String?> p15MesesDificiles,
  Value<String?> p16TiempoTransporte,
  Value<String?> p17GastoTransporte,
  Value<String?> p18FrecuenciaViajes,
  Value<String?> p19Mermas,
  Value<String?> p19Conservacion,
  Value<String?> p19ConservacionCuales,
  Value<String?> p20MomentoPago,
  Value<String?> p21LimitacionRequisitos,
  Value<String?> p22RequisitosDificiles,
  Value<String?> p22RequisitosDificilesOtro,
  Value<String?> p23ProbSequia,
  Value<String?> p23ProbHuracan,
  Value<String?> p23ProbPlagas,
  Value<String?> p23ProbFaltaAgua,
  Value<String?> p23ProbPrecios,
  Value<String?> p23ProbPagoTardio,
  Value<String?> p23ProbCaminos,
  Value<String?> p23ProbFaltaInsumos,
  Value<String?> p23ProbConflictos,
  Value<String?> p23ProbInocuidad,
  Value<String?> p24ImpSequia,
  Value<String?> p24ImpHuracan,
  Value<String?> p24ImpPlagas,
  Value<String?> p24ImpFaltaAgua,
  Value<String?> p24ImpPrecios,
  Value<String?> p24ImpPagoTardio,
  Value<String?> p24ImpCaminos,
  Value<String?> p24ImpFaltaInsumos,
  Value<String?> p24ImpConflictos,
  Value<String?> p24ImpInocuidad,
  Value<String?> p25OtroRiesgo,
  Value<String?> p26Rol,
  Value<String?> p26RolOtro,
  Value<String?> p27Acopio,
  Value<String?> p27Calendario,
  Value<String?> p27Transporte,
  Value<String?> p27Circuitos,
  Value<String?> p27Compras,
  Value<String?> p27Confianza,
  Value<String?> p28FactoresConfianza,
  Value<String?> p29LlevaRegistro,
  Value<String?> p30DondeRegistra,
  Value<String?> p30DondeRegistraOtro,
  Value<String?> p31FrecuenciaRegistro,
  Value<String?> p32DisposicionRegistro,
  Value<String?> p33ApoyoRegistro,
  Value<String?> p33ApoyoRegistroOtro,
  Value<String?> p34TemasCapacitacion,
  Value<String?> p34TemasCapacitacionOtro,
  Value<String?> p35ProblemaUrgente,
  Value<String?> p35ProblemaUrgenteOtro,
  Value<String?> p36FormatoAprendizaje,
  Value<String?> p36FormatoAprendizajeOtro,
  Value<String?> p37TiempoCapacitacion,
  Value<String?> p38DificultadAsistencia,
  Value<String?> p38DificultadAsistenciaOtro,
  Value<String?> p39ActividadesRed,
  Value<String?> p40TallerDiseno,
  Value<double?> latitud,
  Value<double?> longitud,
  Value<int> rowid,
});

class $$RespuestasDiagnosticoTableFilterComposer
    extends Composer<_$AppDatabase, $RespuestasDiagnosticoTable> {
  $$RespuestasDiagnosticoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idLocal => $composableBuilder(
      column: $table.idLocal, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaCapturaLocal => $composableBuilder(
      column: $table.fechaCapturaLocal,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get formulario => $composableBuilder(
      column: $table.formulario, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p1ComunidadVive => $composableBuilder(
      column: $table.p1ComunidadVive,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p1BComunidadTrabaja => $composableBuilder(
      column: $table.p1BComunidadTrabaja,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p2Consentimiento => $composableBuilder(
      column: $table.p2Consentimiento,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p3Municipio => $composableBuilder(
      column: $table.p3Municipio, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p4Nombre => $composableBuilder(
      column: $table.p4Nombre, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p5Telefono => $composableBuilder(
      column: $table.p5Telefono, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p6Taller => $composableBuilder(
      column: $table.p6Taller, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p7CultivoPrincipal => $composableBuilder(
      column: $table.p7CultivoPrincipal,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p7CultivoPrincipalOtro => $composableBuilder(
      column: $table.p7CultivoPrincipalOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p8FormaTrabajo => $composableBuilder(
      column: $table.p8FormaTrabajo,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p9Distribucion => $composableBuilder(
      column: $table.p9Distribucion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p9DistribucionOtro => $composableBuilder(
      column: $table.p9DistribucionOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p10MesesAlta => $composableBuilder(
      column: $table.p10MesesAlta, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Policultivo => $composableBuilder(
      column: $table.p11Policultivo,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Cobertura => $composableBuilder(
      column: $table.p11Cobertura, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Plagas => $composableBuilder(
      column: $table.p11Plagas, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Agua => $composableBuilder(
      column: $table.p11Agua, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Semillas => $composableBuilder(
      column: $table.p11Semillas, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Barreras => $composableBuilder(
      column: $table.p11Barreras, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Reduccion => $composableBuilder(
      column: $table.p11Reduccion, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p11Residuos => $composableBuilder(
      column: $table.p11Residuos, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p12Destino => $composableBuilder(
      column: $table.p12Destino, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p12DestinoOtro => $composableBuilder(
      column: $table.p12DestinoOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p12Impedimentos => $composableBuilder(
      column: $table.p12Impedimentos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p12ImpedimentosOtro => $composableBuilder(
      column: $table.p12ImpedimentosOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p13PracticaExitosa => $composableBuilder(
      column: $table.p13PracticaExitosa,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p14Necesidades => $composableBuilder(
      column: $table.p14Necesidades,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p14AccesoEstable => $composableBuilder(
      column: $table.p14AccesoEstable,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p14PocaDependencia => $composableBuilder(
      column: $table.p14PocaDependencia,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p14Tradiciones => $composableBuilder(
      column: $table.p14Tradiciones,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p14DietaFamiliar => $composableBuilder(
      column: $table.p14DietaFamiliar,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p15MesesDificiles => $composableBuilder(
      column: $table.p15MesesDificiles,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p16TiempoTransporte => $composableBuilder(
      column: $table.p16TiempoTransporte,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p17GastoTransporte => $composableBuilder(
      column: $table.p17GastoTransporte,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p18FrecuenciaViajes => $composableBuilder(
      column: $table.p18FrecuenciaViajes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p19Mermas => $composableBuilder(
      column: $table.p19Mermas, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p19Conservacion => $composableBuilder(
      column: $table.p19Conservacion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p19ConservacionCuales => $composableBuilder(
      column: $table.p19ConservacionCuales,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p20MomentoPago => $composableBuilder(
      column: $table.p20MomentoPago,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p21LimitacionRequisitos => $composableBuilder(
      column: $table.p21LimitacionRequisitos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p22RequisitosDificiles => $composableBuilder(
      column: $table.p22RequisitosDificiles,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p22RequisitosDificilesOtro => $composableBuilder(
      column: $table.p22RequisitosDificilesOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbSequia => $composableBuilder(
      column: $table.p23ProbSequia, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbHuracan => $composableBuilder(
      column: $table.p23ProbHuracan,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbPlagas => $composableBuilder(
      column: $table.p23ProbPlagas, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbFaltaAgua => $composableBuilder(
      column: $table.p23ProbFaltaAgua,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbPrecios => $composableBuilder(
      column: $table.p23ProbPrecios,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbPagoTardio => $composableBuilder(
      column: $table.p23ProbPagoTardio,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbCaminos => $composableBuilder(
      column: $table.p23ProbCaminos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbFaltaInsumos => $composableBuilder(
      column: $table.p23ProbFaltaInsumos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbConflictos => $composableBuilder(
      column: $table.p23ProbConflictos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p23ProbInocuidad => $composableBuilder(
      column: $table.p23ProbInocuidad,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpSequia => $composableBuilder(
      column: $table.p24ImpSequia, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpHuracan => $composableBuilder(
      column: $table.p24ImpHuracan, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpPlagas => $composableBuilder(
      column: $table.p24ImpPlagas, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpFaltaAgua => $composableBuilder(
      column: $table.p24ImpFaltaAgua,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpPrecios => $composableBuilder(
      column: $table.p24ImpPrecios, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpPagoTardio => $composableBuilder(
      column: $table.p24ImpPagoTardio,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpCaminos => $composableBuilder(
      column: $table.p24ImpCaminos, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpFaltaInsumos => $composableBuilder(
      column: $table.p24ImpFaltaInsumos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpConflictos => $composableBuilder(
      column: $table.p24ImpConflictos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p24ImpInocuidad => $composableBuilder(
      column: $table.p24ImpInocuidad,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p25OtroRiesgo => $composableBuilder(
      column: $table.p25OtroRiesgo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p26Rol => $composableBuilder(
      column: $table.p26Rol, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p26RolOtro => $composableBuilder(
      column: $table.p26RolOtro, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Acopio => $composableBuilder(
      column: $table.p27Acopio, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Calendario => $composableBuilder(
      column: $table.p27Calendario, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Transporte => $composableBuilder(
      column: $table.p27Transporte, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Circuitos => $composableBuilder(
      column: $table.p27Circuitos, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Compras => $composableBuilder(
      column: $table.p27Compras, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p27Confianza => $composableBuilder(
      column: $table.p27Confianza, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p28FactoresConfianza => $composableBuilder(
      column: $table.p28FactoresConfianza,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p29LlevaRegistro => $composableBuilder(
      column: $table.p29LlevaRegistro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p30DondeRegistra => $composableBuilder(
      column: $table.p30DondeRegistra,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p30DondeRegistraOtro => $composableBuilder(
      column: $table.p30DondeRegistraOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p31FrecuenciaRegistro => $composableBuilder(
      column: $table.p31FrecuenciaRegistro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p32DisposicionRegistro => $composableBuilder(
      column: $table.p32DisposicionRegistro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p33ApoyoRegistro => $composableBuilder(
      column: $table.p33ApoyoRegistro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p33ApoyoRegistroOtro => $composableBuilder(
      column: $table.p33ApoyoRegistroOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p34TemasCapacitacion => $composableBuilder(
      column: $table.p34TemasCapacitacion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p34TemasCapacitacionOtro => $composableBuilder(
      column: $table.p34TemasCapacitacionOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p35ProblemaUrgente => $composableBuilder(
      column: $table.p35ProblemaUrgente,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p35ProblemaUrgenteOtro => $composableBuilder(
      column: $table.p35ProblemaUrgenteOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p36FormatoAprendizaje => $composableBuilder(
      column: $table.p36FormatoAprendizaje,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p36FormatoAprendizajeOtro => $composableBuilder(
      column: $table.p36FormatoAprendizajeOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p37TiempoCapacitacion => $composableBuilder(
      column: $table.p37TiempoCapacitacion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p38DificultadAsistencia => $composableBuilder(
      column: $table.p38DificultadAsistencia,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p38DificultadAsistenciaOtro => $composableBuilder(
      column: $table.p38DificultadAsistenciaOtro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p39ActividadesRed => $composableBuilder(
      column: $table.p39ActividadesRed,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get p40TallerDiseno => $composableBuilder(
      column: $table.p40TallerDiseno,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitud => $composableBuilder(
      column: $table.latitud, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitud => $composableBuilder(
      column: $table.longitud, builder: (column) => ColumnFilters(column));
}

class $$RespuestasDiagnosticoTableOrderingComposer
    extends Composer<_$AppDatabase, $RespuestasDiagnosticoTable> {
  $$RespuestasDiagnosticoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idLocal => $composableBuilder(
      column: $table.idLocal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaCapturaLocal => $composableBuilder(
      column: $table.fechaCapturaLocal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get formulario => $composableBuilder(
      column: $table.formulario, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p1ComunidadVive => $composableBuilder(
      column: $table.p1ComunidadVive,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p1BComunidadTrabaja => $composableBuilder(
      column: $table.p1BComunidadTrabaja,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p2Consentimiento => $composableBuilder(
      column: $table.p2Consentimiento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p3Municipio => $composableBuilder(
      column: $table.p3Municipio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p4Nombre => $composableBuilder(
      column: $table.p4Nombre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p5Telefono => $composableBuilder(
      column: $table.p5Telefono, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p6Taller => $composableBuilder(
      column: $table.p6Taller, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p7CultivoPrincipal => $composableBuilder(
      column: $table.p7CultivoPrincipal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p7CultivoPrincipalOtro => $composableBuilder(
      column: $table.p7CultivoPrincipalOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p8FormaTrabajo => $composableBuilder(
      column: $table.p8FormaTrabajo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p9Distribucion => $composableBuilder(
      column: $table.p9Distribucion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p9DistribucionOtro => $composableBuilder(
      column: $table.p9DistribucionOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p10MesesAlta => $composableBuilder(
      column: $table.p10MesesAlta,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Policultivo => $composableBuilder(
      column: $table.p11Policultivo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Cobertura => $composableBuilder(
      column: $table.p11Cobertura,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Plagas => $composableBuilder(
      column: $table.p11Plagas, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Agua => $composableBuilder(
      column: $table.p11Agua, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Semillas => $composableBuilder(
      column: $table.p11Semillas, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Barreras => $composableBuilder(
      column: $table.p11Barreras, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Reduccion => $composableBuilder(
      column: $table.p11Reduccion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p11Residuos => $composableBuilder(
      column: $table.p11Residuos, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p12Destino => $composableBuilder(
      column: $table.p12Destino, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p12DestinoOtro => $composableBuilder(
      column: $table.p12DestinoOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p12Impedimentos => $composableBuilder(
      column: $table.p12Impedimentos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p12ImpedimentosOtro => $composableBuilder(
      column: $table.p12ImpedimentosOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p13PracticaExitosa => $composableBuilder(
      column: $table.p13PracticaExitosa,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p14Necesidades => $composableBuilder(
      column: $table.p14Necesidades,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p14AccesoEstable => $composableBuilder(
      column: $table.p14AccesoEstable,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p14PocaDependencia => $composableBuilder(
      column: $table.p14PocaDependencia,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p14Tradiciones => $composableBuilder(
      column: $table.p14Tradiciones,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p14DietaFamiliar => $composableBuilder(
      column: $table.p14DietaFamiliar,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p15MesesDificiles => $composableBuilder(
      column: $table.p15MesesDificiles,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p16TiempoTransporte => $composableBuilder(
      column: $table.p16TiempoTransporte,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p17GastoTransporte => $composableBuilder(
      column: $table.p17GastoTransporte,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p18FrecuenciaViajes => $composableBuilder(
      column: $table.p18FrecuenciaViajes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p19Mermas => $composableBuilder(
      column: $table.p19Mermas, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p19Conservacion => $composableBuilder(
      column: $table.p19Conservacion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p19ConservacionCuales => $composableBuilder(
      column: $table.p19ConservacionCuales,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p20MomentoPago => $composableBuilder(
      column: $table.p20MomentoPago,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p21LimitacionRequisitos => $composableBuilder(
      column: $table.p21LimitacionRequisitos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p22RequisitosDificiles => $composableBuilder(
      column: $table.p22RequisitosDificiles,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p22RequisitosDificilesOtro => $composableBuilder(
      column: $table.p22RequisitosDificilesOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbSequia => $composableBuilder(
      column: $table.p23ProbSequia,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbHuracan => $composableBuilder(
      column: $table.p23ProbHuracan,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbPlagas => $composableBuilder(
      column: $table.p23ProbPlagas,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbFaltaAgua => $composableBuilder(
      column: $table.p23ProbFaltaAgua,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbPrecios => $composableBuilder(
      column: $table.p23ProbPrecios,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbPagoTardio => $composableBuilder(
      column: $table.p23ProbPagoTardio,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbCaminos => $composableBuilder(
      column: $table.p23ProbCaminos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbFaltaInsumos => $composableBuilder(
      column: $table.p23ProbFaltaInsumos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbConflictos => $composableBuilder(
      column: $table.p23ProbConflictos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p23ProbInocuidad => $composableBuilder(
      column: $table.p23ProbInocuidad,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpSequia => $composableBuilder(
      column: $table.p24ImpSequia,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpHuracan => $composableBuilder(
      column: $table.p24ImpHuracan,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpPlagas => $composableBuilder(
      column: $table.p24ImpPlagas,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpFaltaAgua => $composableBuilder(
      column: $table.p24ImpFaltaAgua,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpPrecios => $composableBuilder(
      column: $table.p24ImpPrecios,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpPagoTardio => $composableBuilder(
      column: $table.p24ImpPagoTardio,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpCaminos => $composableBuilder(
      column: $table.p24ImpCaminos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpFaltaInsumos => $composableBuilder(
      column: $table.p24ImpFaltaInsumos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpConflictos => $composableBuilder(
      column: $table.p24ImpConflictos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p24ImpInocuidad => $composableBuilder(
      column: $table.p24ImpInocuidad,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p25OtroRiesgo => $composableBuilder(
      column: $table.p25OtroRiesgo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p26Rol => $composableBuilder(
      column: $table.p26Rol, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p26RolOtro => $composableBuilder(
      column: $table.p26RolOtro, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Acopio => $composableBuilder(
      column: $table.p27Acopio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Calendario => $composableBuilder(
      column: $table.p27Calendario,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Transporte => $composableBuilder(
      column: $table.p27Transporte,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Circuitos => $composableBuilder(
      column: $table.p27Circuitos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Compras => $composableBuilder(
      column: $table.p27Compras, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p27Confianza => $composableBuilder(
      column: $table.p27Confianza,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p28FactoresConfianza => $composableBuilder(
      column: $table.p28FactoresConfianza,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p29LlevaRegistro => $composableBuilder(
      column: $table.p29LlevaRegistro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p30DondeRegistra => $composableBuilder(
      column: $table.p30DondeRegistra,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p30DondeRegistraOtro => $composableBuilder(
      column: $table.p30DondeRegistraOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p31FrecuenciaRegistro => $composableBuilder(
      column: $table.p31FrecuenciaRegistro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p32DisposicionRegistro => $composableBuilder(
      column: $table.p32DisposicionRegistro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p33ApoyoRegistro => $composableBuilder(
      column: $table.p33ApoyoRegistro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p33ApoyoRegistroOtro => $composableBuilder(
      column: $table.p33ApoyoRegistroOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p34TemasCapacitacion => $composableBuilder(
      column: $table.p34TemasCapacitacion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p34TemasCapacitacionOtro => $composableBuilder(
      column: $table.p34TemasCapacitacionOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p35ProblemaUrgente => $composableBuilder(
      column: $table.p35ProblemaUrgente,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p35ProblemaUrgenteOtro => $composableBuilder(
      column: $table.p35ProblemaUrgenteOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p36FormatoAprendizaje => $composableBuilder(
      column: $table.p36FormatoAprendizaje,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p36FormatoAprendizajeOtro => $composableBuilder(
      column: $table.p36FormatoAprendizajeOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p37TiempoCapacitacion => $composableBuilder(
      column: $table.p37TiempoCapacitacion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p38DificultadAsistencia => $composableBuilder(
      column: $table.p38DificultadAsistencia,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p38DificultadAsistenciaOtro => $composableBuilder(
      column: $table.p38DificultadAsistenciaOtro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p39ActividadesRed => $composableBuilder(
      column: $table.p39ActividadesRed,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get p40TallerDiseno => $composableBuilder(
      column: $table.p40TallerDiseno,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitud => $composableBuilder(
      column: $table.latitud, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitud => $composableBuilder(
      column: $table.longitud, builder: (column) => ColumnOrderings(column));
}

class $$RespuestasDiagnosticoTableAnnotationComposer
    extends Composer<_$AppDatabase, $RespuestasDiagnosticoTable> {
  $$RespuestasDiagnosticoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idLocal =>
      $composableBuilder(column: $table.idLocal, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaCapturaLocal => $composableBuilder(
      column: $table.fechaCapturaLocal, builder: (column) => column);

  GeneratedColumn<String> get formulario => $composableBuilder(
      column: $table.formulario, builder: (column) => column);

  GeneratedColumn<String> get p1ComunidadVive => $composableBuilder(
      column: $table.p1ComunidadVive, builder: (column) => column);

  GeneratedColumn<String> get p1BComunidadTrabaja => $composableBuilder(
      column: $table.p1BComunidadTrabaja, builder: (column) => column);

  GeneratedColumn<String> get p2Consentimiento => $composableBuilder(
      column: $table.p2Consentimiento, builder: (column) => column);

  GeneratedColumn<String> get p3Municipio => $composableBuilder(
      column: $table.p3Municipio, builder: (column) => column);

  GeneratedColumn<String> get p4Nombre =>
      $composableBuilder(column: $table.p4Nombre, builder: (column) => column);

  GeneratedColumn<String> get p5Telefono => $composableBuilder(
      column: $table.p5Telefono, builder: (column) => column);

  GeneratedColumn<String> get p6Taller =>
      $composableBuilder(column: $table.p6Taller, builder: (column) => column);

  GeneratedColumn<String> get p7CultivoPrincipal => $composableBuilder(
      column: $table.p7CultivoPrincipal, builder: (column) => column);

  GeneratedColumn<String> get p7CultivoPrincipalOtro => $composableBuilder(
      column: $table.p7CultivoPrincipalOtro, builder: (column) => column);

  GeneratedColumn<String> get p8FormaTrabajo => $composableBuilder(
      column: $table.p8FormaTrabajo, builder: (column) => column);

  GeneratedColumn<String> get p9Distribucion => $composableBuilder(
      column: $table.p9Distribucion, builder: (column) => column);

  GeneratedColumn<String> get p9DistribucionOtro => $composableBuilder(
      column: $table.p9DistribucionOtro, builder: (column) => column);

  GeneratedColumn<String> get p10MesesAlta => $composableBuilder(
      column: $table.p10MesesAlta, builder: (column) => column);

  GeneratedColumn<String> get p11Policultivo => $composableBuilder(
      column: $table.p11Policultivo, builder: (column) => column);

  GeneratedColumn<String> get p11Cobertura => $composableBuilder(
      column: $table.p11Cobertura, builder: (column) => column);

  GeneratedColumn<String> get p11Plagas =>
      $composableBuilder(column: $table.p11Plagas, builder: (column) => column);

  GeneratedColumn<String> get p11Agua =>
      $composableBuilder(column: $table.p11Agua, builder: (column) => column);

  GeneratedColumn<String> get p11Semillas => $composableBuilder(
      column: $table.p11Semillas, builder: (column) => column);

  GeneratedColumn<String> get p11Barreras => $composableBuilder(
      column: $table.p11Barreras, builder: (column) => column);

  GeneratedColumn<String> get p11Reduccion => $composableBuilder(
      column: $table.p11Reduccion, builder: (column) => column);

  GeneratedColumn<String> get p11Residuos => $composableBuilder(
      column: $table.p11Residuos, builder: (column) => column);

  GeneratedColumn<String> get p12Destino => $composableBuilder(
      column: $table.p12Destino, builder: (column) => column);

  GeneratedColumn<String> get p12DestinoOtro => $composableBuilder(
      column: $table.p12DestinoOtro, builder: (column) => column);

  GeneratedColumn<String> get p12Impedimentos => $composableBuilder(
      column: $table.p12Impedimentos, builder: (column) => column);

  GeneratedColumn<String> get p12ImpedimentosOtro => $composableBuilder(
      column: $table.p12ImpedimentosOtro, builder: (column) => column);

  GeneratedColumn<String> get p13PracticaExitosa => $composableBuilder(
      column: $table.p13PracticaExitosa, builder: (column) => column);

  GeneratedColumn<String> get p14Necesidades => $composableBuilder(
      column: $table.p14Necesidades, builder: (column) => column);

  GeneratedColumn<String> get p14AccesoEstable => $composableBuilder(
      column: $table.p14AccesoEstable, builder: (column) => column);

  GeneratedColumn<String> get p14PocaDependencia => $composableBuilder(
      column: $table.p14PocaDependencia, builder: (column) => column);

  GeneratedColumn<String> get p14Tradiciones => $composableBuilder(
      column: $table.p14Tradiciones, builder: (column) => column);

  GeneratedColumn<String> get p14DietaFamiliar => $composableBuilder(
      column: $table.p14DietaFamiliar, builder: (column) => column);

  GeneratedColumn<String> get p15MesesDificiles => $composableBuilder(
      column: $table.p15MesesDificiles, builder: (column) => column);

  GeneratedColumn<String> get p16TiempoTransporte => $composableBuilder(
      column: $table.p16TiempoTransporte, builder: (column) => column);

  GeneratedColumn<String> get p17GastoTransporte => $composableBuilder(
      column: $table.p17GastoTransporte, builder: (column) => column);

  GeneratedColumn<String> get p18FrecuenciaViajes => $composableBuilder(
      column: $table.p18FrecuenciaViajes, builder: (column) => column);

  GeneratedColumn<String> get p19Mermas =>
      $composableBuilder(column: $table.p19Mermas, builder: (column) => column);

  GeneratedColumn<String> get p19Conservacion => $composableBuilder(
      column: $table.p19Conservacion, builder: (column) => column);

  GeneratedColumn<String> get p19ConservacionCuales => $composableBuilder(
      column: $table.p19ConservacionCuales, builder: (column) => column);

  GeneratedColumn<String> get p20MomentoPago => $composableBuilder(
      column: $table.p20MomentoPago, builder: (column) => column);

  GeneratedColumn<String> get p21LimitacionRequisitos => $composableBuilder(
      column: $table.p21LimitacionRequisitos, builder: (column) => column);

  GeneratedColumn<String> get p22RequisitosDificiles => $composableBuilder(
      column: $table.p22RequisitosDificiles, builder: (column) => column);

  GeneratedColumn<String> get p22RequisitosDificilesOtro => $composableBuilder(
      column: $table.p22RequisitosDificilesOtro, builder: (column) => column);

  GeneratedColumn<String> get p23ProbSequia => $composableBuilder(
      column: $table.p23ProbSequia, builder: (column) => column);

  GeneratedColumn<String> get p23ProbHuracan => $composableBuilder(
      column: $table.p23ProbHuracan, builder: (column) => column);

  GeneratedColumn<String> get p23ProbPlagas => $composableBuilder(
      column: $table.p23ProbPlagas, builder: (column) => column);

  GeneratedColumn<String> get p23ProbFaltaAgua => $composableBuilder(
      column: $table.p23ProbFaltaAgua, builder: (column) => column);

  GeneratedColumn<String> get p23ProbPrecios => $composableBuilder(
      column: $table.p23ProbPrecios, builder: (column) => column);

  GeneratedColumn<String> get p23ProbPagoTardio => $composableBuilder(
      column: $table.p23ProbPagoTardio, builder: (column) => column);

  GeneratedColumn<String> get p23ProbCaminos => $composableBuilder(
      column: $table.p23ProbCaminos, builder: (column) => column);

  GeneratedColumn<String> get p23ProbFaltaInsumos => $composableBuilder(
      column: $table.p23ProbFaltaInsumos, builder: (column) => column);

  GeneratedColumn<String> get p23ProbConflictos => $composableBuilder(
      column: $table.p23ProbConflictos, builder: (column) => column);

  GeneratedColumn<String> get p23ProbInocuidad => $composableBuilder(
      column: $table.p23ProbInocuidad, builder: (column) => column);

  GeneratedColumn<String> get p24ImpSequia => $composableBuilder(
      column: $table.p24ImpSequia, builder: (column) => column);

  GeneratedColumn<String> get p24ImpHuracan => $composableBuilder(
      column: $table.p24ImpHuracan, builder: (column) => column);

  GeneratedColumn<String> get p24ImpPlagas => $composableBuilder(
      column: $table.p24ImpPlagas, builder: (column) => column);

  GeneratedColumn<String> get p24ImpFaltaAgua => $composableBuilder(
      column: $table.p24ImpFaltaAgua, builder: (column) => column);

  GeneratedColumn<String> get p24ImpPrecios => $composableBuilder(
      column: $table.p24ImpPrecios, builder: (column) => column);

  GeneratedColumn<String> get p24ImpPagoTardio => $composableBuilder(
      column: $table.p24ImpPagoTardio, builder: (column) => column);

  GeneratedColumn<String> get p24ImpCaminos => $composableBuilder(
      column: $table.p24ImpCaminos, builder: (column) => column);

  GeneratedColumn<String> get p24ImpFaltaInsumos => $composableBuilder(
      column: $table.p24ImpFaltaInsumos, builder: (column) => column);

  GeneratedColumn<String> get p24ImpConflictos => $composableBuilder(
      column: $table.p24ImpConflictos, builder: (column) => column);

  GeneratedColumn<String> get p24ImpInocuidad => $composableBuilder(
      column: $table.p24ImpInocuidad, builder: (column) => column);

  GeneratedColumn<String> get p25OtroRiesgo => $composableBuilder(
      column: $table.p25OtroRiesgo, builder: (column) => column);

  GeneratedColumn<String> get p26Rol =>
      $composableBuilder(column: $table.p26Rol, builder: (column) => column);

  GeneratedColumn<String> get p26RolOtro => $composableBuilder(
      column: $table.p26RolOtro, builder: (column) => column);

  GeneratedColumn<String> get p27Acopio =>
      $composableBuilder(column: $table.p27Acopio, builder: (column) => column);

  GeneratedColumn<String> get p27Calendario => $composableBuilder(
      column: $table.p27Calendario, builder: (column) => column);

  GeneratedColumn<String> get p27Transporte => $composableBuilder(
      column: $table.p27Transporte, builder: (column) => column);

  GeneratedColumn<String> get p27Circuitos => $composableBuilder(
      column: $table.p27Circuitos, builder: (column) => column);

  GeneratedColumn<String> get p27Compras => $composableBuilder(
      column: $table.p27Compras, builder: (column) => column);

  GeneratedColumn<String> get p27Confianza => $composableBuilder(
      column: $table.p27Confianza, builder: (column) => column);

  GeneratedColumn<String> get p28FactoresConfianza => $composableBuilder(
      column: $table.p28FactoresConfianza, builder: (column) => column);

  GeneratedColumn<String> get p29LlevaRegistro => $composableBuilder(
      column: $table.p29LlevaRegistro, builder: (column) => column);

  GeneratedColumn<String> get p30DondeRegistra => $composableBuilder(
      column: $table.p30DondeRegistra, builder: (column) => column);

  GeneratedColumn<String> get p30DondeRegistraOtro => $composableBuilder(
      column: $table.p30DondeRegistraOtro, builder: (column) => column);

  GeneratedColumn<String> get p31FrecuenciaRegistro => $composableBuilder(
      column: $table.p31FrecuenciaRegistro, builder: (column) => column);

  GeneratedColumn<String> get p32DisposicionRegistro => $composableBuilder(
      column: $table.p32DisposicionRegistro, builder: (column) => column);

  GeneratedColumn<String> get p33ApoyoRegistro => $composableBuilder(
      column: $table.p33ApoyoRegistro, builder: (column) => column);

  GeneratedColumn<String> get p33ApoyoRegistroOtro => $composableBuilder(
      column: $table.p33ApoyoRegistroOtro, builder: (column) => column);

  GeneratedColumn<String> get p34TemasCapacitacion => $composableBuilder(
      column: $table.p34TemasCapacitacion, builder: (column) => column);

  GeneratedColumn<String> get p34TemasCapacitacionOtro => $composableBuilder(
      column: $table.p34TemasCapacitacionOtro, builder: (column) => column);

  GeneratedColumn<String> get p35ProblemaUrgente => $composableBuilder(
      column: $table.p35ProblemaUrgente, builder: (column) => column);

  GeneratedColumn<String> get p35ProblemaUrgenteOtro => $composableBuilder(
      column: $table.p35ProblemaUrgenteOtro, builder: (column) => column);

  GeneratedColumn<String> get p36FormatoAprendizaje => $composableBuilder(
      column: $table.p36FormatoAprendizaje, builder: (column) => column);

  GeneratedColumn<String> get p36FormatoAprendizajeOtro => $composableBuilder(
      column: $table.p36FormatoAprendizajeOtro, builder: (column) => column);

  GeneratedColumn<String> get p37TiempoCapacitacion => $composableBuilder(
      column: $table.p37TiempoCapacitacion, builder: (column) => column);

  GeneratedColumn<String> get p38DificultadAsistencia => $composableBuilder(
      column: $table.p38DificultadAsistencia, builder: (column) => column);

  GeneratedColumn<String> get p38DificultadAsistenciaOtro => $composableBuilder(
      column: $table.p38DificultadAsistenciaOtro, builder: (column) => column);

  GeneratedColumn<String> get p39ActividadesRed => $composableBuilder(
      column: $table.p39ActividadesRed, builder: (column) => column);

  GeneratedColumn<String> get p40TallerDiseno => $composableBuilder(
      column: $table.p40TallerDiseno, builder: (column) => column);

  GeneratedColumn<double> get latitud =>
      $composableBuilder(column: $table.latitud, builder: (column) => column);

  GeneratedColumn<double> get longitud =>
      $composableBuilder(column: $table.longitud, builder: (column) => column);
}

class $$RespuestasDiagnosticoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RespuestasDiagnosticoTable,
    RespuestasDiagnosticoData,
    $$RespuestasDiagnosticoTableFilterComposer,
    $$RespuestasDiagnosticoTableOrderingComposer,
    $$RespuestasDiagnosticoTableAnnotationComposer,
    $$RespuestasDiagnosticoTableCreateCompanionBuilder,
    $$RespuestasDiagnosticoTableUpdateCompanionBuilder,
    (
      RespuestasDiagnosticoData,
      BaseReferences<_$AppDatabase, $RespuestasDiagnosticoTable,
          RespuestasDiagnosticoData>
    ),
    RespuestasDiagnosticoData,
    PrefetchHooks Function()> {
  $$RespuestasDiagnosticoTableTableManager(
      _$AppDatabase db, $RespuestasDiagnosticoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RespuestasDiagnosticoTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$RespuestasDiagnosticoTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RespuestasDiagnosticoTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> idLocal = const Value.absent(),
            Value<String> syncStatus = const Value.absent(),
            Value<DateTime> fechaCapturaLocal = const Value.absent(),
            Value<String?> formulario = const Value.absent(),
            Value<String?> p1ComunidadVive = const Value.absent(),
            Value<String?> p1BComunidadTrabaja = const Value.absent(),
            Value<String?> p2Consentimiento = const Value.absent(),
            Value<String?> p3Municipio = const Value.absent(),
            Value<String?> p4Nombre = const Value.absent(),
            Value<String?> p5Telefono = const Value.absent(),
            Value<String?> p6Taller = const Value.absent(),
            Value<String?> p7CultivoPrincipal = const Value.absent(),
            Value<String?> p7CultivoPrincipalOtro = const Value.absent(),
            Value<String?> p8FormaTrabajo = const Value.absent(),
            Value<String?> p9Distribucion = const Value.absent(),
            Value<String?> p9DistribucionOtro = const Value.absent(),
            Value<String?> p10MesesAlta = const Value.absent(),
            Value<String?> p11Policultivo = const Value.absent(),
            Value<String?> p11Cobertura = const Value.absent(),
            Value<String?> p11Plagas = const Value.absent(),
            Value<String?> p11Agua = const Value.absent(),
            Value<String?> p11Semillas = const Value.absent(),
            Value<String?> p11Barreras = const Value.absent(),
            Value<String?> p11Reduccion = const Value.absent(),
            Value<String?> p11Residuos = const Value.absent(),
            Value<String?> p12Destino = const Value.absent(),
            Value<String?> p12DestinoOtro = const Value.absent(),
            Value<String?> p12Impedimentos = const Value.absent(),
            Value<String?> p12ImpedimentosOtro = const Value.absent(),
            Value<String?> p13PracticaExitosa = const Value.absent(),
            Value<String?> p14Necesidades = const Value.absent(),
            Value<String?> p14AccesoEstable = const Value.absent(),
            Value<String?> p14PocaDependencia = const Value.absent(),
            Value<String?> p14Tradiciones = const Value.absent(),
            Value<String?> p14DietaFamiliar = const Value.absent(),
            Value<String?> p15MesesDificiles = const Value.absent(),
            Value<String?> p16TiempoTransporte = const Value.absent(),
            Value<String?> p17GastoTransporte = const Value.absent(),
            Value<String?> p18FrecuenciaViajes = const Value.absent(),
            Value<String?> p19Mermas = const Value.absent(),
            Value<String?> p19Conservacion = const Value.absent(),
            Value<String?> p19ConservacionCuales = const Value.absent(),
            Value<String?> p20MomentoPago = const Value.absent(),
            Value<String?> p21LimitacionRequisitos = const Value.absent(),
            Value<String?> p22RequisitosDificiles = const Value.absent(),
            Value<String?> p22RequisitosDificilesOtro = const Value.absent(),
            Value<String?> p23ProbSequia = const Value.absent(),
            Value<String?> p23ProbHuracan = const Value.absent(),
            Value<String?> p23ProbPlagas = const Value.absent(),
            Value<String?> p23ProbFaltaAgua = const Value.absent(),
            Value<String?> p23ProbPrecios = const Value.absent(),
            Value<String?> p23ProbPagoTardio = const Value.absent(),
            Value<String?> p23ProbCaminos = const Value.absent(),
            Value<String?> p23ProbFaltaInsumos = const Value.absent(),
            Value<String?> p23ProbConflictos = const Value.absent(),
            Value<String?> p23ProbInocuidad = const Value.absent(),
            Value<String?> p24ImpSequia = const Value.absent(),
            Value<String?> p24ImpHuracan = const Value.absent(),
            Value<String?> p24ImpPlagas = const Value.absent(),
            Value<String?> p24ImpFaltaAgua = const Value.absent(),
            Value<String?> p24ImpPrecios = const Value.absent(),
            Value<String?> p24ImpPagoTardio = const Value.absent(),
            Value<String?> p24ImpCaminos = const Value.absent(),
            Value<String?> p24ImpFaltaInsumos = const Value.absent(),
            Value<String?> p24ImpConflictos = const Value.absent(),
            Value<String?> p24ImpInocuidad = const Value.absent(),
            Value<String?> p25OtroRiesgo = const Value.absent(),
            Value<String?> p26Rol = const Value.absent(),
            Value<String?> p26RolOtro = const Value.absent(),
            Value<String?> p27Acopio = const Value.absent(),
            Value<String?> p27Calendario = const Value.absent(),
            Value<String?> p27Transporte = const Value.absent(),
            Value<String?> p27Circuitos = const Value.absent(),
            Value<String?> p27Compras = const Value.absent(),
            Value<String?> p27Confianza = const Value.absent(),
            Value<String?> p28FactoresConfianza = const Value.absent(),
            Value<String?> p29LlevaRegistro = const Value.absent(),
            Value<String?> p30DondeRegistra = const Value.absent(),
            Value<String?> p30DondeRegistraOtro = const Value.absent(),
            Value<String?> p31FrecuenciaRegistro = const Value.absent(),
            Value<String?> p32DisposicionRegistro = const Value.absent(),
            Value<String?> p33ApoyoRegistro = const Value.absent(),
            Value<String?> p33ApoyoRegistroOtro = const Value.absent(),
            Value<String?> p34TemasCapacitacion = const Value.absent(),
            Value<String?> p34TemasCapacitacionOtro = const Value.absent(),
            Value<String?> p35ProblemaUrgente = const Value.absent(),
            Value<String?> p35ProblemaUrgenteOtro = const Value.absent(),
            Value<String?> p36FormatoAprendizaje = const Value.absent(),
            Value<String?> p36FormatoAprendizajeOtro = const Value.absent(),
            Value<String?> p37TiempoCapacitacion = const Value.absent(),
            Value<String?> p38DificultadAsistencia = const Value.absent(),
            Value<String?> p38DificultadAsistenciaOtro = const Value.absent(),
            Value<String?> p39ActividadesRed = const Value.absent(),
            Value<String?> p40TallerDiseno = const Value.absent(),
            Value<double?> latitud = const Value.absent(),
            Value<double?> longitud = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RespuestasDiagnosticoCompanion(
            idLocal: idLocal,
            syncStatus: syncStatus,
            fechaCapturaLocal: fechaCapturaLocal,
            formulario: formulario,
            p1ComunidadVive: p1ComunidadVive,
            p1BComunidadTrabaja: p1BComunidadTrabaja,
            p2Consentimiento: p2Consentimiento,
            p3Municipio: p3Municipio,
            p4Nombre: p4Nombre,
            p5Telefono: p5Telefono,
            p6Taller: p6Taller,
            p7CultivoPrincipal: p7CultivoPrincipal,
            p7CultivoPrincipalOtro: p7CultivoPrincipalOtro,
            p8FormaTrabajo: p8FormaTrabajo,
            p9Distribucion: p9Distribucion,
            p9DistribucionOtro: p9DistribucionOtro,
            p10MesesAlta: p10MesesAlta,
            p11Policultivo: p11Policultivo,
            p11Cobertura: p11Cobertura,
            p11Plagas: p11Plagas,
            p11Agua: p11Agua,
            p11Semillas: p11Semillas,
            p11Barreras: p11Barreras,
            p11Reduccion: p11Reduccion,
            p11Residuos: p11Residuos,
            p12Destino: p12Destino,
            p12DestinoOtro: p12DestinoOtro,
            p12Impedimentos: p12Impedimentos,
            p12ImpedimentosOtro: p12ImpedimentosOtro,
            p13PracticaExitosa: p13PracticaExitosa,
            p14Necesidades: p14Necesidades,
            p14AccesoEstable: p14AccesoEstable,
            p14PocaDependencia: p14PocaDependencia,
            p14Tradiciones: p14Tradiciones,
            p14DietaFamiliar: p14DietaFamiliar,
            p15MesesDificiles: p15MesesDificiles,
            p16TiempoTransporte: p16TiempoTransporte,
            p17GastoTransporte: p17GastoTransporte,
            p18FrecuenciaViajes: p18FrecuenciaViajes,
            p19Mermas: p19Mermas,
            p19Conservacion: p19Conservacion,
            p19ConservacionCuales: p19ConservacionCuales,
            p20MomentoPago: p20MomentoPago,
            p21LimitacionRequisitos: p21LimitacionRequisitos,
            p22RequisitosDificiles: p22RequisitosDificiles,
            p22RequisitosDificilesOtro: p22RequisitosDificilesOtro,
            p23ProbSequia: p23ProbSequia,
            p23ProbHuracan: p23ProbHuracan,
            p23ProbPlagas: p23ProbPlagas,
            p23ProbFaltaAgua: p23ProbFaltaAgua,
            p23ProbPrecios: p23ProbPrecios,
            p23ProbPagoTardio: p23ProbPagoTardio,
            p23ProbCaminos: p23ProbCaminos,
            p23ProbFaltaInsumos: p23ProbFaltaInsumos,
            p23ProbConflictos: p23ProbConflictos,
            p23ProbInocuidad: p23ProbInocuidad,
            p24ImpSequia: p24ImpSequia,
            p24ImpHuracan: p24ImpHuracan,
            p24ImpPlagas: p24ImpPlagas,
            p24ImpFaltaAgua: p24ImpFaltaAgua,
            p24ImpPrecios: p24ImpPrecios,
            p24ImpPagoTardio: p24ImpPagoTardio,
            p24ImpCaminos: p24ImpCaminos,
            p24ImpFaltaInsumos: p24ImpFaltaInsumos,
            p24ImpConflictos: p24ImpConflictos,
            p24ImpInocuidad: p24ImpInocuidad,
            p25OtroRiesgo: p25OtroRiesgo,
            p26Rol: p26Rol,
            p26RolOtro: p26RolOtro,
            p27Acopio: p27Acopio,
            p27Calendario: p27Calendario,
            p27Transporte: p27Transporte,
            p27Circuitos: p27Circuitos,
            p27Compras: p27Compras,
            p27Confianza: p27Confianza,
            p28FactoresConfianza: p28FactoresConfianza,
            p29LlevaRegistro: p29LlevaRegistro,
            p30DondeRegistra: p30DondeRegistra,
            p30DondeRegistraOtro: p30DondeRegistraOtro,
            p31FrecuenciaRegistro: p31FrecuenciaRegistro,
            p32DisposicionRegistro: p32DisposicionRegistro,
            p33ApoyoRegistro: p33ApoyoRegistro,
            p33ApoyoRegistroOtro: p33ApoyoRegistroOtro,
            p34TemasCapacitacion: p34TemasCapacitacion,
            p34TemasCapacitacionOtro: p34TemasCapacitacionOtro,
            p35ProblemaUrgente: p35ProblemaUrgente,
            p35ProblemaUrgenteOtro: p35ProblemaUrgenteOtro,
            p36FormatoAprendizaje: p36FormatoAprendizaje,
            p36FormatoAprendizajeOtro: p36FormatoAprendizajeOtro,
            p37TiempoCapacitacion: p37TiempoCapacitacion,
            p38DificultadAsistencia: p38DificultadAsistencia,
            p38DificultadAsistenciaOtro: p38DificultadAsistenciaOtro,
            p39ActividadesRed: p39ActividadesRed,
            p40TallerDiseno: p40TallerDiseno,
            latitud: latitud,
            longitud: longitud,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String idLocal,
            Value<String> syncStatus = const Value.absent(),
            required DateTime fechaCapturaLocal,
            Value<String?> formulario = const Value.absent(),
            Value<String?> p1ComunidadVive = const Value.absent(),
            Value<String?> p1BComunidadTrabaja = const Value.absent(),
            Value<String?> p2Consentimiento = const Value.absent(),
            Value<String?> p3Municipio = const Value.absent(),
            Value<String?> p4Nombre = const Value.absent(),
            Value<String?> p5Telefono = const Value.absent(),
            Value<String?> p6Taller = const Value.absent(),
            Value<String?> p7CultivoPrincipal = const Value.absent(),
            Value<String?> p7CultivoPrincipalOtro = const Value.absent(),
            Value<String?> p8FormaTrabajo = const Value.absent(),
            Value<String?> p9Distribucion = const Value.absent(),
            Value<String?> p9DistribucionOtro = const Value.absent(),
            Value<String?> p10MesesAlta = const Value.absent(),
            Value<String?> p11Policultivo = const Value.absent(),
            Value<String?> p11Cobertura = const Value.absent(),
            Value<String?> p11Plagas = const Value.absent(),
            Value<String?> p11Agua = const Value.absent(),
            Value<String?> p11Semillas = const Value.absent(),
            Value<String?> p11Barreras = const Value.absent(),
            Value<String?> p11Reduccion = const Value.absent(),
            Value<String?> p11Residuos = const Value.absent(),
            Value<String?> p12Destino = const Value.absent(),
            Value<String?> p12DestinoOtro = const Value.absent(),
            Value<String?> p12Impedimentos = const Value.absent(),
            Value<String?> p12ImpedimentosOtro = const Value.absent(),
            Value<String?> p13PracticaExitosa = const Value.absent(),
            Value<String?> p14Necesidades = const Value.absent(),
            Value<String?> p14AccesoEstable = const Value.absent(),
            Value<String?> p14PocaDependencia = const Value.absent(),
            Value<String?> p14Tradiciones = const Value.absent(),
            Value<String?> p14DietaFamiliar = const Value.absent(),
            Value<String?> p15MesesDificiles = const Value.absent(),
            Value<String?> p16TiempoTransporte = const Value.absent(),
            Value<String?> p17GastoTransporte = const Value.absent(),
            Value<String?> p18FrecuenciaViajes = const Value.absent(),
            Value<String?> p19Mermas = const Value.absent(),
            Value<String?> p19Conservacion = const Value.absent(),
            Value<String?> p19ConservacionCuales = const Value.absent(),
            Value<String?> p20MomentoPago = const Value.absent(),
            Value<String?> p21LimitacionRequisitos = const Value.absent(),
            Value<String?> p22RequisitosDificiles = const Value.absent(),
            Value<String?> p22RequisitosDificilesOtro = const Value.absent(),
            Value<String?> p23ProbSequia = const Value.absent(),
            Value<String?> p23ProbHuracan = const Value.absent(),
            Value<String?> p23ProbPlagas = const Value.absent(),
            Value<String?> p23ProbFaltaAgua = const Value.absent(),
            Value<String?> p23ProbPrecios = const Value.absent(),
            Value<String?> p23ProbPagoTardio = const Value.absent(),
            Value<String?> p23ProbCaminos = const Value.absent(),
            Value<String?> p23ProbFaltaInsumos = const Value.absent(),
            Value<String?> p23ProbConflictos = const Value.absent(),
            Value<String?> p23ProbInocuidad = const Value.absent(),
            Value<String?> p24ImpSequia = const Value.absent(),
            Value<String?> p24ImpHuracan = const Value.absent(),
            Value<String?> p24ImpPlagas = const Value.absent(),
            Value<String?> p24ImpFaltaAgua = const Value.absent(),
            Value<String?> p24ImpPrecios = const Value.absent(),
            Value<String?> p24ImpPagoTardio = const Value.absent(),
            Value<String?> p24ImpCaminos = const Value.absent(),
            Value<String?> p24ImpFaltaInsumos = const Value.absent(),
            Value<String?> p24ImpConflictos = const Value.absent(),
            Value<String?> p24ImpInocuidad = const Value.absent(),
            Value<String?> p25OtroRiesgo = const Value.absent(),
            Value<String?> p26Rol = const Value.absent(),
            Value<String?> p26RolOtro = const Value.absent(),
            Value<String?> p27Acopio = const Value.absent(),
            Value<String?> p27Calendario = const Value.absent(),
            Value<String?> p27Transporte = const Value.absent(),
            Value<String?> p27Circuitos = const Value.absent(),
            Value<String?> p27Compras = const Value.absent(),
            Value<String?> p27Confianza = const Value.absent(),
            Value<String?> p28FactoresConfianza = const Value.absent(),
            Value<String?> p29LlevaRegistro = const Value.absent(),
            Value<String?> p30DondeRegistra = const Value.absent(),
            Value<String?> p30DondeRegistraOtro = const Value.absent(),
            Value<String?> p31FrecuenciaRegistro = const Value.absent(),
            Value<String?> p32DisposicionRegistro = const Value.absent(),
            Value<String?> p33ApoyoRegistro = const Value.absent(),
            Value<String?> p33ApoyoRegistroOtro = const Value.absent(),
            Value<String?> p34TemasCapacitacion = const Value.absent(),
            Value<String?> p34TemasCapacitacionOtro = const Value.absent(),
            Value<String?> p35ProblemaUrgente = const Value.absent(),
            Value<String?> p35ProblemaUrgenteOtro = const Value.absent(),
            Value<String?> p36FormatoAprendizaje = const Value.absent(),
            Value<String?> p36FormatoAprendizajeOtro = const Value.absent(),
            Value<String?> p37TiempoCapacitacion = const Value.absent(),
            Value<String?> p38DificultadAsistencia = const Value.absent(),
            Value<String?> p38DificultadAsistenciaOtro = const Value.absent(),
            Value<String?> p39ActividadesRed = const Value.absent(),
            Value<String?> p40TallerDiseno = const Value.absent(),
            Value<double?> latitud = const Value.absent(),
            Value<double?> longitud = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RespuestasDiagnosticoCompanion.insert(
            idLocal: idLocal,
            syncStatus: syncStatus,
            fechaCapturaLocal: fechaCapturaLocal,
            formulario: formulario,
            p1ComunidadVive: p1ComunidadVive,
            p1BComunidadTrabaja: p1BComunidadTrabaja,
            p2Consentimiento: p2Consentimiento,
            p3Municipio: p3Municipio,
            p4Nombre: p4Nombre,
            p5Telefono: p5Telefono,
            p6Taller: p6Taller,
            p7CultivoPrincipal: p7CultivoPrincipal,
            p7CultivoPrincipalOtro: p7CultivoPrincipalOtro,
            p8FormaTrabajo: p8FormaTrabajo,
            p9Distribucion: p9Distribucion,
            p9DistribucionOtro: p9DistribucionOtro,
            p10MesesAlta: p10MesesAlta,
            p11Policultivo: p11Policultivo,
            p11Cobertura: p11Cobertura,
            p11Plagas: p11Plagas,
            p11Agua: p11Agua,
            p11Semillas: p11Semillas,
            p11Barreras: p11Barreras,
            p11Reduccion: p11Reduccion,
            p11Residuos: p11Residuos,
            p12Destino: p12Destino,
            p12DestinoOtro: p12DestinoOtro,
            p12Impedimentos: p12Impedimentos,
            p12ImpedimentosOtro: p12ImpedimentosOtro,
            p13PracticaExitosa: p13PracticaExitosa,
            p14Necesidades: p14Necesidades,
            p14AccesoEstable: p14AccesoEstable,
            p14PocaDependencia: p14PocaDependencia,
            p14Tradiciones: p14Tradiciones,
            p14DietaFamiliar: p14DietaFamiliar,
            p15MesesDificiles: p15MesesDificiles,
            p16TiempoTransporte: p16TiempoTransporte,
            p17GastoTransporte: p17GastoTransporte,
            p18FrecuenciaViajes: p18FrecuenciaViajes,
            p19Mermas: p19Mermas,
            p19Conservacion: p19Conservacion,
            p19ConservacionCuales: p19ConservacionCuales,
            p20MomentoPago: p20MomentoPago,
            p21LimitacionRequisitos: p21LimitacionRequisitos,
            p22RequisitosDificiles: p22RequisitosDificiles,
            p22RequisitosDificilesOtro: p22RequisitosDificilesOtro,
            p23ProbSequia: p23ProbSequia,
            p23ProbHuracan: p23ProbHuracan,
            p23ProbPlagas: p23ProbPlagas,
            p23ProbFaltaAgua: p23ProbFaltaAgua,
            p23ProbPrecios: p23ProbPrecios,
            p23ProbPagoTardio: p23ProbPagoTardio,
            p23ProbCaminos: p23ProbCaminos,
            p23ProbFaltaInsumos: p23ProbFaltaInsumos,
            p23ProbConflictos: p23ProbConflictos,
            p23ProbInocuidad: p23ProbInocuidad,
            p24ImpSequia: p24ImpSequia,
            p24ImpHuracan: p24ImpHuracan,
            p24ImpPlagas: p24ImpPlagas,
            p24ImpFaltaAgua: p24ImpFaltaAgua,
            p24ImpPrecios: p24ImpPrecios,
            p24ImpPagoTardio: p24ImpPagoTardio,
            p24ImpCaminos: p24ImpCaminos,
            p24ImpFaltaInsumos: p24ImpFaltaInsumos,
            p24ImpConflictos: p24ImpConflictos,
            p24ImpInocuidad: p24ImpInocuidad,
            p25OtroRiesgo: p25OtroRiesgo,
            p26Rol: p26Rol,
            p26RolOtro: p26RolOtro,
            p27Acopio: p27Acopio,
            p27Calendario: p27Calendario,
            p27Transporte: p27Transporte,
            p27Circuitos: p27Circuitos,
            p27Compras: p27Compras,
            p27Confianza: p27Confianza,
            p28FactoresConfianza: p28FactoresConfianza,
            p29LlevaRegistro: p29LlevaRegistro,
            p30DondeRegistra: p30DondeRegistra,
            p30DondeRegistraOtro: p30DondeRegistraOtro,
            p31FrecuenciaRegistro: p31FrecuenciaRegistro,
            p32DisposicionRegistro: p32DisposicionRegistro,
            p33ApoyoRegistro: p33ApoyoRegistro,
            p33ApoyoRegistroOtro: p33ApoyoRegistroOtro,
            p34TemasCapacitacion: p34TemasCapacitacion,
            p34TemasCapacitacionOtro: p34TemasCapacitacionOtro,
            p35ProblemaUrgente: p35ProblemaUrgente,
            p35ProblemaUrgenteOtro: p35ProblemaUrgenteOtro,
            p36FormatoAprendizaje: p36FormatoAprendizaje,
            p36FormatoAprendizajeOtro: p36FormatoAprendizajeOtro,
            p37TiempoCapacitacion: p37TiempoCapacitacion,
            p38DificultadAsistencia: p38DificultadAsistencia,
            p38DificultadAsistenciaOtro: p38DificultadAsistenciaOtro,
            p39ActividadesRed: p39ActividadesRed,
            p40TallerDiseno: p40TallerDiseno,
            latitud: latitud,
            longitud: longitud,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RespuestasDiagnosticoTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $RespuestasDiagnosticoTable,
        RespuestasDiagnosticoData,
        $$RespuestasDiagnosticoTableFilterComposer,
        $$RespuestasDiagnosticoTableOrderingComposer,
        $$RespuestasDiagnosticoTableAnnotationComposer,
        $$RespuestasDiagnosticoTableCreateCompanionBuilder,
        $$RespuestasDiagnosticoTableUpdateCompanionBuilder,
        (
          RespuestasDiagnosticoData,
          BaseReferences<_$AppDatabase, $RespuestasDiagnosticoTable,
              RespuestasDiagnosticoData>
        ),
        RespuestasDiagnosticoData,
        PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$RespuestasDiagnosticoTableTableManager get respuestasDiagnostico =>
      $$RespuestasDiagnosticoTableTableManager(_db, _db.respuestasDiagnostico);
}
