import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Health records screen renders expected elements', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Health Records'), findsOneWidget);
    expect(find.text('lekaa reda'), findsOneWidget);

    expect(find.text('Labs'), findsOneWidget);
    expect(find.text('Rx'), findsOneWidget);
    expect(find.text('Vitals'), findsOneWidget);

    expect(find.text('Upload PDF'), findsOneWidget);

    expect(find.text('Lab results 20 Feb'), findsOneWidget);
    expect(find.text('Rx 12 Feb'), findsOneWidget);
    expect(find.text('BP reading 120/80'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
