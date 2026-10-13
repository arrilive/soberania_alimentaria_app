import 'package:flutter/material.dart';
import '../data/app_database.dart';
import '../data/respuestas_repository.dart';
import '../services/sync_service.dart';
import '../theme/app_theme.dart';

enum _FiltroEstado { todos, pendientes, enviados }

class DiagnosticosGuardadosScreen extends StatefulWidget {
  const DiagnosticosGuardadosScreen({super.key});

  @override
  State<DiagnosticosGuardadosScreen> createState() =>
      _DiagnosticosGuardadosScreenState();
}

class _DiagnosticosGuardadosScreenState
    extends State<DiagnosticosGuardadosScreen> {
  late Future<List<RespuestasDiagnosticoData>> _futureRespuestas;
  int _pendientes = 0;
  bool _sincronizando = false;
  _FiltroEstado _filtroActual = _FiltroEstado.todos;

  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  void _cargarDatos() {
    setState(() {
      _futureRespuestas = RespuestasRepository.instancia.listarGuardadas();
    });
    RespuestasRepository.instancia.contarPendientes().then((count) {
      if (mounted) setState(() => _pendientes = count);
    });
  }

  (Color, Color, String) _estiloEstado(String status) {
    switch (status.toLowerCase()) {
      case 'borrador':
        return (
          AppColors.textoSecundario,
          AppColors.textoSecundario.withValues(alpha: 0.12),
          'Estado: Borrador',
        );
      case 'enviado':
        return (
          AppColors.exito,
          AppColors.exito.withValues(alpha: 0.15),
          'Estado: Enviado',
        );
      case 'pendiente':
      default:
        return (
          const Color(0xFF8C6D3B),
          AppColors.doradoInstitucional.withValues(alpha: 0.18),
          'Estado: Pendiente',
        );
    }
  }

  String _mensajeVacio(_FiltroEstado filtro) {
    switch (filtro) {
      case _FiltroEstado.pendientes:
        return 'No hay diagnósticos pendientes en este dispositivo.';
      case _FiltroEstado.enviados:
        return 'No hay diagnósticos enviados en este dispositivo.';
      case _FiltroEstado.todos:
        return 'No hay diagnósticos guardados aún en este dispositivo.\n'
            'Prueba llenar un formulario en Inicio y presionar Guardar.';
    }
  }

  Future<void> _confirmarEliminarEnviado(
    BuildContext context,
    RespuestasDiagnosticoData item,
  ) async {
    final folioStr = item.folio ?? item.idLocal;
    final confirmado = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('¿Eliminar del dispositivo?'),
        content: Text(
          'Folio: $folioStr. Se borrará solo de este celular. '
          'El diagnóstico ya está guardado en el servidor y no se eliminará de allá.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.guinda,
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );

    if (confirmado != true) return;

    final eliminados =
        await RespuestasRepository.instancia.eliminarEnviadoLocal(item.idLocal);

    if (!context.mounted) return;

    _cargarDatos();

    if (eliminados == 1) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Diagnóstico eliminado del dispositivo'),
          backgroundColor: AppColors.exito,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'No se pudo eliminar: el diagnóstico ya no está marcado como enviado',
          ),
          backgroundColor: AppColors.guinda,
        ),
      );
    }
  }

  Future<void> _confirmarEliminarTodosEnviados(
    BuildContext context,
    int count,
  ) async {
    final confirmado = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('¿Eliminar diagnósticos enviados?'),
        content: Text(
          'Se eliminarán $count diagnóstico(s) enviados solo de este celular. '
          'Los diagnósticos ya están guardados en el servidor y no se eliminarán de allá.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.guinda,
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );

    if (confirmado != true) return;

    final totalEliminados =
        await RespuestasRepository.instancia.eliminarTodosEnviadosLocal();

    if (!context.mounted) return;

    _cargarDatos();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$totalEliminados diagnóstico(s) eliminado(s) del dispositivo',
        ),
        backgroundColor: AppColors.exito,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diagnósticos guardados'),
        backgroundColor: AppColors.guinda,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _cargarDatos,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.guinda.withValues(alpha: 0.08),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Estos diagnósticos están guardados en tu dispositivo, listos para enviar cuando haya conexión a internet.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textoPrincipal,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Registros pendientes de envío: $_pendientes',
                  style: const TextStyle(
                    color: AppColors.guinda,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: _pendientes == 0 ||
                          _sincronizando ||
                          defaultApiKey.isEmpty
                      ? null
                      : () async {
                          setState(() => _sincronizando = true);
                          final resultado = await sincronizarPendientes();
                          if (!context.mounted) return;
                          setState(() => _sincronizando = false);
                          _cargarDatos();
                          if (resultado.errorAutenticacion) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'El servidor rechazó la llave de la app (inválida o vencida). Avisa al desarrollador para recompilar con la llave vigente.',
                                ),
                                backgroundColor: AppColors.guinda,
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  resultado.fallidos == 0
                                      ? '${resultado.enviados} diagnóstico(s) sincronizado(s) correctamente.'
                                      : '${resultado.enviados} enviado(s), ${resultado.fallidos} sin conexión o con error (se reintentarán después).',
                                ),
                                backgroundColor: resultado.fallidos == 0
                                    ? AppColors.exito
                                    : AppColors.doradoInstitucional,
                              ),
                            );
                          }
                        },
                  icon: _sincronizando
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.cloud_upload_outlined),
                  label: Text(_sincronizando
                      ? 'Sincronizando...'
                      : 'Sincronizar ahora'),
                ),
                if (defaultApiKey.isEmpty) ...[
                  const SizedBox(height: 8),
                  const Text(
                    'La app se compiló sin llave válida. Favor de avisar al desarrollador.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.guinda,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<RespuestasDiagnosticoData>>(
              future: _futureRespuestas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child:
                        Text('Error al cargar respuestas: ${snapshot.error}'),
                  );
                }
                final listaCompleta = snapshot.data ?? [];
                final totalCount = listaCompleta.length;
                final pendientesCount = listaCompleta
                    .where((r) => r.syncStatus.toLowerCase() == 'pendiente')
                    .length;
                final enviadosCount = listaCompleta
                    .where((r) => r.syncStatus.toLowerCase() == 'enviado')
                    .length;

                final listaFiltrada = switch (_filtroActual) {
                  _FiltroEstado.todos => listaCompleta,
                  _FiltroEstado.pendientes => listaCompleta
                      .where((r) => r.syncStatus.toLowerCase() == 'pendiente')
                      .toList(),
                  _FiltroEstado.enviados => listaCompleta
                      .where((r) => r.syncStatus.toLowerCase() == 'enviado')
                      .toList(),
                };

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ChoiceChip(
                                    label: Text('Todos ($totalCount)'),
                                    selected:
                                        _filtroActual == _FiltroEstado.todos,
                                    selectedColor: AppColors.guinda
                                        .withValues(alpha: 0.15),
                                    labelStyle: TextStyle(
                                      color:
                                          _filtroActual == _FiltroEstado.todos
                                              ? AppColors.guinda
                                              : AppColors.textoPrincipal,
                                      fontWeight:
                                          _filtroActual == _FiltroEstado.todos
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                    ),
                                    onSelected: (selected) {
                                      if (selected) {
                                        setState(() => _filtroActual =
                                            _FiltroEstado.todos);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  ChoiceChip(
                                    label:
                                        Text('Pendientes ($pendientesCount)'),
                                    selected: _filtroActual ==
                                        _FiltroEstado.pendientes,
                                    selectedColor: AppColors.guinda
                                        .withValues(alpha: 0.15),
                                    labelStyle: TextStyle(
                                      color: _filtroActual ==
                                              _FiltroEstado.pendientes
                                          ? AppColors.guinda
                                          : AppColors.textoPrincipal,
                                      fontWeight: _filtroActual ==
                                              _FiltroEstado.pendientes
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                    onSelected: (selected) {
                                      if (selected) {
                                        setState(() => _filtroActual =
                                            _FiltroEstado.pendientes);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  ChoiceChip(
                                    label: Text('Enviados ($enviadosCount)'),
                                    selected:
                                        _filtroActual == _FiltroEstado.enviados,
                                    selectedColor: AppColors.guinda
                                        .withValues(alpha: 0.15),
                                    labelStyle: TextStyle(
                                      color: _filtroActual ==
                                              _FiltroEstado.enviados
                                          ? AppColors.guinda
                                          : AppColors.textoPrincipal,
                                      fontWeight: _filtroActual ==
                                              _FiltroEstado.enviados
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                    onSelected: (selected) {
                                      if (selected) {
                                        setState(() => _filtroActual =
                                            _FiltroEstado.enviados);
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (_filtroActual == _FiltroEstado.enviados &&
                              enviadosCount > 0) ...[
                            const SizedBox(width: 8),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: AppColors.guinda,
                              ),
                              onPressed: _sincronizando
                                  ? null
                                  : () => _confirmarEliminarTodosEnviados(
                                        context,
                                        enviadosCount,
                                      ),
                              icon: const Icon(Icons.delete_sweep_outlined,
                                  size: 18),
                              label: Text(
                                'Eliminar enviados ($enviadosCount)',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Expanded(
                      child: listaFiltrada.isEmpty
                          ? Center(
                              child: Padding(
                                padding: const EdgeInsets.all(24),
                                child: Text(
                                  _mensajeVacio(_filtroActual),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: AppColors.textoSecundario),
                                ),
                              ),
                            )
                          : ListView.separated(
                              padding: const EdgeInsets.all(16),
                              itemCount: listaFiltrada.length,
                              separatorBuilder: (_, __) => const Divider(),
                              itemBuilder: (context, index) {
                                final item = listaFiltrada[index];
                                final fechaStr = item.fechaCapturaLocal
                                    .toString()
                                    .split('.')
                                    .first;
                                final estilo = _estiloEstado(item.syncStatus);
                                final esEnviado =
                                    item.syncStatus.toLowerCase() == 'enviado';

                                return Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Chip(
                                              label: Text(
                                                item.formulario
                                                        ?.toUpperCase() ??
                                                    'DESCONOCIDO',
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              backgroundColor: AppColors.guinda
                                                  .withValues(alpha: 0.12),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                color: estilo.$2,
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: Text(
                                                estilo.$3,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: estilo.$1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text('ID Local: ${item.idLocal}',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'monospace')),
                                        Text(
                                          'Folio: ${item.folio ?? "(pendiente de generar)"}',
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'monospace'),
                                        ),
                                        Text(
                                            'Nombre: ${item.p4Nombre ?? "(No especificado)"}'),
                                        Text(
                                            'Comunidad: ${item.p1ComunidadVive ?? "(No especificada)"}'),
                                        Text(
                                            'Municipio: ${item.p3Municipio ?? "(No especificado)"}'),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Fecha de captura: $fechaStr',
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: AppColors.textoSecundario),
                                        ),
                                        Text(
                                          item.latitud != null &&
                                                  item.longitud != null
                                              ? 'GPS: ${item.latitud!.toStringAsFixed(5)}, ${item.longitud!.toStringAsFixed(5)}'
                                              : 'GPS: (sin capturar)',
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: AppColors.textoSecundario),
                                        ),
                                        if (esEnviado) ...[
                                          const SizedBox(height: 8),
                                          const Divider(height: 1),
                                          const SizedBox(height: 4),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: TextButton.icon(
                                              style: TextButton.styleFrom(
                                                foregroundColor:
                                                    AppColors.guinda,
                                              ),
                                              onPressed: _sincronizando
                                                  ? null
                                                  : () =>
                                                      _confirmarEliminarEnviado(
                                                        context,
                                                        item,
                                                      ),
                                              icon: const Icon(
                                                  Icons.delete_outline,
                                                  size: 18),
                                              label: const Text(
                                                  'Eliminar del dispositivo'),
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
