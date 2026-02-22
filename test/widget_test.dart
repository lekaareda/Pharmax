import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Medication schedule screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Medication Schedule'), findsNWidgets(2));
    expect(find.text('Morning 8:00 AM'), findsOneWidget);
    expect(find.text('Afternoon 12:00 PM'), findsOneWidget);
    expect(find.text('Night 8:00 PM'), findsOneWidget);

    expect(find.text('- Paracetamol (500mg)'), findsOneWidget);
    expect(find.text('- Vitamin C (1 tab)'), findsOneWidget);
    expect(find.text('- Insulin (10 units)'), findsOneWidget);
    expect(find.text('- Antibiotic (250mg)'), findsOneWidget);

    expect(find.text('Taken'), findsNWidgets(3));
    expect(find.text('Add Medication'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
