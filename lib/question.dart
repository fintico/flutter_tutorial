import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText = '';
  //con esta linea abrevie declarar la variable y abrir un body pa asignarla a mi parametro
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }

}
