import 'package:flutter/material.dart';

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
      'This is question no. 1!',
      'This is question no. 2!',
      'This is question no. 3!'
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(children: [
              Text(questions[questionIdx]),
              RaisedButton(child: Text('Button 1'), onPressed: _answerQuestion),
              RaisedButton(child: Text('Button 2'), onPressed: _answerQuestion),
              RaisedButton(child: Text('Button 3'), onPressed: _answerQuestion)
            ])));
  }
}
