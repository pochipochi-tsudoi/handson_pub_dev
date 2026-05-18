import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pochi_pochi2026_handson/app.dart';

void main() {
  testWidgets('shows home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));
    await tester.pumpAndSettle();

    expect(find.text('pub.dev search'), findsOneWidget);
  });
}
