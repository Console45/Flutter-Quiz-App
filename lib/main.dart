import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './quiz.dart';
import "./result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List _questions = const <Map<String, Object>>[
    {
      "questionText": "Whats your favourite color",
      "answers": <Map<String, Object>>[
        {"text": 'red', "score": 5},
        {"text": 'black', "score": 10},
        {"text": 'blue', "score": 3},
        {"text": 'green', "score": 1}
      ]
    },
    {
      "questionText": "Whats your favourite animal",
      "answers": <Map<String, Object>>[
        {"text": 'monkey', "score": 12},
        {"text": 'bat', "score": 20},
        {"text": 'cat', "score": 6},
        {"text": 'lion', "score": 1}
      ]
    },
    {
      "questionText": "Whats your favourite sport",
      "answers": <Map<String, Object>>[
        {"text": 'soccer', "score": 1},
        {"text": 'basketball', "score": 3},
        {"text": 'boxing', "score": 6},
        {"text": 'wresting', "score": 4}
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Quiz App")),
            backgroundColor: Hexcolor('#6c5ce7'),
            elevation: 10,
          ),
          body: Container(
              child: _questionIndex < _questions.length
                  ? Quiz(
                      questions: _questions,
                      questionIndex: _questionIndex,
                      answerQuestion: _answerQuestion)
                  : Result(_totalScore, _resetQuiz),
              color: Hexcolor('#6c5ce7'))),
    );
  }
}
