import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(children: [
              Text('Here is the question..... '),
              RaisedButton(child: Text('Button 1'), onPressed: null),
              RaisedButton(child: Text('Button 1'), onPressed: null),
              RaisedButton(child: Text('Button 1'), onPressed: null)
            ])));
  }
}
