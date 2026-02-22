import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Prescription archive screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Prescription Archive'), findsOneWidget);
    expect(find.text('Prescription archive'), findsOneWidget);
    expect(find.text('Search Rx...'), findsOneWidget);

    expect(find.text('Rx #12931'), findsOneWidget);
    expect(find.text('12 Feb 2026'), findsOneWidget);
    expect(find.text('Reviewed'), findsOneWidget);

    expect(find.text('Rx #12810'), findsOneWidget);
    expect(find.text('03 Feb 2026'), findsOneWidget);
    expect(find.text('Delivered'), findsOneWidget);

    expect(find.text('Rx #12702'), findsOneWidget);
    expect(find.text('20 Jan 2026'), findsOneWidget);
    expect(find.text('Expired'), findsOneWidget);
  });
}
