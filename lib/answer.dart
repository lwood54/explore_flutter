import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleSelectAnswer;
  final String answerChoice;

  Answer(this.handleSelectAnswer, this.answerChoice);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerChoice),
        onPressed: handleSelectAnswer,
      ),
    );
  }
}
