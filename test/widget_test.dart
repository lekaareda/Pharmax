import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Prescription upload screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Prescription Upload'), findsOneWidget);
    expect(find.text('Upload Prescription'), findsOneWidget);
    expect(find.text('Upload your prescription image or PDF'), findsOneWidget);
    expect(find.text('Browse to upload'), findsOneWidget);
    expect(find.text('Upload'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
