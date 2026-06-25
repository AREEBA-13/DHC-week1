import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:week_1/main.dart';

void main() {
  testWidgets('Login Screen structure and validation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the login screen title and fields are present
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Email Address'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // Tap login button without entering credentials to trigger validation
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify validation error messages are displayed
    expect(find.text('Email is required'), findsOneWidget);
    expect(find.text('Password cannot be empty'), findsOneWidget);
  });
}
