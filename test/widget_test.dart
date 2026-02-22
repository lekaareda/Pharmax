import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Notifications center screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Notifications Center'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);

    expect(find.text('Dose reminder'), findsOneWidget);
    expect(find.text('Metformin 500mg • 08:00'), findsOneWidget);
    expect(find.text('Now'), findsOneWidget);

    expect(find.text('Missed dose'), findsOneWidget);
    expect(find.text('Atorvastatin • 21:00'), findsOneWidget);
    expect(find.text('Yesterday'), findsOneWidget);

    expect(find.text('Refill soon'), findsOneWidget);
    expect(find.text('Metformin remaining 3 days'), findsOneWidget);
    expect(find.text('2 days ago'), findsOneWidget);
  });
}
