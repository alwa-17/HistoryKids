import 'package:flutter/material.dart';

import 'quiz_page.dart';

class GradeSelectionPage extends StatelessWidget {
  const GradeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),
      appBar: AppBar(
        title: const Text(
          'HistoryKids',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.menu_book_rounded,
                size: 100,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 16),
              const Text(
                'Welcome to HistoryKids!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Learn about the past, test your knowledge, '
                'and become a History Hero!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 32),
              const Text(
                'Choose your grade',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildGradeButton(context, 4, Colors.green),
              const SizedBox(height: 12),
              _buildGradeButton(context, 5, Colors.orange),
              const SizedBox(height: 12),
              _buildGradeButton(context, 6, Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradeButton(BuildContext context, int grade, Color color) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizPage(grade: grade)),
          );
        },
        child: Text(
          'Grade $grade',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
