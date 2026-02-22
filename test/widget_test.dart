import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
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
