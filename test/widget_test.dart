import 'package:flutter_test/flutter_test.dart';

import 'package:qapp/main.dart';

void main() {
  testWidgets('find app name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(QuotesApp());

    expect(find.text(appName), findsOneWidget);
  });
}
