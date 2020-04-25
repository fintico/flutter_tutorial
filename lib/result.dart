import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Felicitaciones';
    if (totalScore <= 30) {
      resultText = 'No pudo pasar el test';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Reiniciar Quiz',),
            textColor: Colors.red,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
