import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
