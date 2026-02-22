import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Pharmacy admin dashboard screen renders expected elements', (
  testWidgets('Pharmacist dashboard screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Pharmacy Admin Dashboard'), findsOneWidget);
    expect(find.text('Pharmacy admin'), findsOneWidget);

    expect(find.text('Inventory low stock'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('Active deliveries'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('Revenue today'), findsOneWidget);
    expect(find.text('EGP 12,450'), findsOneWidget);

    expect(find.text('Manage inventory'), findsOneWidget);
    expect(find.text('Manage pharmacists'), findsOneWidget);
    expect(find.text('Pharmacist Dashboard'), findsOneWidget);
    expect(find.text('Pharmacist dashboard'), findsOneWidget);

    expect(find.text('New prescriptions'), findsOneWidget);
    expect(find.text('12'), findsOneWidget);
    expect(find.text('Pending chats'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('Orders to verify'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);

    expect(find.text('Today queue'), findsOneWidget);
    expect(find.text('Rx #12931  •  Review needed'), findsOneWidget);
    expect(find.text('Order #A-5402 •  Substitute approval'), findsOneWidget);

    expect(find.text('Open prescriptions'), findsOneWidget);
  testWidgets('Drug education screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Drug Education'), findsOneWidget);
    expect(find.text('Drug education'), findsOneWidget);
    expect(find.text('Search medicine...'), findsOneWidget);

    expect(find.text('Amoxicillin'), findsOneWidget);
    expect(find.text('Usage • Side effects • Video'), findsOneWidget);

    expect(find.text('Metformin'), findsOneWidget);
    expect(find.text('How to take • Warnings'), findsOneWidget);

    expect(find.text('Watch education video'), findsOneWidget);
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
  testWidgets('Caregiver linking screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Caregiver Linking'), findsOneWidget);
    expect(find.text('Caregiver mode'), findsOneWidget);
    expect(find.text('Link caregiver'), findsOneWidget);
    expect(find.text('Caregiver phone'), findsOneWidget);
    expect(find.text('Send invite'), findsOneWidget);
    expect(find.text('Notifications to caregiver'), findsOneWidget);
    expect(find.text('Missed dose'), findsOneWidget);
    expect(find.text('Wrong time'), findsOneWidget);
    expect(find.text('Refill needed'), findsOneWidget);
    expect(find.text('High-risk interaction'), findsOneWidget);
  testWidgets('Telepharmacy video call screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Telepharmacy Video Call'), findsOneWidget);
    expect(find.text('Video consultation'), findsOneWidget);
    expect(find.text('Video feed'), findsOneWidget);
    expect(find.text('You'), findsOneWidget);
    expect(find.text('Mute'), findsOneWidget);
    expect(find.text('Camera'), findsOneWidget);
    expect(find.text('Share Rx'), findsOneWidget);
    expect(find.text('End'), findsOneWidget);
  });
}
