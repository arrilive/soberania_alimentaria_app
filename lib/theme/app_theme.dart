import 'package:flutter/material.dart';

/// Paleta y radios institucionales.
///
/// Estos valores YA NO son un placeholder: son los tokens reales extraídos
/// por Antigravity de https://siemai.mx/soberania_alimentaria/ y sus dos
/// formularios (ver docs/design_tokens.md). Cada color de aquí tiene un
/// comentario que dice exactamente de qué elemento del sitio salió.
///
/// Toda la paleta vive en ESTE archivo y en ningún otro lugar del código.
class AppColors {
  AppColors._();

  // --- Guinda institucional (color primario en todo el sitio) ---
  static const Color guinda = Color(0xFF6A1B29); // header, botones, h1/legend
  static const Color guindaHover =
      Color(0xFF531420); // hover de button[type=submit]
  static const Color guindaFoco =
      Color(0x336A1B29); // box-shadow de :focus (20% alpha)

  // --- Dorado (acentos, uso mínimo — así se usa en el sitio también) ---
  static const Color doradoInstitucional =
      Color(0xFFBC955C); // borde header/footer, .gob-label (index)
  static const Color doradoSutil =
      Color(0xFFD4AF37); // borde inferior de header en formularios

  // --- Fondos (tomamos los de formulario_ejecutivo/ampliado.html, que es
  //     el contexto real de esta app — no los de la landing index.html) ---
  static const Color fondo = Color(0xFFF4F4F4); // body de los formularios
  static const Color superficie = Color(0xFFFFFFFF); // .container, table
  static const Color fondoSeccion = Color(0xFFF9F9F9); // fieldset
  static const Color fondoHeaderTabla = Color(0xFFECECEC); // table th
  static const Color fondoColumnaTabla =
      Color(0xFFFAFAFB); // table td:first-child

  // --- Texto (tal cual el sitio de formularios, no la landing serif) ---
  static const Color textoPrincipal = Color(0xFF333333); // body / .container
  static const Color textoEtiqueta = Color(0xFF444444); // .form-group label
  static const Color textoSecundario = Color(0xFF666666); // .subtitle

  // --- Bordes ---
  static const Color borde = Color(0xFFD0D0D0); // fieldset, input, table
  static const Color bordeDivisor = Color(0xFFE0E0E0); // .institutions-header

  // --- Semánticos (no vienen del sitio; los definimos para estados de la app) ---
  static const Color exito = Color(0xFF3F6C4E);
  static const Color advertencia = Color(0xFFB4622A);

  // --- Aliases / Compatibilidad ---
  static const Color guindaOscuro = Color(0xFF48121C);
  static const Color verdeTierra = Color(0xFF3F6C4E);
  static const Color verdeTierraOscuro = Color(0xFF2C4E38);
}

/// Radio de borde único para toda la app (botones, tarjetas, campos).
///
/// El sitio web usa 4px en todo (muy institucional/serio). Para una app
/// móvil nativa lo suavizamos un poco — así se acordó explícitamente:
/// "mantener identidad pero adaptada a app móvil nativa", no replicar
/// pixel a pixel. Si prefieren fidelidad exacta al sitio, cambien este
/// único valor a 4.0.
class AppRadius {
  AppRadius._();
  static const double base = 8.0;
}

class AppTheme {
  AppTheme._();

  static ThemeData get tema {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.guinda,
      primary: AppColors.guinda,
      secondary: AppColors.doradoInstitucional,
      surface: AppColors.superficie,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      // NOTA SOBRE TIPOGRAFÍA: el sitio usa 'Helvetica Neue'/Helvetica/Arial
      // en los formularios. Ninguna de esas viene instalada en Android, y
      // NO usamos el paquete google_fonts porque descarga las fuentes por
      // internet en tiempo de ejecución — inaceptable en una app que debe
      // funcionar sin conexión en campo. Por ahora se usa la fuente del
      // sistema (Roboto en Android, San Francisco en iOS), que es sans-serif
      // y de la misma familia visual. Si se necesita fidelidad exacta,
      // el siguiente paso es empaquetar 'Arimo' o 'Liberation Sans'
      // (métricamente compatibles con Arial) como asset local — lo hacemos
      // cuando lo confirmen.
      fontFamily: null,
      scaffoldBackgroundColor: AppColors.fondo,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.guinda,
        foregroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: AppColors.superficie,
        elevation: 0,
        margin: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.base),
          side: const BorderSide(color: AppColors.borde),
        ),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: AppColors.textoPrincipal,
          height: 1.25,
        ),
        titleMedium: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: AppColors.textoPrincipal,
          height: 1.3,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppColors.textoPrincipal,
          height: 1.4,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppColors.textoSecundario,
          height: 1.4,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.guinda,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(52), // dedo grande, contexto rural
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.base),
          ),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(52),
          side: const BorderSide(color: AppColors.guinda, width: 1.5),
          foregroundColor: AppColors.guinda,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.base),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.superficie,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.base),
          borderSide: const BorderSide(color: AppColors.borde),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.base),
          borderSide: const BorderSide(color: AppColors.borde),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.base),
          borderSide: const BorderSide(color: AppColors.guinda, width: 2),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.guinda,
        linearTrackColor: AppColors.borde,
      ),
      chipTheme: ChipThemeData(
        selectedColor: AppColors.guinda.withValues(alpha: 0.15),
        backgroundColor: AppColors.fondoSeccion,
        side: const BorderSide(color: AppColors.borde),
        labelStyle: const TextStyle(color: AppColors.textoPrincipal),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.base)),
      ),
    );
  }
}
