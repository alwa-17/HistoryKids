import 'package:material_ui/material_ui.dart';

import 'pages/grade_selection.dart';

void main() {
  runApp(const HistoryKidsApp());
}

class HistoryKidsApp extends StatelessWidget {
  const HistoryKidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HistoryKids',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const GradeSelectionPage(),
    );
  }
}
