import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      questionIdx = questionIdx + 1;
    });
    print(questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your favorite color?',
        'answers': ['red', 'green', 'blue', 'white']
      },
      {
        'questionText': 'what is your favorite animal?',
        'answers': ['dog', 'cat', 'rabbit', 'fish', 'hamster']
      },
      {
        'questionText': 'what is your favorite teacher?',
        'answers': ['Ted', 'Bruce', 'Shell', 'Tom', 'Harry', 'Barny']
      }
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(children: [
              Question(questions[questionIdx]['questionText']),
              ...(questions[questionIdx]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ])));
  }
}
