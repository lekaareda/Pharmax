import 'package:flutter_test/flutter_test.dart';

import 'package:pharmax/main.dart';

void main() {
  testWidgets('Forgot password screen renders expected sections', (tester) async {
    await tester.pumpWidget(const PharmaxApp());

    expect(find.text('Forgot Password'), findsOneWidget);
    expect(find.text('Reset password'), findsOneWidget);
    expect(find.text('Enter phone / email'), findsOneWidget);
    expect(find.text('Send reset code'), findsOneWidget);
    expect(find.text('New password'), findsOneWidget);
    expect(find.text('Confirm password'), findsOneWidget);
    expect(find.text('Update'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(3));
  });
}
