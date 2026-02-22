import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('OTC search screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Otc Search'), findsOneWidget);
    expect(find.text('OTC search'), findsOneWidget);
    expect(find.text('Search OTC medicine...'), findsOneWidget);

    expect(find.text('Paracetamol 500mg'), findsOneWidget);
    expect(find.text('In stock • from 3 pharmacies'), findsOneWidget);

    expect(find.text('Cetirizine 10mg'), findsOneWidget);
    expect(find.text('In stock • delivery today'), findsOneWidget);

    expect(find.text('Add to cart'), findsOneWidget);
  });
}
