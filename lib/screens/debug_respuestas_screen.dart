import 'package:flutter/material.dart';
import '../data/app_database.dart';
import '../data/respuestas_repository.dart';
import '../theme/app_theme.dart';

class DebugRespuestasScreen extends StatefulWidget {
  const DebugRespuestasScreen({super.key});

  @override
  State<DebugRespuestasScreen> createState() => _DebugRespuestasScreenState();
}

class _DebugRespuestasScreenState extends State<DebugRespuestasScreen> {
  late Future<List<RespuestasDiagnosticoData>> _futureRespuestas;
  int _pendientes = 0;

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
                final lista = snapshot.data ?? [];
                if (lista.isEmpty) {
                  return const Center(
                    child: Text(
                      'No hay diagnósticos guardados aún en este dispositivo.\n'
                      'Prueba llenar un formulario en Inicio y presionar Guardar.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.textoSecundario),
                    ),
                  );
                }

                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: lista.length,
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, index) {
                    final item = lista[index];
                    final fechaStr =
                        item.fechaCapturaLocal.toString().split('.').first;
                    final estilo = _estiloEstado(item.syncStatus);

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Chip(
                                  label: Text(
                                    item.formulario?.toUpperCase() ??
                                        'DESCONOCIDO',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  backgroundColor:
                                      AppColors.guinda.withValues(alpha: 0.12),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: estilo.$2,
                                    borderRadius: BorderRadius.circular(6),
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
                                    fontSize: 12, fontFamily: 'monospace')),
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
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
