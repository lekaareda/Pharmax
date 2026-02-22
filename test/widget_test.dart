import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Rewards screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Rewards'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Your Points'), findsOneWidget);
    expect(find.text('1200'), findsOneWidget);
    expect(find.text('Next reward at 2000 pts'), findsOneWidget);

    expect(find.text('5% off OTC meds'), findsOneWidget);
    expect(find.text('Free delivery on Rx'), findsOneWidget);
    expect(find.text('Buy 1 Get 1 Vitamins'), findsOneWidget);

    expect(find.text('Redeem'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
