import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:test_flutter/classes/Point.dart';
import 'package:test_flutter/myfuncation.dart';
import 'package:test_flutter/page/first_page.dart';
import 'package:test_flutter/page/second_page.dart';
import 'package:test_flutter/page/third_page.dart';
import 'package:toast/toast.dart';
// flutter packages get

//声明list
List<String> list = ['sanumang'];


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo+${isNoble(1)}',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter_Test '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  int _counter = 0;

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(
      length: 3,
      vsync: this,
    );
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.satellite),
            onPressed: _onPressSaved,
          )
        ],
      ),

      body: new TabBarView(
        children: <Widget>[
          new first_page(),
          new second_page(),
          new third_page()
        ],
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.mail), title: new Text('mail')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('person'))
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      this._currentIndex = index;
      _controller.index = index;

      print("xxxxxx" + index.toString());
      // final scaffold = Scaffold.of(context);
      // scaffold.showSnackBar(SnackBar(
      //   content: Text("xx" + this._selectedIndex.toString()),
      // ));
    });
  }

  Set<WordPair> _saved = Set<WordPair>();

  void _onPressSaved() {
    if (_saved == null || _saved.isEmpty) {
      _saved.add(WordPair.random());
      _saved.add(WordPair.random());
      _saved.add(WordPair.random());
      _saved.add(WordPair.random());
      _saved.add(WordPair.random());
    }
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // Add 20 lines from here...
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: TextStyle(fontSize: 18.0),
                ),
              );
            },
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            // Add 6 lines from here...
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ), // ... to here.
    );
  }
}
