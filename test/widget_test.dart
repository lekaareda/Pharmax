import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Profile settings screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Profile & settings'), findsOneWidget);
    expect(find.text('Lekaa Reda'), findsOneWidget);
    expect(find.text('Patient • Verified phone'), findsOneWidget);

    expect(find.text('Language'), findsOneWidget);
    expect(find.text('Accessibility (Large text)'), findsOneWidget);
    expect(find.text('Privacy'), findsOneWidget);
    expect(find.text('Payment methods'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Help & support'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
