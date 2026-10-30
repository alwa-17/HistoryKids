
import 'package:material_ui/material_ui.dart';
import '../data/history_questions.dart';
import '../models/history_question.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  final int grade;

  const QuizPage({
    super.key,
    required this.grade,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late final List<HistoryQuestion> questions;

  int currentQuestionIndex = 0;
  int score = 0;
  int? selectedAnswer;

  @override
  void initState() {
    super.initState();
    questions = historyQuestions[widget.grade]!;
  }

  void nextQuestion() {
    if (selectedAnswer == null) {
      return;
    }

    final question = questions[currentQuestionIndex];
    final isCorrect =
        selectedAnswer == question.correctAnswer;

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        if (isCorrect) {
          score++;
        }

        currentQuestionIndex++;
        selectedAnswer = null;
      });
    } else {
      final finalScore = score + (isCorrect ? 1 : 0);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ResultPage(
              score: finalScore,
              grade: widget.grade,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),
      appBar: AppBar(
        title: Text('Grade ${widget.grade} History'),
        backgroundColor: const Color(0xFFF5F0FF),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Question ${currentQuestionIndex + 1} '
                'of ${questions.length}',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              LinearProgressIndicator(
                value: (currentQuestionIndex + 1) /
                    questions.length,
                minHeight: 8,
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(height: 30),

              Text(
                question.question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),

              for (int i = 0; i < question.options.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      backgroundColor: selectedAnswer == i
                          ? Colors.deepPurple.shade100
                          : Colors.white,
                      side: BorderSide(
                        color: selectedAnswer == i
                            ? Colors.deepPurple
                            : Colors.grey.shade300,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedAnswer = i;
                      });
                    },
                    child: Text(
                      '${String.fromCharCode(65 + i)}. '
                      '${question.options[i]}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),

              const Spacer(),

              ElevatedButton(
                onPressed: selectedAnswer == null
                    ? null
                    : nextQuestion,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                ),
                child: Text(
                  currentQuestionIndex == questions.length - 1
                      ? 'Finish Quiz'
                      : 'Next Question',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
