import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

/// Tabla local de almacenamiento para las respuestas de los diagnósticos.
/// Reclica la estructura de 95 columnas de la BD MySQL central (respuestas_diagnostico),
/// e incluye 3 columnas de control para el funcionamiento offline local.
class RespuestasDiagnostico extends Table {
  // --- COLUMNAS DE CONTROL LOCAL (Solo para uso offline en la app) ---
  TextColumn get idLocal => text()(); // UUID local
  // Valores válidos para syncStatus:
  // - 'borrador': encuesta en progreso, sin terminar (autoguardado local)
  // - 'pendiente': completada, lista para sincronización a servidor
  // - 'enviado': sincronizada exitosamente al servidor (Fase 2)
  TextColumn get syncStatus =>
      text().withDefault(const Constant('pendiente'))();
  DateTimeColumn get fechaCapturaLocal => dateTime()();
  TextColumn get borradorJson =>
      text().nullable()(); // Snapshot JSON local del estado de respuestas

  // --- COLUMNAS DE DATOS (Mismo esquema que MySQL respuestas_diagnostico) ---
  TextColumn get formulario => text().nullable()(); // 'ejecutivo' | 'ampliado'
  TextColumn get p1ComunidadVive => text().nullable()();
  TextColumn get p1BComunidadTrabaja => text().nullable()();
  TextColumn get p2Consentimiento => text().nullable()();
  TextColumn get p3Municipio => text().nullable()();
  TextColumn get p4Nombre => text().nullable()();
  TextColumn get p5Telefono => text().nullable()();
  TextColumn get p6Taller => text().nullable()();
  TextColumn get p7CultivoPrincipal => text().nullable()();
  TextColumn get p7CultivoPrincipalOtro => text().nullable()();
  TextColumn get p8FormaTrabajo => text().nullable()();
  TextColumn get p9Distribucion => text().nullable()();
  TextColumn get p9DistribucionOtro => text().nullable()();
  TextColumn get p10MesesAlta => text().nullable()();

  // P11 - Matriz de Prácticas Agroecológicas (8 filas)
  TextColumn get p11Policultivo => text().nullable()();
  TextColumn get p11Cobertura => text().nullable()();
  TextColumn get p11Plagas => text().nullable()();
  TextColumn get p11Agua => text().nullable()();
  TextColumn get p11Semillas => text().nullable()();
  TextColumn get p11Barreras => text().nullable()();
  TextColumn get p11Reduccion => text().nullable()();
  TextColumn get p11Residuos => text().nullable()();

  TextColumn get p12Destino => text().nullable()();
  TextColumn get p12DestinoOtro => text().nullable()();
  TextColumn get p12Impedimentos => text().nullable()();
  TextColumn get p12ImpedimentosOtro => text().nullable()();
  TextColumn get p13PracticaExitosa => text().nullable()();

  // P14 - Matriz de Soberanía (5 filas)
  TextColumn get p14Necesidades => text().nullable()();
  TextColumn get p14AccesoEstable => text().nullable()();
  TextColumn get p14PocaDependencia => text().nullable()();
  TextColumn get p14Tradiciones => text().nullable()();
  TextColumn get p14DietaFamiliar => text().nullable()();

  TextColumn get p15MesesDificiles => text().nullable()();
  TextColumn get p16TiempoTransporte => text().nullable()();
  TextColumn get p17GastoTransporte => text().nullable()();
  TextColumn get p18FrecuenciaViajes => text().nullable()();
  TextColumn get p19Mermas => text().nullable()();
  TextColumn get p19Conservacion => text().nullable()();
  TextColumn get p19ConservacionCuales => text().nullable()();
  TextColumn get p20MomentoPago => text().nullable()();
  TextColumn get p21LimitacionRequisitos => text().nullable()();
  TextColumn get p22RequisitosDificiles => text().nullable()();
  TextColumn get p22RequisitosDificilesOtro => text().nullable()();

