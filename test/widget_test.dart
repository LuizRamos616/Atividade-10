import 'package:flutter_test/flutter_test.dart';
import 'package:app/main.dart';

void main() {
  testWidgets('App carrega MeuApp', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuApp());
    expect(find.byType(MeuApp), findsOneWidget);
  });
}
