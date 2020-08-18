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
  final _questions = const [
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

  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });

    print(_questionIdx);

    if (_questionIdx < _questions.length) {
      print('we have more questions!');
    } else {
      print('you have completed all the questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: _questionIdx < _questions.length
                ? (Column(children: [
                    Question(_questions[_questionIdx]['questionText']),
                    ...(_questions[_questionIdx]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ]))
                : Center(child: Text('You did it!!!!!'))));
  }
}
