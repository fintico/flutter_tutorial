import 'package:flutter/material.dart';
import 'package:flutter_tutorial/answer.dart';
import 'package:flutter_tutorial/quiz.dart';
import 'package:flutter_tutorial/result.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 10},
        {'text': "Green", 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 11},
        {'text': 'Duck', 'score': 12},
        {'text': 'Cat', 'score': 10},
        {'text': 'Bear', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Luisa', 'score': 10},
        {'text': 'Carlos', 'score': 10},
        {'text': 'Maria', 'score': 20},
        {'text': 'Maya', 'score': 10},
        {'text': 'Sandro', 'score': 10}
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _myAnswerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Tutorial')),
        body: _questionIndex < _questions.length
            ? Quiz(
                myAnswerQuestion: _myAnswerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
