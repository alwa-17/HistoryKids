# History Heroes

**History Heroes** is a Flutter mobile application designed to help South African school learners in Grades 4–6 learn and practise history through multiple-choice quizzes.

The app allows learners to select their school grade, answer five history questions, and view their final score at the end of the quiz.

## Project Objective

The goal of History Heroes is to make learning history more interactive and enjoyable for primary school learners. Through short quizzes about important historical figures and events, learners can test their knowledge and improve their understanding of South African history.

## Features

- **Grade Selection:** Learners can choose Grade 4, Grade 5, or Grade 6.
- **Multiple-Choice Questions:** Each quiz contains five questions with four answer options per question.
- **Grade-Specific Questions:** Each grade has its own set of history questions.
- **Progress Indicator:** Learners can track their progress through the five questions.
- **Automatic Scoring:** The app calculates the number of correct answers.
- **Results Page:** Displays the final score out of five, the percentage, and an encouraging message.
- **Play Again:** Learners can return to the grade selection page and start another quiz.
- **Simple User Interface:** A colourful, child-friendly interface designed to make learning enjoyable.

## Technologies Used

- **Flutter** — for building the application's user interface.
- **Dart** — for application logic, question handling, navigation, and scoring.
- **Material Design 3** — for buttons, layouts, icons, and other interface components.

## Project Structure

The project is organised into separate files to make the code easier to understand, maintain, and extend.

```text
lib/
├── main.dart
├── models/
│   └── history_question.dart
├── data/
│   └── history_questions.dart
└── pages/
    ├── grade_selection_page.dart
    ├── quiz_page.dart
    └── result_page.dart
```

### File Responsibilities

| File | Description |
|---|---|
| `main.dart` | Starts the application and configures the app theme. |
| `models/history_question.dart` | Defines the structure of a history question, including its text, options, and correct answer. |
| `data/history_questions.dart` | Stores the questions for Grades 4, 5, and 6. |
| `pages/grade_selection_page.dart` | Displays the landing page and allows learners to choose a grade. |
| `pages/quiz_page.dart` | Displays the questions, handles answer selection, tracks progress, and calculates the score. |
| `pages/result_page.dart` | Displays the final score, percentage, and play-again option. |

## Getting Started

Follow these steps to run History Heroes on your computer.

### Prerequisites

Make sure you have installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- [Android Studio](https://developer.android.com/studio) or another compatible IDE
- An Android emulator or a supported physical device

### Installation

**1. Clone the repository**

If the project is hosted on GitHub, run:

```bash
git clone <your-repository-url>
```

Replace `<your-repository-url>` with the URL of your repository.

**2. Navigate to the project directory**

```bash
cd history_quiz
```

**3. Install dependencies**

```bash
flutter pub get
```

**4. Check your Flutter setup**

```bash
flutter doctor
```

**5. Run the application**

```bash
flutter run
```

The application should launch on your selected emulator or connected device.

## How to Use the App

1. Open History Heroes.
2. Select Grade 4, Grade 5, or Grade 6.
3. Read the history question displayed on the screen.
4. Select one of the four answer options.
5. Press **Next Question** to continue.
6. Answer all five questions.
7. View your final score and percentage on the results page.
8. Select **Play Again** to start another quiz.

## Concepts Demonstrated

This project provides practical experience with several Flutter and Dart programming concepts:

- Classes and objects
- Lists and maps
- Variables, data types, and conditionals
- Loops
- Functions and methods
- `StatelessWidget` and `StatefulWidget`
- State management using `setState()`
- Screen navigation using `Navigator`
- Passing data between screens through constructor parameters
- Separating application data, models, and user interface code

## Future Improvements

Potential improvements for future versions include:

- Adding pictures and illustrations of historical figures.
- Providing explanations after each answer.
- Expanding the question bank for each grade.
- Randomising questions and answer options.
- Adding difficulty levels and timed quizzes.
- Saving quiz results and tracking learner progress.
- Adding badges, achievements, and learning streaks.
- Improving accessibility and support for different learning needs.
- Aligning the question bank with the South African school curriculum.
- Adding more history topics from South Africa and around the world.

## Current Limitations

- The application currently contains five questions per grade.
- Questions and scores are stored and processed locally in the application.
- Quiz results are not permanently saved.
- The question bank has not yet been verified against the official curriculum for each grade.
- The application does not currently require user accounts or an internet connection for its core quiz functionality.

## Project Status

**Status:** Initial development version.

History Heroes is a learning project built with Flutter and Dart. It provides a foundation for developing a more complete educational application for primary school learners.

## License

A license has not yet been selected for this project. Add a suitable open-source license if you intend to distribute the source code publicly.

---

*History Heroes — Learn history. Test your knowledge. Become a history hero!*
