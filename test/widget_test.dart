import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Pharmacist dashboard screen renders expected elements', (
    tester,
  ) async {
    await tester.pumpWidget(const PharmaxApp());

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
  });
}
