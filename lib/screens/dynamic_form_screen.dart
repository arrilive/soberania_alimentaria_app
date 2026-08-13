import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../data/catalogos.dart';
import '../data/respuestas_repository.dart';
import '../models/form_models.dart';
import '../theme/app_theme.dart';
import '../widgets/form_field_widgets.dart';

class DynamicFormScreen extends StatefulWidget {
  final FormSchema schema;
  final Color colorAcento;
  final String? idLocalExistente;
  final Map<String, dynamic>? respuestasIniciales;
  final Map<String, String>? otrosIniciales;
  final int? seccionInicial;

  const DynamicFormScreen({
    super.key,
    required this.schema,
    required this.colorAcento,
    this.idLocalExistente,
    this.respuestasIniciales,
    this.otrosIniciales,
    this.seccionInicial,
  });

  @override
  State<DynamicFormScreen> createState() => _DynamicFormScreenState();
}

class _PreguntaFaltanteInfo {
  final int numSecuencial;
  final int seccionIndex;
  final String pregunta;
  final int? filasRespondidas;
  final int? totalFilas;

  const _PreguntaFaltanteInfo({
    required this.numSecuencial,
    required this.seccionIndex,
    required this.pregunta,
    this.filasRespondidas,
    this.totalFilas,
  });
}

