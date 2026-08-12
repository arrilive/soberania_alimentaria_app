import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soberania_alimentaria_app/data/app_database.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/data/respuestas_repository.dart';

void main() {
  late AppDatabase db;
  late RespuestasRepository repository;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
    repository = RespuestasRepository(db);
  });

  tearDown(() async {
    await db.close();
  });

  test(
      'guardarRespuesta guarda correctamente las 4 matrices y columnas de datos',
      () async {
    final respuestasEjemplo = <String, dynamic>{
      'p1_comunidad_vive': 'Chimay',
      'p2_consentimiento': 'Sí',
      'p3_municipio': 'Chumayel',
      'p4_nombre': 'María González',
      'p11': <String, String>{
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
      'p14': <String, String>{
        'Decidimos qué producir según nuestras propias necesidades alimentarias':
            'De acuerdo',
        'Tenemos acceso estable a alimentos sanos durante todo el año':
            'Neutral',
        'Dependemos poco de semillas o insumos externos para producir':
            'De acuerdo',
        'Conservamos prácticas y alimentos tradicionales de la región':
            'De acuerdo',
        'Lo que producimos mejora nuestra dieta familiar, no solo nuestros ingresos':
            'De acuerdo',
      },
      'p23': <String, String>{
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
      'p27': <String, String>{
        'Participaría en un acopio comunitario si hay reglas claras y transparencia':
            'Muy de acuerdo',
        'Aceptaría un calendario coordinado de entrega o venta': 'De acuerdo',
        'Compartiría transporte o rutas si eso reduce costos y mermas':
            'De acuerdo',
        'Me interesa vender por circuitos cortos (canastas, tianguis, venta directa)':
            'Muy de acuerdo',
        'Me interesa acceder a compras públicas si hay acompañamiento':
            'Neutral',
        'Confío en mi comunidad para manejar fondos y logística con transparencia':
            'De acuerdo',
      },
    };

    final otrosEjemplo = <String, String>{};

    await repository.guardarRespuesta(
      schema: formularioEjecutivo,
      respuestas: respuestasEjemplo,
      otros: otrosEjemplo,
    );

    final guardadas = await repository.listarGuardadas();
    expect(guardadas.length, 1);

    final registro = guardadas.first;
    expect(registro.p1ComunidadVive, 'Chimay');
    expect(registro.p2Consentimiento, 'Sí');
    expect(registro.p3Municipio, 'Chumayel');
    expect(registro.p4Nombre, 'María González');

    // VERIFICACIÓN DE MATRIZ 11 (8 columnas NO NULL)
    expect(registro.p11Policultivo, 'Siempre');
    expect(registro.p11Cobertura, 'Frecuente');
    expect(registro.p11Plagas, 'Ocasional');
    expect(registro.p11Agua, 'Siempre');
    expect(registro.p11Semillas, 'Frecuente');
    expect(registro.p11Barreras, 'Siempre');
    expect(registro.p11Reduccion, 'No realiza');
    expect(registro.p11Residuos, 'Siempre');

    // VERIFICACIÓN DE MATRIZ 14 (5 columnas NO NULL)
    expect(registro.p14Necesidades, 'De acuerdo');
    expect(registro.p14AccesoEstable, 'Neutral');
    expect(registro.p14PocaDependencia, 'De acuerdo');
    expect(registro.p14Tradiciones, 'De acuerdo');
    expect(registro.p14DietaFamiliar, 'De acuerdo');

    // VERIFICACIÓN DE MATRIZ 23 (10 columnas NO NULL)
    expect(registro.p23ProbSequia, 'Muy probable');
    expect(registro.p23ProbHuracan, 'Probable');
    expect(registro.p23ProbPlagas, 'Posible');
    expect(registro.p23ProbFaltaAgua, 'Improbable');
    expect(registro.p23ProbPrecios, 'Muy improbable');
    expect(registro.p23ProbPagoTardio, 'Posible');
    expect(registro.p23ProbCaminos, 'Improbable');
    expect(registro.p23ProbFaltaInsumos, 'Muy probable');
    expect(registro.p23ProbConflictos, 'Improbable');
    expect(registro.p23ProbInocuidad, 'Muy improbable');

    // VERIFICACIÓN DE MATRIZ 27 (6 columnas NO NULL)
    expect(registro.p27Acopio, 'Muy de acuerdo');
    expect(registro.p27Calendario, 'De acuerdo');
    expect(registro.p27Transporte, 'De acuerdo');
    expect(registro.p27Circuitos, 'Muy de acuerdo');
    expect(registro.p27Compras, 'Neutral');
    expect(registro.p27Confianza, 'De acuerdo');

    // Conteo de pendientes
    final pendientes = await repository.contarPendientes();
    expect(pendientes, 1);
  });

  test(
      'guardarBorrador, buscarBorradorActivo, deserializarBorrador y finalizarRespuesta funcionan correctamente',
      () async {
    final idLocal = repository.generarIdLocal();
    final respuestas = <String, dynamic>{
      'p1_comunidad_vive': 'Chimay',
      'p7_cultivo_principal': <String>{
        'Milpa (maíz, frijol, calabaza)',
        'Otros'
      },
      'p11': <String, String>{
        'Policultivo o rotación (milpa, hortaliza)': 'Siempre',
      },
    };
    final otros = <String, String>{
      'p7_cultivo_principal': 'Calabaza local',
    };

    // 1. Guardar borrador
    await repository.guardarBorrador(
      idLocal: idLocal,
      schema: formularioEjecutivo,
      respuestas: respuestas,
      otros: otros,
    );

    // No debe contarse como pendiente de sincronización
    expect(await repository.contarPendientes(), 0);

    // 2. Buscar borrador activo
    final borrador = await repository.buscarBorradorActivo('ejecutivo');
    expect(borrador, isNotNull);
    expect(borrador!.idLocal, idLocal);
    expect(borrador.syncStatus, 'borrador');

    // 3. Deserializar borrador
    final deserializado = repository.deserializarBorrador(borrador);
    final respuestasRestauradas =
        deserializado['respuestas'] as Map<String, dynamic>;
    final otrosRestaurados = deserializado['otros'] as Map<String, String>;

    expect(respuestasRestauradas['p1_comunidad_vive'], 'Chimay');
    expect(respuestasRestauradas['p7_cultivo_principal'], isA<Set<String>>());
    expect(respuestasRestauradas['p7_cultivo_principal'],
        contains('Milpa (maíz, frijol, calabaza)'));
    expect(respuestasRestauradas['p7_cultivo_principal'], contains('Otros'));
    expect(respuestasRestauradas['p11'], isA<Map<String, String>>());
    expect(
        respuestasRestauradas['p11']
            ['Policultivo o rotación (milpa, hortaliza)'],
        'Siempre');
    expect(otrosRestaurados['p7_cultivo_principal'], 'Calabaza local');

    // 4. Finalizar respuesta
    await repository.finalizarRespuesta(idLocal);
    expect(await repository.contarPendientes(), 1);
    expect(await repository.buscarBorradorActivo('ejecutivo'), isNull);

    // 5. Eliminar borrador test
    await repository.guardarBorrador(
      idLocal: 'test_id_borrador_borrar',
      schema: formularioEjecutivo,
      respuestas: {},
      otros: {},
    );
    expect(await repository.buscarBorradorActivo('ejecutivo'), isNotNull);
    await repository.eliminarBorrador('test_id_borrador_borrar');
    expect(await repository.buscarBorradorActivo('ejecutivo'), isNull);
  });

  test(
      'guardarBorrador con seccionActual != 0 guarda y recupera la sección correctamente',
      () async {
    final idLocal = repository.generarIdLocal();
    await repository.guardarBorrador(
      idLocal: idLocal,
      schema: formularioEjecutivo,
      respuestas: {'p1_comunidad_vive': 'Chimay'},
      otros: {},
      seccionActual: 3,
    );

    final borrador = await repository.buscarBorradorActivo('ejecutivo');
    expect(borrador, isNotNull);

    final deserializado = repository.deserializarBorrador(borrador!);
    expect(deserializado['seccionActual'], 3);
  });
}
