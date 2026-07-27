import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Comunica sin ambigüedad el estado real de la app: no hay envío a
/// internet, todo se queda en el teléfono hasta que alguien lo sincronice
/// manualmente. Esto es honestidad de microcopy, no un detalle cosmético:
/// la persona debe saber, en todo momento, dónde están sus datos.
class OfflineBadge extends StatelessWidget {
  const OfflineBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.verdeTierra.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.verdeTierra.withValues(alpha: 0.3)),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.phone_android,
              size: 18, color: AppColors.verdeTierraOscuro),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              'Modo sin conexión: tus respuestas se guardan solo en este teléfono',
              style: TextStyle(
                fontSize: 12.5,
                color: AppColors.verdeTierraOscuro,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
