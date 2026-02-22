import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Prescription status screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Prescription Status Review'), findsOneWidget);
    expect(find.text('Prescription status'), findsOneWidget);
    expect(find.text('Rx #12931'), findsOneWidget);
    expect(find.text('Uploaded: 12 Feb 2026'), findsOneWidget);
    expect(find.text('Under review'), findsOneWidget);
    expect(find.text('Pharmacist notes'), findsOneWidget);
    expect(find.text('- Verify allergy history\n- Confirm dosage'), findsOneWidget);
    expect(find.text('Approve & create order'), findsOneWidget);
  });
}
