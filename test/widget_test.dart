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
  testWidgets('Health records screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Health Records'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Labs'), findsOneWidget);
    expect(find.text('Rx'), findsOneWidget);
    expect(find.text('Vitals'), findsOneWidget);

    expect(find.text('Upload PDF'), findsOneWidget);

    expect(find.text('Lab results 20 Feb'), findsOneWidget);
    expect(find.text('Rx 12 Feb'), findsOneWidget);
    expect(find.text('BP reading 120/80'), findsOneWidget);
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
  testWidgets('Compare pharmacies screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Compare Pharmacies'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Al Shorouk'), findsOneWidget);
    expect(find.text('\$10'), findsOneWidget);
    expect(find.text('45m'), findsOneWidget);

    expect(find.text('Good Health'), findsOneWidget);
    expect(find.text('\$12'), findsOneWidget);
    expect(find.text('30m'), findsOneWidget);

    expect(find.text('Medico'), findsOneWidget);
    expect(find.text('\$9'), findsOneWidget);
    expect(find.text('60m'), findsOneWidget);

    expect(find.text('Sort by price, ETA or rating using dropdown'), findsOneWidget);
    expect(find.text('Select'), findsOneWidget);
  testWidgets('Symptom check screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Symptom Check'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);
    expect(find.text('1/3'), findsOneWidget);
    expect(find.text('Select symptoms:'), findsOneWidget);

    expect(find.text('Headache'), findsOneWidget);
    expect(find.text('Cough'), findsOneWidget);
    expect(find.text('Fever'), findsOneWidget);
    expect(find.text('Nausea'), findsOneWidget);

    expect(find.text('Continue'), findsOneWidget);
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
  testWidgets('Payment and checkout screen renders expected elements', (
  testWidgets('System admin dashboard screen renders expected elements', (
  testWidgets('Pharmacy admin dashboard screen renders expected elements', (
  testWidgets('Pharmacist dashboard screen renders expected elements', (
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
    expect(find.text('System Admin Dashboard'), findsOneWidget);
    expect(find.text('System admin'), findsOneWidget);

    expect(find.text('Active users'), findsOneWidget);
    expect(find.text('18,240'), findsOneWidget);
    expect(find.text('Pharmacies'), findsOneWidget);
    expect(find.text('112'), findsOneWidget);
    expect(find.text('Incidents'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Avg response'), findsOneWidget);
    expect(find.text('< 3s'), findsOneWidget);

    expect(find.text('Manage roles & access'), findsOneWidget);
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
