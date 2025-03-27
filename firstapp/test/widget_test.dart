// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firstapp/counter_screen.dart'; // Ensure correct path

void main() {
  testWidgets('Counter increments when button is pressed', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));

    // Verify the counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the 'Increase Score' button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump(); // Rebuild the widget after state change

    // Verify the counter has incremented to 1
    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
