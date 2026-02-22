import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Telepharmacy chat screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Telepharmacy Chat'), findsOneWidget);
    expect(find.text('Chat with pharmacist'), findsOneWidget);
    expect(find.text('Dr. Salma (Online)'), findsOneWidget);

    expect(find.text('Hello, how can I help?'), findsOneWidget);
    expect(find.text('Is this medicine safe\nwith my condition?'), findsOneWidget);
    expect(find.text('Please share your Rx and\ncurrent meds.'), findsOneWidget);

    expect(find.text('Voice call'), findsOneWidget);
    expect(find.text('Video call'), findsOneWidget);
    expect(find.text('Type message...'), findsOneWidget);
  });
}
