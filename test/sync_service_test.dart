import 'dart:convert';
import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:soberania_alimentaria_app/data/app_database.dart';
import 'package:soberania_alimentaria_app/data/form_schemas.dart';
import 'package:soberania_alimentaria_app/data/respuestas_repository.dart';
import 'package:soberania_alimentaria_app/services/sync_service.dart';

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

  Future<void> insertarRegistroPendiente({
    String idLocal = 'id_test_1',
    String? folio = 'ABCDEFGH',
  }) async {
    await repository.guardarRespuesta(
      schema: formularioEjecutivo,
      respuestas: {
        'p1_comunidad_vive': 'Chimay',
        'p3_municipio': 'Chumayel',
        'p4_nombre': 'Productor Prueba',
      },
      otros: {},
      idLocal: idLocal,
    );
    await (db.update(db.respuestasDiagnostico)
          ..where((t) => t.idLocal.equals(idLocal)))
        .write(RespuestasDiagnosticoCompanion(folio: Value(folio)));
  }

  test('actualizarFolio NO sobrescribe un folio existente y retorna 0',
      () async {
    await insertarRegistroPendiente(
      idLocal: 'reg_existente',
      folio: 'ORIGINAL_1',
    );

    final filasAfectadas =
        await repository.actualizarFolio('reg_existente', 'NUEVO_FOLIO');

    expect(filasAfectadas, 0);

    final lista = await repository.listarGuardadas();
    final registro = lista.firstWhere((r) => r.idLocal == 'reg_existente');
    expect(registro.folio, 'ORIGINAL_1');
  });

  test('actualizarFolio actualiza con éxito si el folio es nulo o vacío',
      () async {
    await insertarRegistroPendiente(idLocal: 'reg_nulo', folio: null);

    final filasAfectadas =
        await repository.actualizarFolio('reg_nulo', 'FOLIO_ASIGNADO');

    expect(filasAfectadas, 1);

    final lista = await repository.listarGuardadas();
    final registro = lista.firstWhere((r) => r.idLocal == 'reg_nulo');
    expect(registro.folio, 'FOLIO_ASIGNADO');
  });

  test('sincronización exitosa (200 ok: true) marca registro como enviado',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO123');

    final mockClient = MockClient((request) async {
      expect(request.url.toString(), defaultEndpointUrl);
      expect(request.headers['X-Api-Key'], 'TEST_KEY');
      final body = jsonDecode(request.body) as Map<String, dynamic>;
      expect(body['folio'], 'FOLIO123');
      return http.Response(jsonEncode({'ok': true}), 200);
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'TEST_KEY',
      repository: repository,
    );

    expect(resultado.enviados, 1);
    expect(resultado.fallidos, 0);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'enviado');
  });

  test(
      'sincronización con duplicado: true se considera exitosa y marca como enviado',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_DUP');

    final mockClient = MockClient((request) async {
      return http.Response(
        jsonEncode({'ok': true, 'duplicado': true}),
        200,
      );
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'TEST_KEY',
      repository: repository,
    );

    expect(resultado.enviados, 1);
    expect(resultado.fallidos, 0);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'enviado');
  });

  test(
      'sincronización con duplicado: true sin ok explícito se considera exitosa',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_DUP2');

    final mockClient = MockClient((request) async {
      return http.Response(
        jsonEncode({'duplicado': true}),
        200,
      );
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'TEST_KEY',
      repository: repository,
    );

    expect(resultado.enviados, 1);
    expect(resultado.fallidos, 0);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'enviado');
  });

  test('fallo 401 marca error de autenticación y no cambia status a enviado',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_401');

    final mockClient = MockClient((request) async {
      return http.Response(
        jsonEncode({'ok': false, 'error': 'Invalid API Key'}),
        401,
      );
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'LLAVE_INVALIDA',
      repository: repository,
    );

    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.fallidosAutenticacion, 1);
    expect(resultado.errorAutenticacion, isTrue);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'pendiente');
  });

  test('fallo 403 marca error de autenticación y no cambia status a enviado',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_403');

    final mockClient = MockClient((request) async {
      return http.Response(
        jsonEncode({'ok': false, 'error': 'Forbidden'}),
        403,
      );
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'LLAVE_NO_PERMITIDA',
      repository: repository,
    );

    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.fallidosAutenticacion, 1);
    expect(resultado.errorAutenticacion, isTrue);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'pendiente');
  });

  test(
      'error 401 corta el ciclo de inmediato: de 3 pendientes solo se hace 1 request y los 3 quedan pendientes',
      () async {
    await insertarRegistroPendiente(idLocal: 'reg_1', folio: 'FOLIO_1');
    await insertarRegistroPendiente(idLocal: 'reg_2', folio: 'FOLIO_2');
    await insertarRegistroPendiente(idLocal: 'reg_3', folio: 'FOLIO_3');

    int requestsRealizados = 0;
    final mockClient = MockClient((request) async {
      requestsRealizados++;
      return http.Response(
        jsonEncode({'ok': false, 'error': 'Invalid API Key'}),
        401,
      );
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      apiKey: 'LLAVE_INVALIDA',
      repository: repository,
    );

    expect(requestsRealizados, 1);
    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.fallidosAutenticacion, 1);
    expect(resultado.errorAutenticacion, isTrue);

    final lista = await repository.listarGuardadas();
    expect(lista.length, 3);
    for (final r in lista) {
      expect(r.syncStatus, 'pendiente');
    }
  });

  test(
      'fallo 500 se reporta como fallido general y no como error de autenticación',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_500');

    final mockClient = MockClient((request) async {
      return http.Response('Server Error', 500);
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      repository: repository,
    );

    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.fallidosAutenticacion, 0);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'pendiente');
  });

  test(
      'timeout se captura y no marca registro como enviado cuando se excede la duración',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_TIMEOUT');

    final mockClient = MockClient((request) async {
      await Future.delayed(const Duration(milliseconds: 150));
      return http.Response(jsonEncode({'ok': true}), 200);
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      repository: repository,
      timeout: const Duration(milliseconds: 50),
    );

    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.fallidosAutenticacion, 0);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'pendiente');
  });

  test(
      'folio nulo genera un folio nuevo en BD, lo envía y nunca regenera uno existente',
      () async {
    await insertarRegistroPendiente(idLocal: 'reg_sin_folio', folio: null);

    final guardadoAntes = await repository.listarGuardadas();
    expect(guardadoAntes.first.folio, isNull);

    String? folioEnviado;
    final mockClient = MockClient((request) async {
      final body = jsonDecode(request.body) as Map<String, dynamic>;
      folioEnviado = body['folio'] as String?;
      return http.Response(jsonEncode({'ok': true}), 200);
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      repository: repository,
    );

    expect(resultado.enviados, 1);
    expect(resultado.fallidos, 0);

    expect(folioEnviado, isNotNull);
    expect(folioEnviado!.length, 8);

    final guardadoDespues = await repository.listarGuardadas();
    final registroFinal = guardadoDespues.first;
    expect(registroFinal.folio, folioEnviado);
    expect(registroFinal.syncStatus, 'enviado');

    // Ahora verificamos que nunca se regenera un folio existente
    await insertarRegistroPendiente(
        idLocal: 'reg_con_folio', folio: 'EXISTENTE');

    String? segundoFolioEnviado;
    final mockClient2 = MockClient((request) async {
      final body = jsonDecode(request.body) as Map<String, dynamic>;
      segundoFolioEnviado = body['folio'] as String?;
      return http.Response(jsonEncode({'ok': true}), 200);
    });

    await sincronizarPendientes(
      client: mockClient2,
      repository: repository,
    );

    expect(segundoFolioEnviado, 'EXISTENTE');
    final regExistente = (await repository.listarGuardadas())
        .firstWhere((r) => r.idLocal == 'reg_con_folio');
    expect(regExistente.folio, 'EXISTENTE');
  });

  test(
      'marcarComoEnviado solo se llama en éxito (no en respuesta 200 ok: false)',
      () async {
    await insertarRegistroPendiente(folio: 'FOLIO_FALLO');

    final mockClient = MockClient((request) async {
      return http.Response(jsonEncode({'ok': false, 'error': 'db_error'}), 200);
    });

    final resultado = await sincronizarPendientes(
      client: mockClient,
      repository: repository,
    );

    expect(resultado.enviados, 0);
    expect(resultado.fallidos, 1);
    expect(resultado.errorAutenticacion, isFalse);

    final lista = await repository.listarGuardadas();
    expect(lista.first.syncStatus, 'pendiente');
  });
}
