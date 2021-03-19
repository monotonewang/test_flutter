import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("grid")),
      body: GridView.count(
          mainAxisSpacing: 10.0,
          //上下间距
          padding: EdgeInsets.all(2.0),
          childAspectRatio: 0.9,
          //宽度和高度的间距
          crossAxisSpacing: 15.0,
          //左右间距
          children: this._buildChild(),
          crossAxisCount: 2),
    );
  }

  _buildChild() {
    List<Widget> list = [];
    for (int i = 0; i <= 10; i++) {
      list.add(Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 2,
              color: Colors.white,
            )),
        //  decoration: BoxDecoration(
        //     color: Colors.white,
        //     border: Border.all(color: Colors.white,
        //     width:5,
        //   )
        // ),
        child: Column(
          children: [
            Image.network(
                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg"),
            SizedBox(
              height: 10,
            ),
            Text(
              "This is=${i + 1}",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),

        alignment: Alignment.center,
        // color: Colors.white,
      ));
    }
    return list;
  }
}
