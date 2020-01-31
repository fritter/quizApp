import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: RaisedButton(
        color: Color(0xFFE82A7F),
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler
      ),
    );
  }
}
