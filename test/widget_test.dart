import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Pharmacy admin dashboard screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Pharmacy Admin Dashboard'), findsOneWidget);
    expect(find.text('Pharmacy admin'), findsOneWidget);

    expect(find.text('Inventory low stock'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('Active deliveries'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('Revenue today'), findsOneWidget);
    expect(find.text('EGP 12,450'), findsOneWidget);

    expect(find.text('Manage inventory'), findsOneWidget);
    expect(find.text('Manage pharmacists'), findsOneWidget);
  });
}
