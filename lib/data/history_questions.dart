import '../models/history_question.dart';

const Map<int, List<HistoryQuestion>> historyQuestions = {
  4: [
    HistoryQuestion(
      question: 'What do historians study?',
      options: ['The future','The past',  'Outer space only', 'Weather only'],
      correctAnswer: 1,
    ),
    HistoryQuestion(
      question: 'Which object can help us learn about the past?',
      options: ['A new phone', 'A fresh sandwich', 'A fossil',  'A balloon'],
      correctAnswer: 2,
    ),
    HistoryQuestion(
      question: 'What is an oral history?',
      options: [
        'A story passed down by speaking',
        'A maths problem',
        'A weather report',
        'A computer game',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'What is a museum?',
      options: [
        'A place that preserves and displays historical objects',
        'A supermarket',
        'A sports field',
        'A hospital',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'Why do we study history?',
      options: [
        'To predict every event',
        'To avoid reading',
        'To stop learning',
        'To understand the past',
      ],
      correctAnswer: 3,
    ),
  ],
  5: [
    HistoryQuestion(
      question: 'What is archaeology?',
      options: [
        'Studying planets only',
        'Studying the past through material remains',
        'Predicting the weather',
        'Learning musical notes',
      ],
      correctAnswer: 1,
    ),
    HistoryQuestion(
      question: 'What is an artefact?',
      options: [
        'An object made or used by people in the past',
        'A future invention',
        'A type of cloud',
        'A modern weather forecast',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'What is a timeline used for?',
      options: [
        'Showing events in chronological order',
        'Measuring temperature',
        'Calculating distance',
        'Drawing maps only',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'What is a primary historical source?',
      options: [
        'A photograph taken during the event',
        'A fictional story written today',
        'A made-up legend',
        'A modern advert about a product',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'Why are historical sources important?',
      options: [
        'They provide evidence about the past',
        'They always tell identical stories',
        'They replace all research',
        'They predict the future',
      ],
      correctAnswer: 0,
    ),
  ],
  6: [
    HistoryQuestion(
      question: 'What does democracy mean?',
      options: [
        'People have a say in how they are governed',
        'One person owns every business',
        'Nobody follows laws',
        'Only children make laws',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'What was apartheid in South Africa?',
      options: [
        'A system of racial segregation and discrimination',
        'A school subject',
        'A sporting competition',
        'A type of traditional food',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'Who was Nelson Mandela?',
      options: [
        'An anti-apartheid leader and South Africa’s first democratically elected president',
        'The first person on the Moon',
        'A famous ancient Egyptian pharaoh',
        'The inventor of the telephone',
      ],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'In which year did South Africa hold its first democratic national election?',
      options: ['1994', '1910', '1948', '2004'],
      correctAnswer: 0,
    ),
    HistoryQuestion(
      question: 'Why is it important to preserve historical heritage?',
      options: [
        'To erase historical evidence',
        'To prevent people from learning',
        'To help future generations understand the past',
        'To replace all museums',
      ],
      correctAnswer: 2,
    ),
  ],
};
