import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Payment and checkout screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Payment & Checkout'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Card'), findsOneWidget);
    expect(find.text('Wallet'), findsOneWidget);
    expect(find.text('Apple/Google Pay'), findsOneWidget);

    expect(find.text('Promo code'), findsOneWidget);
    expect(find.text('Apply'), findsOneWidget);
    expect(find.text('Pay Now'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
