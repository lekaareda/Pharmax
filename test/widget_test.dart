import 'package:flutter_test/flutter_test.dart';
import 'package:pharmax/main.dart';

void main() {
  testWidgets('home tab shows core modules', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Quick actions'), findsOneWidget);
    expect(find.text('Buy medicines'), findsOneWidget);
    expect(find.text('Health Records'), findsOneWidget);
  });

  testWidgets('bottom navigation switches to profile tab', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    await tester.tap(find.text('Profile').last);
    await tester.pumpAndSettle();

    expect(find.text('Profile & settings'), findsOneWidget);
    expect(find.text('Lekaa Reda'), findsOneWidget);
    expect(find.text('Help & support'), findsOneWidget);
  });

  testWidgets('user can checkout from cart to confirm order', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    await tester.tap(find.text('Orders').last);
    await tester.pumpAndSettle();

    expect(find.text('Buy medicines'), findsOneWidget);

    await tester.tap(find.text('Add').first);
    await tester.pumpAndSettle();

    expect(find.text('View cart (1)'), findsOneWidget);
    await tester.tap(find.text('View cart (1)'));
    await tester.pumpAndSettle();

    expect(find.text('Cart'), findsOneWidget);
    await tester.tap(find.text('Proceed to payment'));
    await tester.pumpAndSettle();

    expect(find.text('Payment methods'), findsOneWidget);
    await tester.tap(find.text('Wallet'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(find.text('Confirm order'), findsOneWidget);
    await tester.tap(find.text('Place order'));
    await tester.pumpAndSettle();

    expect(find.text('Order #A-5403'), findsOneWidget);
  });

  testWidgets('menu option opens dedicated option details screen', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    await tester.tap(find.text('Profile').last);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Language'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('English (active)'));
    await tester.pumpAndSettle();

    expect(find.text('Option: English (active)'), findsOneWidget);
    expect(find.text('This belongs to \"Language\".'), findsOneWidget);
  });

  testWidgets('orders UX supports search and category filtering', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    await tester.tap(find.text('Orders').last);
    await tester.pumpAndSettle();

    expect(find.text('Search medicines'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'vitamin');
    await tester.pumpAndSettle();

    expect(find.text('Vitamin C 1000mg'), findsOneWidget);
    expect(find.text('Amoxicillin 500mg'), findsNothing);

    await tester.tap(find.text('Rx'));
    await tester.pumpAndSettle();

    expect(find.text('No medicines match your search'), findsOneWidget);
  });

  testWidgets('checkout shows progress stepper', (WidgetTester tester) async {
    await tester.pumpWidget(const PharmaxApp());

    await tester.tap(find.text('Orders').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add').first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('View cart (1)'));
    await tester.pumpAndSettle();

    expect(find.text('Cart'), findsWidgets);
    expect(find.text('Payment'), findsOneWidget);
    expect(find.text('Confirm'), findsOneWidget);
  });
}
