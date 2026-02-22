import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('System admin dashboard screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('System Admin Dashboard'), findsOneWidget);
    expect(find.text('System admin'), findsOneWidget);

    expect(find.text('Active users'), findsOneWidget);
    expect(find.text('18,240'), findsOneWidget);
    expect(find.text('Pharmacies'), findsOneWidget);
    expect(find.text('112'), findsOneWidget);
    expect(find.text('Incidents'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Avg response'), findsOneWidget);
    expect(find.text('< 3s'), findsOneWidget);

    expect(find.text('Manage roles & access'), findsOneWidget);
  });
}
