import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:test_flutter/classes/Point.dart';
import 'package:test_flutter/myfuncation.dart';
import 'package:toast/toast.dart';
import 'package:test_flutter/http/API.dart';
import 'dart:async';
import 'package:test_flutter/page/splash_screen.dart';
import 'package:test_flutter/page/college.dart';

class first_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    // );
    return new RandomWords();
  }

  var devices = ['sanumang'];
  int _counter = 0;
  var api = API();
  var text = "";
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState2();
  }
}

class RandomWordsState2 extends State<StatefulWidget> {
  var devices = ['sanumang'];
  int _counter = 0;
  var api = API();
  var text = "";

  Future<String> getMyText() async {
    // Future(() => {
    //   print('立刻在Event queue中运行的Future')
    //     return "yyyyyy"}
    // );
    // return Future("bar").then((value) => print('foo X $value'));
    var value2 = "";
    await api.getMovieDetail("26266893", (value) {
      // print("getMovieDetail");
      // print(value);r
      text = value.toString();
      value2 = value.toString();
      setState(() {
        this.text = value2;
      });
    });
    return value2;
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
    // getMyText().then((value) => {
          // print("getMyText"),
          // print(value),
    // });

    jump(){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return College();
      }));
    }
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                  onTap: () {
                    Toast.show("集盒大学", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                  child: Row(
                    children: <Widget>[
                      Text('集盒大学',style: TextStyle(),),
                      Icon(Icons.expand_more),
                    ],
                  ));
            },
          ),
          automaticallyImplyLeading: false,
          // actions: <Widget>[
            // IconButton(
            //   icon: const Icon(Icons.add_alert),
            //   tooltip: 'Show Snackbar',
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: const Icon(Icons.navigate_next),
            //   tooltip: 'Next page',
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: const Icon(Icons.navigate_next),
            //   tooltip: 'Next page',
            //   onPressed: () {},
            // ),
          // ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ), 
      body: SingleChildScrollView(
        
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           
            GestureDetector(
              onTap:(){ jump(); },
              child: Text(
                  "test_method->" +
                  ' isNoble=>${isNoble(1)} \n isBig=>${isBig()} ' +
                  say("monotonewang", 'hello', 'sanumang'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ), 
            )
            ,
            Text(
              this.text,
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
      
    ));
  }
}
