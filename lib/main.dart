import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIdx = 0;

  void answerQuestion() {
    questionIdx = questionIdx + 1;
    print(questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['This is question no. 1!', 'This is question no. 2!'];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(children: [
              Text(questions[questionIdx]),
              RaisedButton(child: Text('Button 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Button 2'), onPressed: answerQuestion),
              RaisedButton(
                  child: Text('Button 3'),
                  onPressed: () {
                    print('Button 3 is clicked!!!!!');
                  })
            ])));
  }
}
