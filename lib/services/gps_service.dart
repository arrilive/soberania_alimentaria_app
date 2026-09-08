import 'dart:async';
import 'package:geolocator/geolocator.dart';

/// Umbral de precisión objetivo, en metros. Basado en la práctica de
/// KoboToolbox/ODK Collect para encuestas de campo offline (referencia de
/// facto del sector). Ver CONTEXTO_SESION.md sección 4.5.
const double _precisionObjetivoMetros = 5.0;

/// Tiempo máximo de espera de respaldo, en segundos. Si no se alcanza el
/// umbral de precisión antes de este límite, se usa la mejor lectura
/// obtenida hasta ese momento (o null si no hubo ninguna).
const int _timeoutMaximoSegundos = 15;

/// Intenta capturar la ubicación GPS con umbral de precisión + timeout de
/// respaldo. NUNCA lanza excepción ni bloquea indefinidamente: si el
/// servicio de ubicación está apagado, el permiso es denegado, o no hay
/// señal a tiempo, regresa null y el llamador debe continuar sin bloquear
/// el guardado del diagnóstico.
Future<Position?> capturarUbicacion() async {
  try {
    final servicioHabilitado = await Geolocator.isLocationServiceEnabled();
    if (!servicioHabilitado) return null;

    var permiso = await Geolocator.checkPermission();
    if (permiso == LocationPermission.denied) {
      permiso = await Geolocator.requestPermission();
    }
    if (permiso == LocationPermission.denied ||
        permiso == LocationPermission.deniedForever) {
      return null;
    }

    Position? mejorPosicion;
    final completer = Completer<Position?>();
    late final StreamSubscription<Position> subscripcion;

    subscripcion = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
      ),
    ).listen((posicion) {
      if (mejorPosicion == null ||
          posicion.accuracy < mejorPosicion!.accuracy) {
        mejorPosicion = posicion;
      }
      if (posicion.accuracy <= _precisionObjetivoMetros) {
        subscripcion.cancel();
        if (!completer.isCompleted) completer.complete(mejorPosicion);
      }
    }, onError: (_) {
      subscripcion.cancel();
      if (!completer.isCompleted) completer.complete(mejorPosicion);
    });

    Timer(const Duration(seconds: _timeoutMaximoSegundos), () {
      subscripcion.cancel();
      if (!completer.isCompleted) completer.complete(mejorPosicion);
    });

    return await completer.future;
  } catch (_) {
    return null;
  }
}
