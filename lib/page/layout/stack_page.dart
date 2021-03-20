import 'package:flutter/material.dart';
import 'package:flutter_mirror/page/layout/components/IconContainer.dart';
import 'package:toast/toast.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),
        body: Container(
            width: 600,
            height: 600,
            color: Colors.pink,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg",
                    fit: BoxFit.cover),
                Text("StackStackStackStackStackStackStackStack"),
                Align(
                  alignment: Alignment.topRight,
                  child:
                      IconContainer(Icons.home, size: 16, color: Colors.blue),
                ),
                Align(
                  alignment: Alignment(1, -0.2),
                  child: IconContainer(Icons.search,
                      size: 16, color: Colors.yellow),
                ),
                Positioned(
                    top: 11.2,
                    right: 111.2,
                    child: IconContainer(Icons.search,
                        size: 16, color: Colors.pinkAccent))
                // IconContainer(Icons.star, size: 18, color: Colors.pink),
                // IconContainer(Icons.email, size: 20, color: Colors.green),
              ],
            )));
  }
}
