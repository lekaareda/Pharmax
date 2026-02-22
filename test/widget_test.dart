import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Medication details screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Medication Details'), findsOneWidget);
    expect(find.text('Medicine details'), findsOneWidget);
    expect(find.text('Metformin 500mg'), findsOneWidget);
    expect(find.text('For: Diabetes type 2'), findsOneWidget);

    expect(find.text('Dose'), findsOneWidget);
    expect(find.text('1 tablet • twice daily'), findsOneWidget);
    expect(find.text('Instructions'), findsOneWidget);
    expect(find.text('Take with meals'), findsOneWidget);
    expect(find.text('Side effects'), findsOneWidget);
    expect(find.text('Nausea • stomach upset • diarrhea'), findsOneWidget);

    expect(find.text('Edit schedule'), findsOneWidget);
    expect(find.text('Ask pharmacist'), findsOneWidget);
  });
}
