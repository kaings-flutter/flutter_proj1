import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get resultPhrase {
    var resultText = 'You did it!!!!!';
    if (resultScore >= 15) {
      resultText = 'You are good!!!!!';
    } else if (resultScore >= 10) {
      resultText = 'You are medium!!!!!';
    } else if (resultScore >= 6) {
      resultText = 'You are average!!!!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Reset Quiz'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
