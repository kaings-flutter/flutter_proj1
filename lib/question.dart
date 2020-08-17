import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // immutable

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
