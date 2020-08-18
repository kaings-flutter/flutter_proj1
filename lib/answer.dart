import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String questionText;

  Answer(this.selectHandler, this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text(questionText),
            onPressed: selectHandler));
  }
}
