import "package:flutter/material.dart";
import './question.dart';
/*void main() {
  runApp(MyApp()); 
}
*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // it is a widget or class

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // inherits from state class
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite color?',
      'what is your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: _answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
