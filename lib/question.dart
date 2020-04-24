import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText = '';

  //con esta linea abrevie declarar la variable y abrir un body pa asignarla a mi parametro
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
