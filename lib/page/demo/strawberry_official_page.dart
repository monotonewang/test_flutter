import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 2021年03月19日13:17:41
 * https://flutter.dev/docs/development/ui/layout
 * 草莓
 */
class StrawberryOfficialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StrawberryOfficialPage"),
        ),
        body: Container(
          height: 500,
          // alignment: Alignment.center,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.black, width: 1.0),
                          color: Color.fromARGB(255, 232, 240, 249),
                        ),
                        child: Text("Strawberry Pavlova"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.black, width: 1.0),
                          color: Color.fromARGB(255, 232, 240, 249),
                        ),
                        child: Text(
                          "Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova features a crisp crust and soft light inside,topped with fruit and whipped cream",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            border: Border.all(color: Colors.black, width: 1.0),
                            color: Color.fromARGB(255, 232, 240, 249),
                          ),
                          child: Row(
                            children: [
                              new Icon(Icons.star, size: 10),
                              new Icon(Icons.star, size: 10),
                              new Icon(Icons.star, size: 10),
                              new Icon(Icons.star, size: 10),
                              new Icon(Icons.star, size: 10),
                              Text("170 Reviews")
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      height:500,
                      color: Colors.blue,
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Image.network(
                          "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg",
                          fit: BoxFit.cover)))
            ],
          ),
        ));
  }
}
