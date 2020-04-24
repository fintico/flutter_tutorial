import 'package:flutter/material.dart';
import 'package:flutter_tutorial/answer.dart';
import 'package:flutter_tutorial/question.dart';

class Quiz extends StatelessWidget {
  final Function myAnswerQuestion;
  final List<Map<String, Object>> questions;
  final questionIndex;

  Quiz({this.myAnswerQuestion, this.questions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(myAnswerQuestion, answer);
        }).toList()
      ],
    );
  }
}