class _DynamicFormScreenState extends State<DynamicFormScreen>
    with WidgetsBindingObserver {
  int _seccionActual = 0;
  late final String _idLocal;

  // Respuestas: String? para dropdown/singleChoice, Set<String> para
  // multiChoice/monthMultiSelect, Map<String,String> para matrixSingle.
  late final Map<String, dynamic> _respuestas;

  // Texto libre de las opciones "Otros" / disparadores condicionales.
  late final Map<String, String> _otros;

  String _lastSavedHash = '';
  bool _mostrarIconoGuardado = false;
  Timer? _timerIconoGuardado;

  // Controladores de texto para campos de texto/número/texto largo/otros.
  final Map<String, TextEditingController> _controladores = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    final initialSeccion = widget.seccionInicial ?? 0;
    if (initialSeccion >= 0 &&
        initialSeccion < widget.schema.secciones.length) {
      _seccionActual = initialSeccion;
    } else {
      _seccionActual = 0;
    }

    _idLocal = widget.idLocalExistente ??
        RespuestasRepository.instancia.generarIdLocal();
    _respuestas = widget.respuestasIniciales != null
        ? Map<String, dynamic>.from(widget.respuestasIniciales!)
        : {};
    _otros = widget.otrosIniciales != null
        ? Map<String, String>.from(widget.otrosIniciales!)
        : {};

    _lastSavedHash = _calcularHash();
  }

  TextEditingController _controladorPara(String id) {
    return _controladores.putIfAbsent(id, () {
      final initialText =
          _respuestas[id] is String ? (_respuestas[id] as String) : '';
      final controller = TextEditingController(text: initialText);
      controller.addListener(() => _respuestas[id] = controller.text);
      return controller;
    });
  }

  @override
  void dispose() {
    _timerIconoGuardado?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    for (final c in _controladores.values) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _guardarBorradorSiCambio();
    }
  }

  String _calcularHash() {
    final Map<String, dynamic> serializableRespuestas = {};
    _respuestas.forEach((k, v) {
      if (v is Set) {
        final list = v.toList()..sort();
        serializableRespuestas[k] = list;
      } else {
        serializableRespuestas[k] = v;
      }
    });
    return jsonEncode({
      'seccionActual': _seccionActual,
      'respuestas': serializableRespuestas,
      'otros': _otros,
    });
  }

  Future<void> _guardarBorradorSiCambio() async {
    final currentHash = _calcularHash();
    if (currentHash != _lastSavedHash) {
      _lastSavedHash = currentHash;
      await RespuestasRepository.instancia.guardarBorrador(
        idLocal: _idLocal,
        schema: widget.schema,
        respuestas: _respuestas,
        otros: _otros,
        seccionActual: _seccionActual,
      );

      _timerIconoGuardado?.cancel();
      if (mounted) {
        setState(() => _mostrarIconoGuardado = true);
      }
      _timerIconoGuardado = Timer(const Duration(milliseconds: 1500), () {
        if (mounted) {
          setState(() => _mostrarIconoGuardado = false);
        }
      });
    }
  }

  bool _campoVisible(FormFieldConfig campo) {
    if (campo.dependeDe == null) return true;
    final valorDelQueDepende = _respuestas[campo.dependeDe];
    if (valorDelQueDepende == null) return false;
    return campo.mostrarSiValores?.contains(valorDelQueDepende) ?? false;
  }

  bool _campoRespondido(FormFieldConfig campo) {
    final valor = _respuestas[campo.id];
    if (valor == null) return false;
    if (valor is String) return valor.trim().isNotEmpty;
    if (valor is Set) return valor.isNotEmpty;
    if (valor is Map) {
      if (campo.tipo == FieldType.matrixSingle) {
        return valor.length == campo.filas.length;
      }
      return valor.isNotEmpty;
    }
    return true;
  }

  List<FormFieldConfig> _camposVisiblesDe(FormSectionConfig seccion) {
    return seccion.campos.where(_campoVisible).toList();
  }

  bool _validarSeccionActual() {
    final seccion = widget.schema.secciones[_seccionActual];
    for (final campo in _camposVisiblesDe(seccion)) {
      if (campo.requerido && !_campoRespondido(campo)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Falta responder: "${campo.pregunta}"')),
        );
        return false;
      }
    }
    return true;
  }

  void _siguiente() async {
    if (!_validarSeccionActual()) return;
    await _guardarBorradorSiCambio();
    final esUltima = _seccionActual == widget.schema.secciones.length - 1;
    if (esUltima) {
      _mostrarConfirmacionGuardado();
    } else {
      setState(() => _seccionActual++);
    }
  }

  Future<void> _anterior() async {
    await _guardarBorradorSiCambio();
    if (_seccionActual == 0) {
      if (mounted) Navigator.of(context).pop();
    } else {
      setState(() => _seccionActual--);
    }
  }

  void _mostrarConfirmacionGuardado() {
    final Map<String, int> indicesSecuenciales = {};
    int contadorSecuencial = 1;
    final List<_PreguntaFaltanteInfo> preguntasFaltantes = [];

    for (int sIdx = 0; sIdx < widget.schema.secciones.length; sIdx++) {
      final s = widget.schema.secciones[sIdx];
      for (final c in s.campos) {
        if (_campoVisible(c)) {
          final numSecuencial = contadorSecuencial++;
          indicesSecuenciales[c.id] = numSecuencial;
          if (!_campoRespondido(c)) {
            int? respondidas;
            int? total;
            if (c.tipo == FieldType.matrixSingle) {
              final valor = _respuestas[c.id];
              if (valor is Map && valor.isNotEmpty) {
                respondidas = valor.length;
                total = c.filas.length;
              }
            }
            preguntasFaltantes.add(
              _PreguntaFaltanteInfo(
                numSecuencial: numSecuencial,
                seccionIndex: sIdx,
                pregunta: c.pregunta,
                filasRespondidas: respondidas,
                totalFilas: total,
              ),
            );
          }
        }
      }
    }

    final totalPreguntas = indicesSecuenciales.length;
    final totalRespondidas = totalPreguntas - preguntasFaltantes.length;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Revisar antes de guardar'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Respondiste $totalRespondidas de $totalPreguntas preguntas.\n\n'
                'Tus respuestas se han estado guardando automáticamente en este dispositivo. '
                'Al confirmar, este diagnóstico quedará marcado como completo.',
              ),
              if (preguntasFaltantes.isNotEmpty) ...[
                const SizedBox(height: 12),
                Theme(
                  data: Theme.of(dialogContext)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    tilePadding: EdgeInsets.zero,
                    childrenPadding: const EdgeInsets.only(top: 4, bottom: 8),
                    title: Text(
                      'Ver ${preguntasFaltantes.length} preguntas opcionales sin responder',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.guinda,
                      ),
                    ),
                    children: preguntasFaltantes.map((f) {
                      final textoBase = f.pregunta.length > 50
                          ? '${f.pregunta.substring(0, 50)}...'
                          : f.pregunta;
                      final infoFilas = (f.filasRespondidas != null &&
                              f.totalFilas != null)
                          ? ' (${f.filasRespondidas} de ${f.totalFilas} filas respondidas)'
                          : '';
                      final textoFinal = '$textoBase$infoFilas';

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${f.numSecuencial}. ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                textoFinal,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textoSecundario,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              if (preguntasFaltantes.isNotEmpty) {
                setState(() =>
                    _seccionActual = preguntasFaltantes.first.seccionIndex);
              }
            },
            child: const Text('Seguir editando'),
          ),
          ElevatedButton(
            onPressed: () async {
              final navigator = Navigator.of(context);
              final messenger = ScaffoldMessenger.of(context);
              await RespuestasRepository.instancia.guardarBorrador(
                idLocal: _idLocal,
                schema: widget.schema,
                respuestas: _respuestas,
                otros: _otros,
                seccionActual: _seccionActual,
              );
              await RespuestasRepository.instancia.finalizarRespuesta(_idLocal);

              if (!mounted) return;
              navigator.pop(); // cierra el diálogo
              navigator.pop(); // regresa a Home
              messenger.showSnackBar(
                const SnackBar(
                  content: Text('Diagnóstico guardado en este dispositivo.'),
                  backgroundColor: AppColors.exito,
                ),
              );
            },
            child: const Text('Guardar diagnóstico'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final consentimiento = _respuestas['p2_consentimiento'];
    if (consentimiento == 'No') {
      return _PantallaConsentimientoRechazado(onRegresar: () {
        setState(() => _respuestas['p2_consentimiento'] = null);
      });
    }

    final Map<String, int> indicesSecuenciales = {};
    int contadorSecuencial = 1;
    for (final s in widget.schema.secciones) {
      for (final c in s.campos) {
        if (_campoVisible(c)) {
          indicesSecuenciales[c.id] = contadorSecuencial++;
        }
      }
    }

    final seccion = widget.schema.secciones[_seccionActual];
    final campos = _camposVisiblesDe(seccion);
    final esUltima = _seccionActual == widget.schema.secciones.length - 1;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final navigator = Navigator.of(context);
        await _guardarBorradorSiCambio();
        if (mounted) navigator.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.schema.titulo),
          backgroundColor: widget.colorAcento,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: AnimatedOpacity(
                opacity: _mostrarIconoGuardado ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle_outline,
                        size: 16, color: Colors.white),
                    SizedBox(width: 4),
                    Text(
                      'Guardado',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.schema.secciones.length, (i) {
                  final esActual = i == _seccionActual;
                  final completada = i <= _seccionActual;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: esActual ? 10 : 8,
                    height: esActual ? 10 : 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: completada ? widget.colorAcento : AppColors.borde,
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                seccion.titulo,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: ListView.builder(
                  key: ValueKey(_seccionActual),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: campos.length,
                  itemBuilder: (context, index) {
                    final campo = campos[index];
                    final numSecuencial = indicesSecuenciales[campo.id] ?? 0;
                    return _construirCampo(campo, numSecuencial);
                  },
                ),
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _anterior,
                        child: Text(_seccionActual == 0 ? 'Cancelar' : 'Atrás'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: _siguiente,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: widget.colorAcento),
                        child:
                            Text(esUltima ? 'Revisar y guardar' : 'Siguiente'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _construirCampo(FormFieldConfig campo, int numeroSecuencial) {
    switch (campo.tipo) {
      case FieldType.dropdown:
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoDropdown(
            opciones: campo.opciones,
            valor: _respuestas[campo.id] as String?,
            onChanged: (v) => setState(() => _respuestas[campo.id] = v),
          ),
        );

      case FieldType.singleChoice:
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoOpcionUnica(
            opciones: campo.opciones,
            valor: _respuestas[campo.id] as String?,
            onChanged: (v) => setState(() => _respuestas[campo.id] = v),
            permiteOtro: campo.permiteOtro,
            otroLabel: campo.otroLabel,
            otroOpcionTexto: campo.otroOpcionTexto,
            otroTriggerValor: campo.otroTriggerValor,
            otroValor: _otros[campo.id],
            onOtroChanged: (texto) => _otros[campo.id] = texto,
          ),
        );

      case FieldType.multiChoice:
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoOpcionMultiple(
            opciones: campo.opciones,
            valores: (_respuestas[campo.id] as Set<String>?) ?? <String>{},
            onChanged: (v) => setState(() => _respuestas[campo.id] = v),
            permiteOtro: campo.permiteOtro,
            otroLabel: campo.otroLabel,
            otroOpcionTexto: campo.otroOpcionTexto,
            otroValor: _otros[campo.id],
            onOtroChanged: (texto) => _otros[campo.id] = texto,
            maxSelecciones: campo.maxSelecciones,
          ),
        );

      case FieldType.monthMultiSelect:
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoMesesMultiple(
            meses: mesesDelAno,
            valores: (_respuestas[campo.id] as Set<String>?) ?? <String>{},
            onChanged: (v) => setState(() => _respuestas[campo.id] = v),
          ),
        );

      case FieldType.matrixSingle:
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoMatrizLikert(
            filas: campo.filas,
            columnas: campo.columnas,
            valores: (_respuestas[campo.id] as Map<String, String>?) ??
                <String, String>{},
            onChanged: (v) => setState(() => _respuestas[campo.id] = v),
          ),
        );

      case FieldType.text:
        final controller = _controladorPara(campo.id);
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoTexto(
            controller: controller,
            hintText: campo.placeholder,
          ),
        );

      case FieldType.number:
        final controller = _controladorPara(campo.id);
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoTexto(
            controller: controller,
            tipoTeclado: TextInputType.number,
            hintText: campo.placeholder,
          ),
        );

      case FieldType.textArea:
        final controller = _controladorPara(campo.id);
        return PreguntaContainer(
          campo: campo,
          numeroSecuencial: numeroSecuencial,
          child: CampoTexto(
            controller: controller,
            maxLineas: 4,
            hintText: campo.placeholder,
          ),
        );
    }
  }
}

class _PantallaConsentimientoRechazado extends StatelessWidget {
  final VoidCallback onRegresar;
  const _PantallaConsentimientoRechazado({required this.onRegresar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnóstico')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.info_outline,
                size: 56, color: AppColors.textoSecundario),
            const SizedBox(height: 16),
            Text(
              'Entendido, gracias por su tiempo.',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'No se guardará ninguna respuesta de este diagnóstico. '
              'Si cambia de opinión, puede volver a intentarlo cuando guste.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textoSecundario),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onRegresar,
              child: const Text('Regresar y cambiar mi respuesta'),
            ),
          ],
        ),
      ),
    );
  }
}
