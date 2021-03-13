import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:test_flutter/page/container_text.dart';

class PersonalCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("个人中心")
      ),
      body: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(16, 9, 16, 9),
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'mobile',
              )),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(16, 9, 16, 9),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ))),
        Container(
          width: 200,
          height: 80,
          child: GestureDetector(
              onTap:() {login(context);},
              child: Text("登录",
                  style: new TextStyle(
                      backgroundColor: Colors.blue, fontSize: 20))),
        )
      ],
    ));
  }

  login(BuildContext context) {
    print("i am on tap");
     Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ContainerText();
      }));
    // Toast.show("xxxxxxxxxx", context,
        // duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
