import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIdx;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIdx});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIdx]['questionText']),
      ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
          .map((obj) {
        return Answer(() => answerQuestion(obj['score']), obj['answer']);
      }).toList()
    ]);
  }
}
