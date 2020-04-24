import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void myAnswerQuestion(){
    print('Answer 1 chosen!');
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
              Text('My Questions'),
              RaisedButton(child: Text('Answer 1'), onPressed: myAnswerQuestion,),
              RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen!'),),
              RaisedButton(child: Text('Answer 3'), onPressed: (){
                //codigo necesario
                print('Answer 3 chosen!');
              },),
            ],
          )),
    );
  }
}
