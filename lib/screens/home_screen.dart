import 'package:flutter/material.dart';
import '../data/form_schemas.dart';
import '../data/respuestas_repository.dart';
import '../models/form_models.dart';
import '../theme/app_theme.dart';
import 'debug_respuestas_screen.dart';
import 'dynamic_form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _abrirFormulario(
      BuildContext context, FormSchema schema, Color colorAcento) async {
    final borrador =
        await RespuestasRepository.instancia.buscarBorradorActivo(schema.id);

    if (!context.mounted) return;

    if (borrador == null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => DynamicFormScreen(
            schema: schema,
            colorAcento: colorAcento,
          ),
        ),
      );
      return;
    }

    final fecha = borrador.fechaCapturaLocal;
    final dia = fecha.day.toString().padLeft(2, '0');
    final mes = fecha.month.toString().padLeft(2, '0');
    final anio = fecha.year;
    final hora = fecha.hour.toString().padLeft(2, '0');
    final min = fecha.minute.toString().padLeft(2, '0');
    final fechaFormateada = '$dia/$mes/$anio a las $hora:$min';

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Diagnóstico no terminado'),
        content: Text(
          'Tienes un diagnóstico ${schema.titulo.toLowerCase()} sin terminar '
          '(guardado el $fechaFormateada).\n\n'
          '¿Deseas continuarlo o empezar uno nuevo?',
        ),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              await RespuestasRepository.instancia
                  .eliminarBorrador(borrador.idLocal);
              if (!context.mounted) return;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DynamicFormScreen(
                    schema: schema,
                    colorAcento: colorAcento,
                  ),
                ),
              );
            },
            child: const Text('Empezar nuevo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              final deserializado =
                  RespuestasRepository.instancia.deserializarBorrador(borrador);
              final respuestas =
                  deserializado['respuestas'] as Map<String, dynamic>;
              final otros = deserializado['otros'] as Map<String, String>;
              final seccionInicial =
                  (deserializado['seccionActual'] as int?) ?? 0;

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DynamicFormScreen(
                    schema: schema,
                    colorAcento: colorAcento,
                    idLocalExistente: borrador.idLocal,
                    respuestasIniciales: respuestas,
                    otrosIniciales: otros,
                    seccionInicial: seccionInicial,
                  ),
                ),
              );
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soberanía Alimentaria'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const _HeaderLogosInstitucionales(),
            const SizedBox(height: 20),
            Text(
              'Diagnóstico de Cadena de Valor Agroecológica',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 6),
            Text(
              'Proyecto SECIHTI 2026 · Esta encuesta es voluntaria y confidencial. '
              'Los datos se usarán únicamente para el diagnóstico comunitario.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            _TarjetaFormulario(
              titulo: formularioEjecutivo.titulo,
              descripcion:
                  '${formularioEjecutivo.descripcionCorta} (${formularioEjecutivo.totalPreguntas} preguntas)',
              icono: Icons.checklist_rtl,
              color: AppColors.guinda,
              onTap: () => _abrirFormulario(
                  context, formularioEjecutivo, AppColors.guinda),
            ),
            const SizedBox(height: 16),
            _TarjetaFormulario(
              titulo: formularioAmpliado.titulo,
              descripcion:
                  '${formularioAmpliado.descripcionCorta} (${formularioAmpliado.totalPreguntas} preguntas)',
              icono: Icons.fact_check_outlined,
              color: AppColors.guinda,
              onTap: () => _abrirFormulario(
                  context, formularioAmpliado, AppColors.guinda),
            ),
            const SizedBox(height: 16),
            _TarjetaFormulario(
              titulo: 'Diagnósticos guardados',
              descripcion: 'Revisa las encuestas guardadas en este dispositivo',
              icono: Icons.inventory_2_outlined,
              color: AppColors.doradoInstitucional,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => const DebugRespuestasScreen()),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Los diagnósticos guardados en este dispositivo se pueden '
              'sincronizar más adelante cuando haya conexión a internet.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _TarjetaFormulario extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color color;
  final VoidCallback onTap;

  const _TarjetaFormulario({
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icono, color: color, size: 26),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titulo,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(descripcion,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.textoSecundario),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderLogosInstitucionales extends StatelessWidget {
  const _HeaderLogosInstitucionales();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.guinda.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.borde.withValues(alpha: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: Image.asset(
                'assets/logos/logo_secihti.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SizedBox(
              height: 48,
              child: Image.asset(
                'assets/logos/GEO_V_H.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SizedBox(
              height: 48,
              child: Image.asset(
                'assets/logos/logo_itm.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SizedBox(
              height: 48,
              child: Image.asset(
                'assets/logos/GEOINT_V_H.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
