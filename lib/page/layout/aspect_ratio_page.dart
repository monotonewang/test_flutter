import 'package:flutter/material.dart';
import 'package:flutter_mirror/page/layout/components/IconContainer.dart';
import 'package:toast/toast.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio"),
        ),
        body: ListView(children: [
          AspectRatio(
            aspectRatio: 2.0 / 1.0,
            child: Container(
              color: Colors.red,
            ),
          ),
          AspectRatio(
            aspectRatio: 2.0 / 1.0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ]));
  }
}
