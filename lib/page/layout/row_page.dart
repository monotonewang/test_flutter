import 'package:flutter/material.dart';
import 'package:flutter_mirror/page/layout/components/IconContainer.dart';
import 'package:toast/toast.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Container(
            width: 600,
            height: 600,
            color: Colors.pink,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,

              crossAxisAlignment: CrossAxisAlignment.start,//设置y轴 默认start
              //baseline
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              // textBaseline: TextBaseline.alphabetic,
              children: [
                IconContainer(Icons.home, color: Colors.red),
                IconContainer(Icons.home, size: 16, color: Colors.blue),
                IconContainer(Icons.search, size: 16, color: Colors.yellow),
                // IconContainer(Icons.star, size: 18, color: Colors.pink),
                // IconContainer(Icons.email, size: 20, color: Colors.green),
              ],
            )));
  }
}
