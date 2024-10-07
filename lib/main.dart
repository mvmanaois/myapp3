import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: QuizScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Which of the following is the correct way to declare a variable in PHP?',
      'answers': [
        {'text': '\$variable', 'score': 1},
{'text': 'var variable;', 'score': 0},
{'text': 'variable = \$value;', 'score': 0},
{'text': 'let variable;', 'score': 0},

      ]
    },
    {
      'questionText': 'What is the correct way to start a session in PHP?',
      'answers': [
        {'text': 'session_start();', 'score': 1},
        {'text': 'start_session();', 'score': 0},
        {'text': 'begin_session();', 'score': 0},
        {'text': 'open_session();', 'score': 0},
      ]
    },
    {
      'questionText': 'Which operator is used to concatenate strings in PHP?',
      'answers': [
        {'text': '+', 'score': 0},
        {'text': '&', 'score': 0},
        {'text': '.', 'score': 1},
        {'text': 'concat', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the correct way to declare an array in PHP?',
      'answers': [
        {'text': 'array(1, 2, 3);', 'score': 1},
        {'text': '[1, 2, 3];', 'score': 0},
        {'text': 'list(1, 2, 3);', 'score': 0},
        {'text': 'array{1, 2, 3};', 'score': 0},
      ]
    },
    {
      'questionText': 'Which of the following is a valid PHP comment?',
      'answers': [
        {'text': '// This is a comment', 'score': 0},
        {'text': '# This is a comment', 'score': 0},
        {'text': '/* This is a comment */', 'score': 0},
        {'text': '// Comment', 'score': 1},
      ]
    },
        {
      'questionText': 'How do you access a session variable in PHP?',
      'answers': [
        {'text': '\$_SESSION["var"]', 'score': 1},
        {'text': 'session[\'var\']', 'score': 0},
        {'text': 'get_session(\'var\')', 'score': 0},
        {'text': 'session.var', 'score': 0},
      ]
    },

    {
      'questionText': 'What function is used to include a file in PHP?',
      'answers': [
        {'text': 'include()', 'score': 1},
        {'text': 'require()', 'score': 1},
        {'text': 'import()', 'score': 0},
        {'text': 'load()', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the default file extension for PHP files?',
      'answers': [
        {'text': '.html', 'score': 0},
        {'text': '.php', 'score': 1},
        {'text': '.txt', 'score': 0},
        {'text': '.xml', 'score': 0},
      ]
    },
    {
      'questionText': 'Which PHP function is used to get the length of a string?',
      'answers': [
        {'text': 'strlen()', 'score': 1},
        {'text': 'length()', 'score': 0},
        {'text': 'str_length()', 'score': 0},
        {'text': 'count()', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the correct way to declare a constant in PHP?',
      'answers': [
        {'text': 'define("CONSTANT", "value");', 'score': 1},
        {'text': 'const CONSTANT = "value";', 'score': 1},
        {'text': 'constant("CONSTANT", "value");', 'score': 0},
        {'text': 'set_constant("CONSTANT", "value");', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the purpose of the isset() function in PHP?',
      'answers': [
        {'text': 'Check if a variable is set', 'score': 1},
        {'text': 'Check if a variable is empty', 'score': 0},
        {'text': 'Check if a variable is null', 'score': 0},
        {'text': 'Check if a variable is an array', 'score': 0},
      ]
    },
    {
      'questionText': 'How can you create a function in PHP?',
      'answers': [
        {'text': 'function myFunction() {}', 'score': 1},
        {'text': 'create function myFunction() {}', 'score': 0},
        {'text': 'def myFunction() {}', 'score': 0},
        {'text': 'myFunction() {}', 'score': 0},
      ]
    },
    {
      'questionText': 'What does the PHP function explode() do?',
      'answers': [
        {'text': 'Split a string into an array', 'score': 1},
        {'text': 'Join an array into a string', 'score': 0},
        {'text': 'Trim whitespace from a string', 'score': 0},
        {'text': 'Reverse a string', 'score': 0},
      ]
    },
    {
      'questionText': 'Which of the following is the correct way to start a PHP block?',
      'answers': [
        {'text': '<php>', 'score': 0},
        {'text': '<?php>', 'score': 1},
        {'text': '<?>', 'score': 0},
        {'text': '<script>', 'score': 0},
      ]
    },
    {
      'questionText': 'How do you end a PHP block?',
      'answers': [
        {'text': '?>', 'score': 1},
        {'text': '</php>', 'score': 0},
        {'text': '</>', 'score': 0},
        {'text': 'exit;', 'score': 0},
      ]
    },
    {
      'questionText': 'Which function is used to redirect to another page in PHP?',
      'answers': [
        {'text': 'header("Location: newpage.php");', 'score': 1},
        {'text': 'redirect("newpage.php");', 'score': 0},
        {'text': 'goto("newpage.php");', 'score': 0},
        {'text': 'move("newpage.php");', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the purpose of the die() function in PHP?',
      'answers': [
        {'text': 'Terminate script execution', 'score': 1},
        {'text': 'Pause script execution', 'score': 0},
        {'text': 'Skip to the next iteration', 'score': 0},
        {'text': 'Return a value', 'score': 0},
      ]
    },
    {
      'questionText': 'What does the function var_dump() do in PHP?',
      'answers': [
        {'text': 'Display variable information', 'score': 1},
        {'text': 'Check variable type', 'score': 0},
        {'text': 'Set variable value', 'score': 0},
        {'text': 'Return variable length', 'score': 0},
      ]
    },
    {
      'questionText': 'How do you include a file called "config.php" in your PHP script?',
      'answers': [
        {'text': 'include "config.php";', 'score': 1},
        {'text': 'require "config.php";', 'score': 1},
        {'text': 'load "config.php";', 'score': 0},
        {'text': 'import "config.php";', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the output of echo 1 + "1"; in PHP?',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 1},
        {'text': '11', 'score': 0},
        {'text': 'Error', 'score': 0},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;
  bool _isQuizCompleted = false;
  List<int> _randomQuestions = [];

  @override
  void initState() {
    super.initState();
    _randomQuestions = _generateRandomQuestions(10);
  }

  List<int> _generateRandomQuestions(int count) {
    final random = Random();
    List<int> indexes = [];
    while (indexes.length < count) {
      int index = random.nextInt(_questions.length);
      if (!indexes.contains(index)) {
        indexes.add(index);
      }
    }
    return indexes;
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
      if (_questionIndex >= _randomQuestions.length) {
        _isQuizCompleted = true;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _isQuizCompleted = false;
      _randomQuestions = _generateRandomQuestions(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz App', style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.blue,
      ),
      body: _isQuizCompleted
          ? ResultScreen(_totalScore, _resetQuiz)
          : Quiz(
              questions: _questions,
              questionIndex: _randomQuestions[_questionIndex],
              answerQuestion: _answerQuestion,
            ),
    );
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions[questionIndex]['questionText'] as String,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () => answerQuestion(answer['score']),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(
                  answer['text'] as String,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  ResultScreen(this.totalScore, this.resetQuiz);

  String get resultMessage {
    if (totalScore == 10) {
      return 'Perfect!';
    } else if (totalScore >= 6) {
      return 'That\'s good!';
    } else {
      return 'You failed';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultMessage,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            '$totalScore/10',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: resetQuiz,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
