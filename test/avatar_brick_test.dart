import 'package:avatar_brick/avatar_brick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows abbreviation text when only name is provided',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AvatarBrick(name: 'Jennie Garth'),
      ),
    );

    expect(find.text('JG'), findsOneWidget);
  });

  testWidgets('shows the provided icon when no image or name is given',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AvatarBrick(icon: Icon(Icons.person_rounded)),
      ),
    );

    expect(find.byIcon(Icons.person_rounded), findsOneWidget);
  });

  testWidgets('shows a loading indicator when isLoading is true',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AvatarBrick(isLoading: true),
      ),
    );

    expect(find.byType(CupertinoActivityIndicator), findsOneWidget);
  });
}
