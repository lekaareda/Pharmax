import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
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
