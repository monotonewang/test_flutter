import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ListView 图文列表
 */
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("list"),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // this._buildListView(),
                Container(width: 180, height: 180, color: Colors.red),
                Container(width: 180, height: 80, color: Colors.green),
                Container(width: 100, height: 80, color: Colors.blue),
                Container(width: 90, height: 80, color: Colors.black)
              ],
            ))
        // _buildListView()
        );
  }

  _buildListView() {
    return ListView(
      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10.0),
      children: [
        ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text("title"),
            subtitle: Text("subtitle")),
        ListTile(
          title: Text("title2"),
          subtitle: Text("subtitl3"),
          trailing: Icon(Icons.home, color: Colors.blue),
        ),
        Image.network(
            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg"),
        Container(
          // color: Colors.black,
          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
          child: Text(
            "This is a rain day",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 28.0),
          ),
          height: 60,
        ),
        Image.network(
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201301%2F20%2F20130120183516_VhFWB.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618293062&t=d957c4890e9a9ff801e6f6bfa852612d")
      ],
    );
  }
}
