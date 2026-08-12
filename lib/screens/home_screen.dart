import 'package:flutter/material.dart';
import '../data/form_schemas.dart';
import '../theme/app_theme.dart';
import 'dynamic_form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DynamicFormScreen(
                    schema: formularioEjecutivo,
                    colorAcento: AppColors.guinda,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _TarjetaFormulario(
              titulo: formularioAmpliado.titulo,
              descripcion:
                  '${formularioAmpliado.descripcionCorta} (${formularioAmpliado.totalPreguntas} preguntas)',
              icono: Icons.fact_check_outlined,
              color: AppColors.guinda,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DynamicFormScreen(
                    schema: formularioAmpliado,
                    colorAcento: AppColors.guinda,
                  ),
                ),
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
