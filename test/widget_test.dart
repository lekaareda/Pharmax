import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Accessibility screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Accessibility'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Large text'), findsOneWidget);
    expect(find.text('Voice reminders'), findsOneWidget);
    expect(find.text('One-tap reorder'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
