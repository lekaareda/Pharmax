import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Order tracking payment screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Order Tracking Payment'), findsOneWidget);
    expect(find.text('Order tracking'), findsOneWidget);
    expect(find.text('Order #A-5402'), findsOneWidget);

    expect(find.text('Confirmed'), findsOneWidget);
    expect(find.text('Preparing'), findsOneWidget);
    expect(find.text('Out for delivery'), findsOneWidget);
    expect(find.text('Delivered'), findsOneWidget);

    expect(find.text('Payment'), findsOneWidget);
    expect(find.text('Method: Cash on delivery'), findsOneWidget);
    expect(find.text('Switch to Online payment'), findsOneWidget);
    expect(find.text('Contact pharmacy'), findsOneWidget);
  });
}
