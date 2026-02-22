import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Insurance screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Insurance'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Provider'), findsOneWidget);
    expect(find.text('Axa'), findsOneWidget);
    expect(find.text('Card #'), findsOneWidget);
    expect(find.text('1234 5678 9012'), findsOneWidget);
    expect(find.text('Coverage'), findsOneWidget);
    expect(find.text('80%'), findsOneWidget);

    expect(find.text('Use insurance'), findsOneWidget);
    expect(find.text('Remaining to pay: \$20'), findsOneWidget);
    expect(find.text('Verify'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
