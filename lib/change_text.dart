import 'package:flutter/material.dart';
import './output_text.dart';

class ChangeText extends StatefulWidget {
  @override
  _ChangeTextState createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String _textToChange = 'Starting text.';

  void handleChangeText() {
    if (_textToChange == 'Starting text.') {
      setState(() {
        _textToChange = 'This has changed';
      });
    } else {
      setState(() {
        _textToChange = 'Starting text.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Change the Text'),
        ),
        body: OutputText(_textToChange, handleChangeText));
  }
}
