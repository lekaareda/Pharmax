import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Auto refill settings screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Auto Refill Settings'), findsOneWidget);
    expect(find.text('Auto refill'), findsOneWidget);
    expect(find.text('Enabled medicines'), findsOneWidget);
    expect(find.text('Metformin 500mg'), findsOneWidget);
    expect(find.text('Insulin pen'), findsOneWidget);
    expect(find.text('ON'), findsOneWidget);
    expect(find.text('OFF'), findsOneWidget);
    expect(find.text('Trigger when remaining'), findsOneWidget);
    expect(find.text('3 days'), findsOneWidget);
    expect(find.text('Save settings'), findsOneWidget);
  });
}
