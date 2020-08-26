import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
      'answers': [
        {'answer': 'red', 'score': 2},
        {'answer': 'green', 'score': 3},
        {'answer': 'blue', 'score': 5},
        {'answer': 'white', 'score': 6}
      ]
    },
    {
      'questionText': 'what is your favorite animal?',
      'answers': [
        {'answer': 'dog', 'score': 2},
        {'answer': 'cat', 'score': 5},
        {'answer': 'rabbit', 'score': 7},
        {'answer': 'fish', 'score': 8},
        {'answer': 'hamster', 'score': 9}
      ]
    },
    {
      'questionText': 'what is your favorite teacher?',
      'answers': [
        {'answer': 'Ted', 'score': 3},
        {'answer': 'Bruce', 'score': 4},
        {'answer': 'Shell', 'score': 5},
        {'answer': 'Tom', 'score': 2},
        {'answer': 'Harry', 'score': 8},
        {'answer': 'Barny', 'score': 7}
      ]
    }
  ];

  var _questionIdx = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIdx = _questionIdx + 1;
    });

    print(_questionIdx);
    print(_totalScore);

    if (_questionIdx < _questions.length) {
      print('we have more questions!');
    } else {
      print('you have completed all the questions!');
    }
  }

  void _restartQuestion() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: _questionIdx < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIdx: _questionIdx)
                : Result(
                    resultScore: _totalScore,
                    resetHandler: _restartQuestion,
                  )));
  }
}
