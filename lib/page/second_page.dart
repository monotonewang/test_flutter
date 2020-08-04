import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:test_flutter/classes/Point.dart';
import 'package:test_flutter/myfuncation.dart';
import 'package:toast/toast.dart';

Set<WordPair> _saved = Set<WordPair>();
final _biggerFont = const TextStyle(fontSize: 18.0);

class second_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  List _suggestion = [];
  // Set<WordPair> _save = Set<WordPair>();
  // final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    print("build");

    final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    // for(int i=0;i<200;i++){
    //   _suggestion.add(WordPair.random());
    // }
    return  NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Text('Text'),
          )
        ];
      },
      body:ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _suggestion.length) {
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestion[index]);
      },
    ));
  }

  // _onListTap(bool alreadySaved, WordPair pair) {
  //   setState(() {
  //     if (alreadySaved) {
  //       _save.remove(pair);
  //     } else {
  //       _save.add(pair);
  //     }
  //   });
  // }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    var text = pair.asPascalCase;
    return ListTile(
      title: GestureDetector(
          onTap: () {
            print("_onToast text=$text");
            Toast.show(text, context,
                duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
          },
          // onTap: _onToast(text);
          child: Text(
            text,
            style: _biggerFont,
          )),
      // title: Text(
      //   pair.asPascalCase,
      //   style: _biggerFont,
      // ),
      trailing: GestureDetector(
        onTap: () {
          print(" onTap=>alreadySaved=$alreadySaved");
          setState(() {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          });
        },
        child: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
      ),

      // onTap: _onListTap(alreadySaved, pair),
    );
  }

  _onToast(String text) {
    print("_onToast text=$text");
    Toast.show(text, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
