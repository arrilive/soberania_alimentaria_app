# Tokens de Diseño - Sobreranía Alimentaria

Reporte detallado de los tokens de diseño extraídos del sitio web oficial [https://siemai.mx/soberania_alimentaria/](https://siemai.mx/soberania_alimentaria/) y sus dos formularios (`formulario_ejecutivo.html` y `formulario_ampliado.html`).

## Colores

- **primario (Guinda Institucional)**: `#6A1B29`
  - *Header principal de la página de inicio (`header`)*
  - *Botones principales de acción (`.btn-institucional` y `button[type="submit"]`)*
  - *Borde superior decorativo del contenedor de formularios (`.container` border-top)*
  - *Títulos de encabezado y leyendas (`h1` y `legend` en formularios)*
  - *Borde activo al seleccionar campos (`input:focus`, `select:focus`, `textarea:focus`)*
  - *Color de acento en radio/checkbox (`accent-color`)*

- **primario hover (Guinda Oscuro)**: `#531420`
  - *Estado hover del botón de envío en formularios (`button[type="submit"]:hover`)*

- **dorado institucional / acento (Oro Institucional)**: `#BC955C`
  - *Borde inferior del header principal en inicio (`header` border-bottom en index)*
  - *Texto del subtítulo/etiqueta gubernamental (`.gob-label` en index)*
  - *Borde superior del pie de página (`footer` border-top en index)*

- **dorado sutil (Acento en Formularios)**: `#D4AF37`
  - *Borde inferior de separación del header en formularios (`header` border-bottom)*

- **fondo de página (Inicio)**: `#FFFFFF`
  - *Fondo general del cuerpo (`body` en `index.html`)*

- **fondo de página (Formularios)**: `#F4F4F4`
  - *Fondo general del cuerpo (`body` en `formulario_ejecutivo.html` y `formulario_ampliado.html`)*

- **fondo de tarjetas y contenedores**: `#FFFFFF`
  - *Fondo del contenedor principal de formularios (`.container`)*
  - *Fondo de la franja superior de logotipos (`.institutions-header` en index)*
  - *Fondo de tablas de datos (`table`)*

- **fondo de secciones / fieldsets**: `#F9F9F9`
  - *Fondo de agrupaciones de campos (`fieldset` en formularios)*

- **fondo de encabezado de tabla**: `#ECECEC`
  - *Fondo de encabezados de tabla (`table th`)*

- **fondo de primera columna de tabla**: `#FAFAFB`
  - *Fondo de celdas identificadoras en tablas (`table td:first-child`)*

- **fondo de pie de página**: `#232528`
  - *Fondo del footer institucional (`footer` en index)*

- **texto principal (Inicio)**: `#232528`
  - *Color de texto base (Gris Oxford en `body` de `index.html`)*

- **texto principal (Formularios)**: `#333333`
  - *Color de texto base en cuerpo y formularios (`body` y `.container`)*

- **texto secundario / etiquetas**: `#444444`
  - *Etiquetas de campos de formulario (`.form-group label`)*

- **texto de subtítulos / notas**: `#666666`
  - *Subtítulos descriptivos en formularios (`.subtitle`)*

- **texto sobre fondo oscuro / botones**: `#FFFFFF`
  - *Texto en header principal, botones e indicaciones sobre guinda o gris oxford*

- **texto de pie de página (Secundario)**: `#FFFFFF` (opacidad 80% / `rgba(255, 255, 255, 0.8)`)
  - *Párrafos informativos en pie de página (`footer p`)*

- **bordes y divisores**:
  - `#E0E0E0`: *Borde inferior de sección de logotipos (`.institutions-header`)*
  - `#D0D0D0`: *Bordes de secciones (`fieldset`), campos (`input`, `select`, `textarea`) y celdas de tabla (`table th, table td`)*

- **sombra de enfocado (Focus Glow)**: `rgba(106, 27, 41, 0.2)` (`#6A1B29` con 20% opacidad)
  - *Resplandor al enfocar campos de texto (`box-shadow` en `:focus`)*

---

## Tipografía

- **familia (Página Principal - `index.html`)**: `'Times New Roman', Times, serif, Arial, sans-serif`
  - *Declarada en `body` para un estilo institucional y sobrio.*
  - *Botones principales de inicio (`.btn-institucional`): `Arial, sans-serif`.*

- **familia (Formularios - `formulario_ejecutivo.html` y `formulario_ampliado.html`)**: `'Helvetica Neue', Helvetica, Arial, sans-serif`
  - *Declarada en `body`, títulos `h1`, leyendas `legend` y elementos de formulario.*

- **fuente**: Tipografías del Sistema (System Fonts).
  - *No utiliza fuentes CDN ni externas (como Google Fonts).*

---

## Logos

Archivos descargados en alta resolución y almacenados localmente en la carpeta `assets/logos/`:

- `assets/logos/logo_secihti.png` (Logo de SECIHTI - Secretaría de Ciencias, Humanidades, Tecnología e Innovación)
- `assets/logos/logo_itm.png` (Logo del Instituto Tecnológico de México / TecNM)
- `assets/logos/GEO_V_H.png` (Logo de CentroGeo)
- `assets/logos/GEOINT_V_H.png` (Logo de GeoInt)

---

## Espaciado y Bordes Redondeados

- **Bordes redondeados (Border Radius)**:
  - Botones (`.btn-institucional`, `button[type="submit"]`): `4px`
  - Contenedor principal de formularios (`.container`): `4px`
  - Bloques/Secciones de formulario (`fieldset`): `4px`
  - Campos de entrada (`input`, `select`, `textarea`): `4px`
  - Header / Navbar / Footer: `0px`

- **Patrones de Espaciado (Padding & Margins)**:
  - **Header de Logotipos (`.institutions-header`)**: padding `20px 20px 10px 20px`
  - **Header Principal (`header`)**:
    - Inicio: padding `25px 20px`
    - Formularios: margin-bottom `30px`, padding-bottom `20px`
  - **Contenedores Principales**:
    - Inicio (`main`): padding `40px 20px`, max-width `1000px`
    - Formularios (`.container`): padding `40px`, max-width `850px`
  - **Secciones y Campos**:
    - Bloques `fieldset`: padding `20px`, margin-bottom `25px`
    - Grupos de campo (`.form-group`): margin-bottom `20px`
    - Etiquetas (`label`): margin-bottom `8px`
    - Campos de texto (`input`, `select`, `textarea`): padding `10px`
    - Celdas de tabla (`th`, `td`): padding `10px`
  - **Botones**:
    - Botón institucional (Inicio): padding `15px 30px`, min-width `240px`
    - Botón de envío (Formularios): padding `12px 40px`
  - **Pie de Página (`footer`)**: padding `20px`

- **Sombras (Box Shadow)**:
  - Contenedor de formularios (`.container`): `0 2px 5px rgba(0,0,0,0.1)`
  - Botones de inicio en reposo (`.btn-institucional`): `0 2px 4px rgba(0,0,0,0.1)`
  - Botones de inicio en hover (`.btn-institucional:hover`): `0 4px 8px rgba(0,0,0,0.15)`
