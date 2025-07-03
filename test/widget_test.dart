// This is a basic Flutter widget test for the Hello World package.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:helloworld/helloworld.dart';

void main() {
  testWidgets('Hello World app displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HelloWorldApp());

    // Verify that our Hello World text is present.
    expect(find.text('Hello World!'), findsOneWidget);
    expect(find.text('Welcome to the Flutter Hello World Package'), findsOneWidget);
    expect(find.text('Hello World Package'), findsOneWidget);

    // Verify that the Flutter Dash icon is present.
    expect(find.byIcon(Icons.flutter_dash), findsOneWidget);
  });
}
