import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:avatar_brick_app/main.dart';

void main() {
  testWidgets('renders the demo page with its section titles',
      (WidgetTester tester) async {
    // flutter_test stubs all HTTP requests to fail, so the network image
    // cases intentionally report a NetworkImageLoadException. Ignore it here
    // since it's expected, not a bug in the demo.
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (details) {};
    addTearDown(() => FlutterError.onError = originalOnError);

    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('Avatar Brick Example'), findsOneWidget);
    expect(find.text('Image avatar'), findsOneWidget);
    expect(find.text('Initials avatar'), findsOneWidget);
  });
}
