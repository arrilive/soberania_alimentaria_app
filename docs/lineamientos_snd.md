# Lineamientos del Sistema Nacional de Diseño (SND / Gob.mx v3) y su Aplicación en la App Móvil

> **Nota de Atribución Institucional**: El diseño visual, la paleta cromática y los componentes de esta aplicación móvil están fundamentados en las fuentes oficiales del Gobierno de México: [Framework de Estilos de Gob.mx v3](https://www.gob.mx/guias/grafica/v3/index.html) y el [Sistema Nacional de Diseño (SND)](https://www.snd.gob.mx/).

Este documento resume la investigación de los lineamientos visuales oficiales del Gobierno de México (Sistema Nacional de Diseño / Guía Gráfica v3 de Gob.mx y Guía de Identidad Gráfica 2024-2030) y analiza su alineación con el sistema de diseño actual de la aplicación móvil de **Soberanía Alimentaria** (`docs/design_tokens.md` y `lib/theme/app_theme.dart`).

---

## 1. Fuentes de Referencia Investigadas

1. **Framework de Estilos de Gob.mx (v3.0)**:
   - **URL Oficial**: [https://www.gob.mx/guias/grafica/v3/index.html](https://www.gob.mx/guias/grafica/v3/index.html)
   - **CDN de Distribución**: `https://framework-gb.cdn.gob.mx/gm/v3/assets/styles/main.css`
   - **Ámbito**: Estándar técnico y visual para sitios web, trámites y plataformas digitales del Gobierno Federal.
2. **Guía de Identidad Gráfica Institucional del Gobierno de México (2024-2030)**:
   - **Ámbito**: Manual de marca del Gobierno Federal que define la paleta cromática oficial (Guinda y Dorado), tipografías institucionales y reglas de aplicación de logotipos.
3. **Tokens Actuales de la App**:
   - Extraídos directamente del portal del proyecto [SIEMAI - Soberanía Alimentaria](https://siemai.mx/soberania_alimentaria/) y documentados en `docs/design_tokens.md`.

---

## 2. Lineamientos que Aplican Directamente a la App Móvil

- **Paleta Cromática Institucional**:
  - **Color Primario (Guinda)**: Utilizado en barras superiores (AppBar), encabezados de formularios, botones primarios de acción y estados activos (`:focus`).
  - **Color Secundario / Acento (Dorado/Ocre)**: Líneas de acento, bordes decorativos institucionales y leyendas gubernamentales.
  - **Colores Neutros**: Fondos claros de alto contraste (`#FFFFFF` para contenedores/tarjetas, `#F4F4F4` para fondos generales) y texto oscuro (`#333333` / `#232528`) asegurando accesibilidad WCAG AA.
- **Componentes de Formulario Estándar**:
  - Campos de entrada (`TextField`, `Dropdown`) con borde sobrio (`#D0D0D0`) de 1px y resplandor/borde en color Guinda con grosor de 2px en estado enfocado.
  - Botones con altura mínima amplia para interacción táctil (mínimo 48px–52px) y texto en mayúsculas/minúsculas de peso semi-bold (`w600`).
- **Encabezado Institucional**:
  - Presencia visible de la identidad institucional (logos de SECIHTI, TecNM/ITM, CentroGeo, GeoInt) en la pantalla principal.

---

## 3. Comparativa de Tokens: `app_theme.dart` vs. Estándar SND (Gob.mx v3)

A continuación se comparan los tokens implementados actualmente en `lib/theme/app_theme.dart` contra la especificación oficial de Gob.mx v3 / Identidad 2024-2030:

| Token / Elemento | Valor Actual en App | Especificación Gob.mx v3 / Identidad | Referencia / Fuente | Estado / Propuesta |
| :--- | :--- | :--- | :--- | :--- |
| **Color Primario (Guinda)** | `#6A1B29` | `#9F2241` (Guinda Gob.mx) / `#6A1B29` (Guinda Oscuro SECIHTI) | Guía Gráfica 2024-2030 / SIEMAI web | **Mantener `#6A1B29`**. Es el tono exacto en el portal del proyecto SECIHTI/SIEMAI. |
| **Color Dorado (Acento)** | `#BC955C` | `#BC955C` (Dorado Institucional) | Manual de Identidad Gob.mx v3 | **Coincidencia Exacta**. Se mantiene `#BC955C`. |
| **Dorado Sutil (Bordes)** | `#D4AF37` | `#D4AF37` | Formulario SIEMAI web | **Coincidencia Exacta**. Se mantiene `#D4AF37`. |
| **Fondo General** | `#F4F4F4` | `#F4F4F4` / `#F8F9FA` | Bootstrap v5 / Gob.mx v3 | **Coincidencia Exacta**. Se mantiene `#F4F4F4`. |
| **Fondo Superficie (Card)**| `#FFFFFF` | `#FFFFFF` | Gob.mx v3 | **Coincidencia Exacta**. Se mantiene `#FFFFFF`. |
| **Texto Principal** | `#333333` | `#232528` (Gris Oxford) / `#333333` | Gob.mx v3 CSS main.css | **Compatible**. `#333333` ofrece excelente legibilidad en pantalla. |
| **Texto Secundario** | `#666666` | `#6C757D` / `#444444` | Gob.mx v3 | **Coincidencia Práctica**. Se mantiene `#666666`. |
| **Borde Estándar** | `#D0D0D0` | `#DEE2E6` / `#D0D0D0` | Gob.mx v3 Forms | **Coincidencia Práctica**. Se mantiene `#D0D0D0`. |
| **Radio de Borde (`AppRadius`)** | `8.0px` | `4.0px` (`0.25rem` / `0.375rem`) | Gob.mx v3 Bootstrap base | **Punto de decisión**. Ver sección 5. |

---

## 4. Restricciones Offline-First y Alternativas Propuestas

Por requerimiento explícito del proyecto, la app debe funcionar de forma **100% autónoma en campo rural sin conexión a internet**. Esto genera las siguientes divergencias con la norma Gob.mx v3:

### A. Tipografía Institucional
- **Norma Gob.mx v3 (Web)**:
  - Títulos (`h1`, `h2`, `h3`): **Patria** (fuente institucional del Gobierno de México).
  - Cuerpo de texto (`body`): **Noto Sans**.
  - *Mecanismo Web*: Se cargan dinámicamente vía CDN (`https://framework-gb.cdn.gob.mx/...`).
- **Restricción Offline-First**:
  - En la app móvil no podemos cargar fuentes en tiempo de ejecución ni usar el paquete `google_fonts` (que requiere conexión a internet).
- **Alternativas Propuestas**:
  1. **Opción A (Actual - Recomendada)**: Usar la **fuente sin serifa del sistema operativo** (`Roboto` en Android, `San Francisco` en iOS). `Roboto` pertenece a la misma familia visual que `Noto Sans`, viene preinstalada en el 100% de los dispositivos Android y no añade peso al APK ni requiere red.
  2. **Opción B (Fidelidad Tipográfica Exacta)**: Descargar los archivos locales `.ttf` / `.otf` de **Patria** y/o **Noto Sans**, empaquetarlos en `assets/fonts/` y registrarlos en `pubspec.yaml`.
     - *Ventaja*: Cumplimiento estricto de la tipografía oficial del Gobierno.
     - *Desventaja*: Incrementa el tamaño del instalador (APK) en ~1–3 MB.

### B. Inclusión de Scripts/CSS Externos
- **Norma Gob.mx v3 (Web)**: Exige vincular la hoja de estilos `main.css` y el script `gobmx.js` desde el CDN oficial.
- **Restricción Offline-First**: Incompatible con aplicaciones móviles nativas compiladas en Flutter.
- **Alternativa Aplicada**: Toda la identidad visual se replica nativamente en `lib/theme/app_theme.dart` mediante `ThemeData`, `ColorScheme` y tokens de estilo nativos de Flutter.

---

## 5. Lineamientos Ambiguos o Inaplicables en Entorno Rural Offline

Se identifican los siguientes puntos para revisión y decisión del equipo (Luis y Claude):

1. **Radio de Borde (8px vs 4px)**:
   - *Gob.mx v3 Web*: Utiliza un radio de borde rígido de `4px` en botones, tarjetas y campos.
   - *App Móvil Actual*: Utiliza `8.0px` en `AppRadius.base` para una apariencia táctil más moderna e interactiva en dispositivos móviles.
   - *Pregunta para el equipo*: ¿Conservamos `8.0px` por ergonomía móvil o lo reducimos a `4.0px` para fidelidad exacta con la guía web?

2. **Diferencia entre Guinda `#9F2241` y `#6A1B29`**:
   - La Guía General del Gobierno Federal 2024-2030 indica `#9F2241` como rojo/guinda institucional primario para comunicación social. Sin embargo, el sitio web específico del proyecto SECIHTI (`siemai.mx`) utiliza `#6A1B29` (un guinda más oscuro y formal).
   - *Recomendación*: Mantener `#6A1B29` ya que es el token directo del proyecto SECIHTI.

3. **Footer y Enlaces Institucionales**:
   - Las guías webs exigen un pie de página con enlaces a `gob.mx/tramites`, políticas de privacidad web y redes sociales.
   - *Adaptación Rural*: En una app offline, estos enlaces externos no son funcionales. Se sugiere mantener el footer informativo actual enfocado en el estado de sincronización local y aviso de confidencialidad.

---

## 6. Resumen de Recomendaciones

1. **Mantener la paleta actual en `AppColors`**: Los colores extraídos de `siemai.mx` (`#6A1B29` y `#BC955C`) ya están 100% en consonancia con la identidad gráfica oficial del Gobierno de México.
2. **Definir estrategia tipográfica**: Decidir entre mantener fuentes de sistema (Roboto/San Francisco) o empaquetar archivos `.ttf` de *Patria* / *Noto Sans* localmente en `assets/fonts/`.
3. **Conservar `docs/lineamientos_snd.md`**: Utilizar este documento como guía de referencia antes de autorizar cualquier refactorización visual en `app_theme.dart`.
