import 'package:flutter/material.dart';
import '../models/form_models.dart';
import '../theme/app_theme.dart';

/// Envoltorio común: número + texto de la pregunta + ayuda opcional +
/// asterisco si es obligatoria. Toda pregunta se ve igual sin importar
/// su tipo, así la persona siempre sabe qué está respondiendo.
class PreguntaContainer extends StatelessWidget {
  final FormFieldConfig campo;
  final Widget child;

  const PreguntaContainer(
      {super.key, required this.campo, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: '${campo.numero}. ',
                    style: const TextStyle(
                        color: AppColors.guinda, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: campo.pregunta),
                  if (campo.requerido)
                    const TextSpan(
                        text: '  *',
                        style: TextStyle(color: AppColors.advertencia)),
                ],
              ),
            ),
            if (campo.ayuda != null) ...[
              const SizedBox(height: 4),
              Text(campo.ayuda!, style: Theme.of(context).textTheme.bodyMedium),
            ],
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

class CampoDropdown extends StatelessWidget {
  final List<String> opciones;
  final String? valor;
  final ValueChanged<String?> onChanged;

  const CampoDropdown(
      {super.key,
      required this.opciones,
      required this.valor,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: valor,
      isExpanded: true,
      hint: const Text('Seleccione una opción...'),
      items: opciones
          .map((o) => DropdownMenuItem<String>(value: o, child: Text(o)))
          .toList(),
      onChanged: onChanged,
    );
  }
}

class CampoOpcionUnica extends StatelessWidget {
  final List<String> opciones;
  final String? valor;
  final ValueChanged<String?> onChanged;
  final bool permiteOtro;
  final String otroLabel;
  final String? otroValor;
  final ValueChanged<String> onOtroChanged;
  final String? otroTriggerValor;

  const CampoOpcionUnica({
    super.key,
    required this.opciones,
    required this.valor,
    required this.onChanged,
    this.permiteOtro = false,
    this.otroLabel = 'Otros:',
    this.otroValor,
    required this.onOtroChanged,
    this.otroTriggerValor,
  });

  @override
  Widget build(BuildContext context) {
    final listaCompleta = [...opciones, if (permiteOtro) 'Otros'];
    final disparaTexto = otroTriggerValor ?? (permiteOtro ? 'Otros' : null);

    return Column(
      children: [
        ...listaCompleta.map((opcion) {
          return RadioListTile<String>(
            value: opcion,
            groupValue: valor,
            onChanged: onChanged,
            title: Text(opcion),
            contentPadding: EdgeInsets.zero,
            dense: true,
            activeColor: AppColors.guinda,
          );
        }),
        if (disparaTexto != null && valor == disparaTexto) ...[
          const SizedBox(height: 8),
          TextFormField(
            initialValue: otroValor,
            decoration: InputDecoration(labelText: otroLabel),
            onChanged: onOtroChanged,
          ),
        ],
      ],
    );
  }
}

class CampoOpcionMultiple extends StatelessWidget {
  final List<String> opciones;
  final Set<String> valores;
  final ValueChanged<Set<String>> onChanged;
  final bool permiteOtro;
  final String otroLabel;
  final String? otroValor;
  final ValueChanged<String> onOtroChanged;
  final int? maxSelecciones;

  const CampoOpcionMultiple({
    super.key,
    required this.opciones,
    required this.valores,
    required this.onChanged,
    this.permiteOtro = false,
    this.otroLabel = 'Otros:',
    this.otroValor,
    required this.onOtroChanged,
    this.maxSelecciones,
  });

  @override
  Widget build(BuildContext context) {
    final listaCompleta = [...opciones, if (permiteOtro) 'Otros'];
    final limiteAlcanzado =
        maxSelecciones != null && valores.length >= maxSelecciones!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (maxSelecciones != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              '${valores.length} de $maxSelecciones seleccionadas',
              style: const TextStyle(
                  fontSize: 12, color: AppColors.textoSecundario),
            ),
          ),
        ...listaCompleta.map((opcion) {
          final seleccionado = valores.contains(opcion);
          final deshabilitado = limiteAlcanzado && !seleccionado;
          return CheckboxListTile(
            value: seleccionado,
            onChanged: deshabilitado
                ? null
                : (marcado) {
                    final nuevo = Set<String>.from(valores);
                    if (marcado == true) {
                      nuevo.add(opcion);
                    } else {
                      nuevo.remove(opcion);
                    }
                    onChanged(nuevo);
                  },
            title: Text(opcion),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            dense: true,
            activeColor: AppColors.guinda,
          );
        }),
        if (permiteOtro && valores.contains('Otros')) ...[
          const SizedBox(height: 8),
          TextFormField(
            initialValue: otroValor,
            decoration: InputDecoration(labelText: otroLabel),
            onChanged: onOtroChanged,
          ),
        ],
      ],
    );
  }
}

class CampoMesesMultiple extends StatelessWidget {
  final List<String> meses;
  final Set<String> valores;
  final ValueChanged<Set<String>> onChanged;

  const CampoMesesMultiple(
      {super.key,
      required this.meses,
      required this.valores,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: meses.map((mes) {
        final seleccionado = valores.contains(mes);
        return FilterChip(
          label: Text(mes),
          selected: seleccionado,
          onSelected: (marcado) {
            final nuevo = Set<String>.from(valores);
            if (marcado) {
              nuevo.add(mes);
            } else {
              nuevo.remove(mes);
            }
            onChanged(nuevo);
          },
        );
      }).toList(),
    );
  }
}

/// Tabla tipo Likert. En web es una tabla de filas x columnas; en móvil
/// ese mismo diseño no cabe legible en pantallas de 360-400px, así que
/// cada fila se convierte en su propia tarjeta con las columnas como
/// chips seleccionables debajo del enunciado. Mismo dato, mejor
/// adaptado al ancho real del dispositivo.
class CampoMatrizLikert extends StatelessWidget {
  final List<String> filas;
  final List<String> columnas;
  final Map<String, String> valores; // fila -> columna seleccionada
  final ValueChanged<Map<String, String>> onChanged;

  const CampoMatrizLikert({
    super.key,
    required this.filas,
    required this.columnas,
    required this.valores,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: filas.map((fila) {
        final seleccionActual = valores[fila];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.fondo,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.borde),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(fila,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: columnas.map((columna) {
                  final seleccionado = seleccionActual == columna;
                  return ChoiceChip(
                    label:
                        Text(columna, style: const TextStyle(fontSize: 12.5)),
                    selected: seleccionado,
                    onSelected: (_) {
                      final nuevo = Map<String, String>.from(valores);
                      nuevo[fila] = columna;
                      onChanged(nuevo);
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType tipoTeclado;
  final int maxLineas;

  const CampoTexto({
    super.key,
    required this.controller,
    this.tipoTeclado = TextInputType.text,
    this.maxLineas = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: tipoTeclado,
      maxLines: maxLineas,
      decoration: const InputDecoration(hintText: 'Escriba su respuesta...'),
    );
  }
}
