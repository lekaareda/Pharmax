import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Order medicines screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Order Medicines'), findsNWidgets(2));
    expect(find.text('Search medicines...'), findsOneWidget);

    expect(find.text('Paracetamol 500mg'), findsOneWidget);
    expect(find.text('Aspirin'), findsOneWidget);
    expect(find.text('Ibuprofen'), findsOneWidget);
    expect(find.text('OTC'), findsNWidgets(3));

    expect(find.text('\$5'), findsOneWidget);
    expect(find.text('\$4'), findsOneWidget);
    expect(find.text('\$6'), findsOneWidget);

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Orders'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsNWidgets(3));
    expect(find.text('+'), findsNWidgets(3));
  });
}
