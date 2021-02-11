import 'package:flutter/material.dart';
// import 'dart:developer';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handleReset;

  Result(this.resultScore, this.handleReset);

  String get resultPhrase {
    var resultText = 'We see eye to eye, great choices!';
    if (resultScore < 11) {
      resultText = 'What is it like having only wrong opinions?';
    } else if (resultScore < 22) {
      resultText = 'You have some bad opinions here...';
    } else if (resultScore < 26) {
      resultText = 'You have mostly great opinions.';
    }
    print('resultText: ' + resultText);
    print('resultScore: ' + resultScore.toString());
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
          onPressed: handleReset,
        ),
      ],
    ));
  }
}
