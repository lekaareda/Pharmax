import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Home screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Home Screen'), findsOneWidget);
    expect(find.text('Home'), findsWidgets);
    expect(find.text('Upload Rx'), findsOneWidget);
    expect(find.text('Order'), findsOneWidget);
    expect(find.text('Schedule'), findsOneWidget);
    expect(find.text('Telepharmacy'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsNWidgets(4));
  });
}
