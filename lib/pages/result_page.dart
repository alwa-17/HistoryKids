import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int grade;

  const ResultPage({super.key, required this.score, required this.grade});

  @override
  Widget build(BuildContext context) {
    final percentage = score * 20;

    String message;

    if (score == 5) {
      message = 'Perfect score! You are a History Hero!';
    } else if (score >= 3) {
      message = 'Great work! Keep learning and growing!';
    } else {
      message = 'Good effort! Keep practising!';
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.emoji_events, size: 100, color: Colors.amber),
                const SizedBox(height: 20),
                const Text(
                  'Quiz Complete!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 25),
                Text('Grade $grade', style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                Text(
                  '$score / 5',
                  style: const TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$percentage%',
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 19),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'Play Again',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
