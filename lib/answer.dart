import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text('Button 1'),
            onPressed: selectHandler));
  }
}
