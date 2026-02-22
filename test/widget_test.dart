import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Symptom check screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Symptom Check'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);
    expect(find.text('1/3'), findsOneWidget);
    expect(find.text('Select symptoms:'), findsOneWidget);

    expect(find.text('Headache'), findsOneWidget);
    expect(find.text('Cough'), findsOneWidget);
    expect(find.text('Fever'), findsOneWidget);
    expect(find.text('Nausea'), findsOneWidget);

    expect(find.text('Continue'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
