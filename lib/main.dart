import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': [
        {
          'text': 'Javascript',
          'score': 10,
        },
        {
          'text': 'Go',
          'score': 5,
        },
        {'text': 'Java', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite framework?',
      'answers': [
        {
          'text': 'Svelte',
          'score': 10,
        },
        {
          'text': 'Vue',
          'score': 7,
        },
        {
          'text': 'React',
          'score': 3,
        }
      ]
    },
    {
      'questionText': 'What is you favorite job?',
      'answers': [
        {
          'text': 'Software',
          'score': 10,
        },
        {
          'text': 'Teaching',
          'score': 6,
        },
        {
          'text': 'Firefighting',
          'score': 6,
        }
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Forms App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
