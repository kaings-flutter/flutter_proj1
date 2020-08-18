import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // immutable

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // maximized the width of container (width = 100%)
      margin: EdgeInsets.all(10), // add 10px margin to the container
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
