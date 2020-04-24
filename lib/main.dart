import 'package:flutter/material.dart';
import 'package:flutter_tutorial/answer.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Blue', 'Yellow', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Dog', 'Duck', 'Cat', 'Bear']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Luis', 'Juan', 'Ana', 'Maria', 'Carla']
    },
  ];
  int _questionIndex = 0;

  void _myAnswerQuestion() {
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_myAnswerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('Gracias'),
              ),
      ),
    );
  }
}
