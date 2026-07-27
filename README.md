# Soberanía Alimentaria — Prototipo de app móvil (diseño de interfaz)

Prototipo Flutter de los formularios **Ejecutivo** y **Ampliado** del
diagnóstico de cadena de valor agroecológica (Proyecto SECIHTI 2026,
UADY — Redes de Producción Agroalimentaria Resilientes).

## Qué es esto y qué no es

Esto es un **mockup de interfaz navegable y real** (no imágenes, no Figma):
corre en un emulador o teléfono físico, se puede enseñar a tus superiores
tocando pantallas de verdad. **No incluye todavía** almacenamiento local
persistente (SQLite) ni sincronización — eso es la fase 2, una vez que el
diseño esté aprobado (ver sección "Próximos pasos"). Aplicando YAGNI: no
tenía sentido construir la capa de persistencia antes de saber si el
diseño de las pantallas va a cambiar con el feedback de tus superiores.

## Cómo correrlo

```bash
flutter pub get
flutter run
```

Pruébalo primero en un emulador Android o iOS, o en un teléfono físico
conectado por USB con depuración habilitada.

**Si `flutter pub get` o `flutter run` marcan algún error:** cópiame el
mensaje de error completo. No pude compilar este código en el entorno
donde lo escribí (sandbox sin Flutter/Dart instalado), así que es posible
que alguna API de Flutter haya cambiado de nombre entre versiones —
lo corrijo en cuanto me digas qué versión de Flutter tienes
(`flutter --version`) y qué error da.

## Estructura del proyecto

```
lib/
  main.dart                        -> punto de entrada
  theme/app_theme.dart             -> ÚNICA fuente de verdad de colores/tipografía
  models/form_models.dart          -> tipos de campo, pregunta y sección (declarativo)
  data/catalogos.dart              -> comunidades, municipios, meses (copiados de la web)
  data/form_schemas.dart           -> contenido real de Ejecutivo y Ampliado
  widgets/form_field_widgets.dart  -> un widget por cada tipo de pregunta
  widgets/offline_badge.dart       -> aviso de "modo sin conexión"
  screens/home_screen.dart         -> pantalla de inicio (elegir formulario)
  screens/dynamic_form_screen.dart -> el "motor" que renderiza cualquier formulario
```

### Por qué "motor de formularios" y no dos pantallas separadas

Ejecutivo y Ampliado comparten ~26 preguntas idénticas. En vez de duplicar
el layout de cada pregunta dos veces (con el riesgo de que un día
diverjan silenciosamente, como pasó con `promedioGeneral()` en tu proyecto
anterior), cada pregunta se define **una sola vez** en `form_schemas.dart`
como datos (`FormFieldConfig`), y una sola pantalla (`DynamicFormScreen`)
sabe cómo dibujar cualquier tipo de pregunta. Agregar una pregunta nueva o
corregir el texto de una existente es un cambio en un solo lugar.

## Decisiones de UX que quiero que revises con tus superiores

1. **Wizard por secciones, no scroll infinito.** Cada sección (bloque
   temático del formulario original) es una "página" con barra de
   progreso — reduce la sensación de formulario interminable, muy
   relevante para el Ampliado (39 preguntas).
2. **Tablas Likert → tarjetas apiladas.** Las tablas del sitio web
   (práctica x nivel, riesgo x probabilidad) no caben legibles en una
   pantalla de ~360px. Cada fila se volvió su propia tarjeta con las
   columnas como chips debajo — mismo dato, adaptado al ancho real de un
   teléfono. Esto es exactamente lo que definiste en tu propio documento
   para Blade: cuando una tabla no funciona en el medio de destino, se
   busca el patrón de presentación correcto, no se fuerza el original.
3. **Consentimiento (pregunta 2) como compuerta real.** Si alguien
   contesta "No", la app no sigue mostrando las 24-38 preguntas
   restantes — muestra una pantalla de agradecimiento y no guarda nada.
   Es una decisión ética, no solo de UX.
4. **"Guardar diagnóstico", nunca "Enviar".** Ver el mensaje de commit /
   filosofía del proyecto: la app es honesta sobre qué hace con los
   datos en cada momento.
5. **Preguntas condicionales (skip logic).** La pregunta 22 (Ampliado)
   solo aparece si en la 21 la persona dijo "Sí, me han limitado" —
   reduce preguntas irrelevantes sin quitarle profundidad al diagnóstico
   para quien sí aplica.
6. **Límite visible en "elige 3 de 9" (pregunta 34).** Se deshabilitan
   las demás opciones al llegar al límite, con contador visible, en vez
   de dejar que la persona seleccione 7 y luego fallar la validación.

## Próximos pasos (fuera del alcance de este prototipo)

- Persistencia local real con `drift` (SQLite tipado) en vez de estado en
  memoria — necesario en cuanto el diseño esté aprobado.
- Un folio/ID único por diagnóstico guardado.
- Pantalla de "diagnósticos guardados en este dispositivo" con conteo de
  pendientes por sincronizar.
- Mecanismo de sincronización diferida contra el backend de siemai.mx
  cuando el dispositivo recupere conexión.
- Colores y tipografía oficiales exactos de SECIHTI/ITM/CentroGeo/GeoInt
  en cuanto tengas el manual de marca o las capturas del CSS real.
