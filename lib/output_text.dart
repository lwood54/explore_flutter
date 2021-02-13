import 'package:flutter/material.dart';

class OutputText extends StatelessWidget {
  final String textToChange;
  final Function handleChangeText;

  OutputText(this.textToChange, this.handleChangeText);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.green[300]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    textToChange,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      child: Text(
                        'change it!',
                        textAlign: TextAlign.center,
                      ),
                      onPressed: handleChangeText,
                    ))
              ],
            ),
          ],
        ));
  }
}
