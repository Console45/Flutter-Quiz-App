import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8)
      resultText = 'You are awesome and innocent';
    else if (resultScore <= 13)
      resultText = 'Pretty Likeable';
    else if (resultScore <= 17)
      resultText = 'You are so bad';
    else
      resultText = 'You are so bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
            textColor: Hexcolor('#6c5ce7'),
          )
        ],
      ),
    );
  }
}
