import 'package:flutter_test/flutter_test.dart';

import 'package:soberania_alimentaria_app/main.dart';

void main() {
  testWidgets('La app arranca y muestra la pantalla de inicio',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SoberaniaAlimentariaApp());

    expect(find.text('Diagnóstico de Cadena de Valor Agroecológica'),
        findsOneWidget);
  });
}
