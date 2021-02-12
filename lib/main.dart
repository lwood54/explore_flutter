// 1. output an AppBar and some text below it
// 2. Add a button which changes the text (to any other text)
// 3. Split the app into 3 widgets, App, TextControl, and Text
import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Changing the Text',
      home: ChangeText(),
    );
  }
}

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
          title: Text('Change the Text Button'),
        ),
        body: Container(
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
                        _textToChange,
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
            )));
  }
}

// class RandomWords extends StatefulWidget {
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = TextStyle(fontSize: 18.0);

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: EdgeInsets.all(16.0),
//         itemBuilder: /*1*/ (context, i) {
//           if (i.isOdd) return Divider(); /*2*/

//           final index = i ~/ 2; /*3*/
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }
