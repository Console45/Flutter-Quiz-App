import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  Answer({this.answerQuestion, this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: RaisedButton(
        child: Text(this.answerText),
        onPressed: this.answerQuestion,
        color: Hexcolor('#6c5ce7'),
        textColor: Colors.white,
        padding: EdgeInsets.all(15),
      ),
    );
  }
}
