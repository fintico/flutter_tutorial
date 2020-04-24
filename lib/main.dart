import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _myAnswerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color',
      'What\'s you favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter Tutorial')),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _myAnswerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => _questionIndex = 0,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  //codigo necesario
                  print('Answer 3 chosen! ');
                },
              ),
            ],
          )),
    );
  }
}
