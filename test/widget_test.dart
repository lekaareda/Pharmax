import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Smart assistant interactions screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Smart Assistant Interactions'), findsOneWidget);
    expect(find.text('Smart assistant'), findsOneWidget);
    expect(find.text('Interaction check'), findsOneWidget);

    expect(find.text('Current: Warfarin 5mg'), findsOneWidget);
    expect(find.text('New: Ibuprofen 400mg'), findsOneWidget);
    expect(
      find.text('Warning: Increased bleeding risk.\nAsk pharmacist / use alternative.'),
      findsOneWidget,
    );

    expect(find.text('See alternatives'), findsOneWidget);
    expect(find.text('Chat pharmacist'), findsOneWidget);
  });
}
