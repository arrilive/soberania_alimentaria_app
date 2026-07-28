import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const SoberaniaAlimentariaApp());
}

class SoberaniaAlimentariaApp extends StatelessWidget {
  const SoberaniaAlimentariaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soberanía alimentaria',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      home: const HomeScreen(),
    );
  }
}
