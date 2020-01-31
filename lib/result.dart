import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 11) {
      resultText = 'You are so bad!';
    } else if (resultScore <= 18) {
      resultText = 'You are ... strange?!';
    } else if (resultScore < 30) {
      resultText = 'You are a good person!';
    } else {
      resultText = 'You are awesome!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            borderSide: BorderSide(
              color: Color(0xFFE82A7F),
              style: BorderStyle.solid,
              width: 1.5,
            ),
            child: Text('Restart Quiz!'),
            textColor: Colors.white,
            highlightColor: Color(0xFFE82A7F),
            highlightedBorderColor: Color(0xFFE82A7F),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
