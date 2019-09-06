import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:test_flutter/classes/Point.dart';
import 'package:test_flutter/myfuncation.dart';
import 'package:toast/toast.dart';

class first_page extends StatelessWidget {
  var devices = ['sanumang'];
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Builder(
      builder: (BuildContext context) {
        return GestureDetector( onTap: (){
           Toast.show("xxxx", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        },child:Row(
              children: <Widget>[
                Text('杭州'),
                Icon(Icons.expand_more),
              ],
            ));   
      },
    
  ),
      automaticallyImplyLeading: true,
 
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Next page',
          onPressed: () {
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Next page',
          onPressed: () {
          },
        ),
      ],
    ),
      body: Center(
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // RandomWordsState()._buildSuggestions(),
            Text(
              "test_method->" +
                  ' isNoble=>${isNoble(1)} \n isBig=>${isBig()} ' +
                  say("monotonewang", 'hello', 'sanumang'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            Text('${Point.getPointType()}+"=>"+${Point.getPoint()}'),
            Text('${devices.length} ${enableFlags(bold: true, hidden: true)}'),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}
