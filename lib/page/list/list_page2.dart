import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ListView 图文列表
 */
class ListPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Page2"),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(children: this._buildListView()))
        // _buildListView()
        );
  }

  _buildListView() {
    // List<Widget> list = List.filled(20,null,growable: true);
    List<Widget> list = [];
    // List list =new List();
    for (int i = 0; i < 20; i++) {
      list.add(ListTile(title: Text("this is comment =${i}")));
    }
    print("list.length${list.length}");
    return list;
  }
}
