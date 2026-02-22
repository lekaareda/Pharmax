import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Drug education screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Drug Education'), findsOneWidget);
    expect(find.text('Drug education'), findsOneWidget);
    expect(find.text('Search medicine...'), findsOneWidget);

    expect(find.text('Amoxicillin'), findsOneWidget);
    expect(find.text('Usage • Side effects • Video'), findsOneWidget);

    expect(find.text('Metformin'), findsOneWidget);
    expect(find.text('How to take • Warnings'), findsOneWidget);

    expect(find.text('Watch education video'), findsOneWidget);
  });
}
