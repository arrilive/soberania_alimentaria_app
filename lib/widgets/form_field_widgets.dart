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
  final String otroOpcionTexto;
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
    this.otroOpcionTexto = 'Otros',
    this.otroValor,
    required this.onOtroChanged,
    this.otroTriggerValor,
  });

  @override
  Widget build(BuildContext context) {
    final listaCompleta = [...opciones, if (permiteOtro) otroOpcionTexto];
    final disparaTexto =
        otroTriggerValor ?? (permiteOtro ? otroOpcionTexto : null);

    return Column(
      children: [
        RadioGroup<String>(
          groupValue: valor,
          onChanged: onChanged,
          child: Column(
            children: listaCompleta.map((opcion) {
              final seleccionado = valor == opcion;
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Material(
                  color: seleccionado
                      ? AppColors.guinda.withValues(alpha: 0.08)
                      : Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.base),
                    side: BorderSide(
                      color: seleccionado ? AppColors.guinda : AppColors.borde,
                      width: seleccionado ? 1.5 : 1,
                    ),
                  ),
                  child: RadioListTile<String>(
                    value: opcion,
                    title: Text(opcion, style: const TextStyle(fontSize: 15)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    activeColor: AppColors.guinda,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
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
  final String otroOpcionTexto;
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
    this.otroOpcionTexto = 'Otros',
    this.otroValor,
    required this.onOtroChanged,
    this.maxSelecciones,
  });

  @override
  Widget build(BuildContext context) {
    final listaCompleta = [...opciones, if (permiteOtro) otroOpcionTexto];
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
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Material(
              color: seleccionado
                  ? AppColors.guinda.withValues(alpha: 0.08)
                  : Colors.transparent,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.base),
                side: BorderSide(
                  color: seleccionado ? AppColors.guinda : AppColors.borde,
                  width: seleccionado ? 1.5 : 1,
                ),
              ),
              child: CheckboxListTile(
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
                title: Text(opcion, style: const TextStyle(fontSize: 15)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.guinda,
              ),
            ),
          );
        }),
        if (permiteOtro && valores.contains(otroOpcionTexto)) ...[
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
    final mitad = (meses.length / 2).ceil();
    final col1 = meses.sublist(0, mitad);
    final col2 = meses.sublist(mitad);

    Widget construirTile(String mes) {
      final seleccionado = valores.contains(mes);
      return CheckboxListTile(
        value: seleccionado,
        onChanged: (marcado) {
          final nuevo = Set<String>.from(valores);
          if (marcado == true) {
            nuevo.add(mes);
          } else {
            nuevo.remove(mes);
          }
          onChanged(nuevo);
        },
        title: Text(mes, style: const TextStyle(fontSize: 15)),
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        dense: true,
        activeColor: AppColors.guinda,
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: col1.map(construirTile).toList(),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            children: col2.map(construirTile).toList(),
          ),
        ),
      ],
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
          child: Row(
            children: columnas.map((columna) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    columna,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.textoEtiqueta,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        ...filas.map((fila) {
          final seleccionActual = valores[fila];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Material(
              color: AppColors.superficie,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.base),
                side: const BorderSide(color: AppColors.borde),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: AppColors.fondoSeccion,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Text(
                      fila,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.5,
                        color: AppColors.textoPrincipal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: columnas.map((columna) {
                        final seleccionado = seleccionActual == columna;
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Semantics(
                              inMutuallyExclusiveGroup: true,
                              selected: seleccionado,
                              label: '$fila, $columna',
                              button: true,
                              child: InkWell(
                                onTap: () {
                                  final nuevo =
                                      Map<String, String>.from(valores);
                                  nuevo[fila] = columna;
                                  onChanged(nuevo);
                                },
                                borderRadius:
                                    BorderRadius.circular(AppRadius.base),
                                child: Container(
                                  constraints:
                                      const BoxConstraints(minHeight: 44),
                                  decoration: BoxDecoration(
                                    color: seleccionado
                                        ? AppColors.guinda
                                            .withValues(alpha: 0.12)
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: seleccionado
                                          ? AppColors.guinda
                                          : AppColors.borde,
                                      width: seleccionado ? 1.5 : 1,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppRadius.base),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      seleccionado
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,
                                      size: 20,
                                      color: seleccionado
                                          ? AppColors.guinda
                                          : AppColors.textoSecundario,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  if (seleccionActual != null)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 10),
                      child: Text(
                        'Seleccionado: $seleccionActual',
                        style: const TextStyle(
                          fontSize: 12.5,
                          color: AppColors.guinda,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        }),
      ],
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
