import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Compare pharmacies screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Compare Pharmacies'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Al Shorouk'), findsOneWidget);
    expect(find.text('\$10'), findsOneWidget);
    expect(find.text('45m'), findsOneWidget);

    expect(find.text('Good Health'), findsOneWidget);
    expect(find.text('\$12'), findsOneWidget);
    expect(find.text('30m'), findsOneWidget);

    expect(find.text('Medico'), findsOneWidget);
    expect(find.text('\$9'), findsOneWidget);
    expect(find.text('60m'), findsOneWidget);

    expect(find.text('Sort by price, ETA or rating using dropdown'), findsOneWidget);
    expect(find.text('Select'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
