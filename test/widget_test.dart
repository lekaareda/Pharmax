import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Chronic disease mode screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Chronic Disease Mode'), findsOneWidget);
    expect(find.text('Chronic mode'), findsOneWidget);
    expect(find.text('Condition'), findsOneWidget);
    expect(find.text('Diabetes type 2'), findsOneWidget);
    expect(find.text('Upcoming tests'), findsOneWidget);
    expect(find.text('HbA1c test  •  due 20 Feb 2026'), findsOneWidget);
    expect(find.text('Fasting glucose  •  weekly'), findsOneWidget);
    expect(find.text('Set reminders'), findsOneWidget);
  });
}
