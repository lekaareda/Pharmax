import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
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
  });
}
