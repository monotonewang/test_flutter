import 'package:flutter/material.dart';
import 'package:flutter_mirror/page/layout/components/IconContainer.dart';
import 'package:toast/toast.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: ListView(children: [
          Card(
            shadowColor: Colors.blue,
            margin: EdgeInsets.all(10.0),
            child: Container(
              // padding: EdgeInsets.all(20.0),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AspectRatio(
                      aspectRatio: 16.0 / 9.0,
                      child: Image.network(
                          "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg",
                          fit: BoxFit.cover)),
                  ListTile(
                    title: Text('Zhangsan'),
                    subtitle: Text('美国人'),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
