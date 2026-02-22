import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Emergency screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Emergency'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Call ambulance'), findsOneWidget);
    expect(find.text('Nearest 24/7 pharmacy'), findsOneWidget);
    expect(find.text('Share location'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