  // P23 - Matriz de Probabilidad de Riesgos (10 filas)
  TextColumn get p23ProbSequia => text().nullable()();
  TextColumn get p23ProbHuracan => text().nullable()();
  TextColumn get p23ProbPlagas => text().nullable()();
  TextColumn get p23ProbFaltaAgua => text().nullable()();
  TextColumn get p23ProbPrecios => text().nullable()();
  TextColumn get p23ProbPagoTardio => text().nullable()();
  TextColumn get p23ProbCaminos => text().nullable()();
  TextColumn get p23ProbFaltaInsumos => text().nullable()();
  TextColumn get p23ProbConflictos => text().nullable()();
  TextColumn get p23ProbInocuidad => text().nullable()();

  // Pendiente de definir con Dr. Gandhi — pregunta no implementada en la app actual (P24 Matriz de Impacto):
  TextColumn get p24ImpSequia => text().nullable()();
  TextColumn get p24ImpHuracan => text().nullable()();
  TextColumn get p24ImpPlagas => text().nullable()();
  TextColumn get p24ImpFaltaAgua => text().nullable()();
  TextColumn get p24ImpPrecios => text().nullable()();
  TextColumn get p24ImpPagoTardio => text().nullable()();
  TextColumn get p24ImpCaminos => text().nullable()();
  TextColumn get p24ImpFaltaInsumos => text().nullable()();
  TextColumn get p24ImpConflictos => text().nullable()();
  TextColumn get p24ImpInocuidad => text().nullable()();

  TextColumn get p25OtroRiesgo => text().nullable()();
  TextColumn get p26Rol => text().nullable()();
  TextColumn get p26RolOtro => text().nullable()();

  // P27 - Matriz de Gobernanza y Red Logística (6 filas)
  TextColumn get p27Acopio => text().nullable()();
  TextColumn get p27Calendario => text().nullable()();
  TextColumn get p27Transporte => text().nullable()();
  TextColumn get p27Circuitos => text().nullable()();
  TextColumn get p27Compras => text().nullable()();
  TextColumn get p27Confianza => text().nullable()();

  TextColumn get p28FactoresConfianza => text().nullable()();
  TextColumn get p29LlevaRegistro => text().nullable()();
  TextColumn get p30DondeRegistra => text().nullable()();
  TextColumn get p30DondeRegistraOtro => text().nullable()();
  TextColumn get p31FrecuenciaRegistro => text().nullable()();
  TextColumn get p32DisposicionRegistro => text().nullable()();
  TextColumn get p33ApoyoRegistro => text().nullable()();
  TextColumn get p33ApoyoRegistroOtro => text().nullable()();
  TextColumn get p34TemasCapacitacion => text().nullable()();
  TextColumn get p34TemasCapacitacionOtro => text().nullable()();
  TextColumn get p35ProblemaUrgente => text().nullable()();
  TextColumn get p35ProblemaUrgenteOtro => text().nullable()();
  TextColumn get p36FormatoAprendizaje => text().nullable()();
  TextColumn get p36FormatoAprendizajeOtro => text().nullable()();
  TextColumn get p37TiempoCapacitacion => text().nullable()();
  TextColumn get p38DificultadAsistencia => text().nullable()();
  TextColumn get p38DificultadAsistenciaOtro => text().nullable()();
  TextColumn get p39ActividadesRed => text().nullable()();

  // Pendiente de definir con Dr. Gandhi — pregunta no implementada en la app actual (P40 Taller de Diseño):
  TextColumn get p40TallerDiseno => text().nullable()();

  RealColumn get latitud => real().nullable()();
  RealColumn get longitud => real().nullable()();

  @override
  Set<Column> get primaryKey => {idLocal};
}

@DriftDatabase(tables: [RespuestasDiagnostico])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _abrirConexion());

  @override
  int get schemaVersion => 2;

  // NOTA IMPORTANTE DE MIGRACIÓN:
  // CADA cambio futuro de columna en la base de datos (por ejemplo en Fase 2:
  // uuid_local, campos del encuestador, etc.) REQUIERE incrementar schemaVersion
  // en +1 y agregar su correspondiente paso de migración en esta estrategia (onUpgrade).
  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await m.addColumn(
                respuestasDiagnostico, respuestasDiagnostico.borradorJson);
          }
        },
      );
}

LazyDatabase _abrirConexion() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'diagnosticos.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
