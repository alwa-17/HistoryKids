
import 'package:flutter_test/flutter_test.dart';
import 'package:history_kids/main.dart';

void main() {
  testWidgets('HistoryKids app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const HistoryKidsApp());

    expect(find.text('Grade 4'), findsOneWidget);
    expect(find.text('Grade 5'), findsOneWidget);
    expect(find.text('Grade 6'), findsOneWidget);
  });
}
