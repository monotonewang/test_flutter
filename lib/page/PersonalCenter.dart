import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/page/list/grid_view_page.dart';
import 'package:test_flutter/page/list/list_page.dart';
import 'package:toast/toast.dart';
import 'package:test_flutter/page/container_text_page.dart';
import 'package:test_flutter/page/login_page.dart';

import 'demo/demo_page.dart';
import 'list/grid_view_page_builder.dart';
import 'list/list_page2.dart';

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
              child: Column(
                children: [
                  GestureDetector(
                  onTap:() {login(context);},
                  child:Text("登录",
                    style: new TextStyle(
                        backgroundColor: Colors.blue, fontSize: 20)),
                    ),
                  GestureDetector(
                  onTap:() {register(context);},
                  child:Text("注册",
                    style: new TextStyle(
                        backgroundColor: Colors.blue, fontSize: 20)),
                    )],
              )
        )],
    ));
  }
  register(BuildContext context) {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
  }
  login(BuildContext context) {
    print("i am on tap");
     Navigator.push(context, MaterialPageRoute(builder: (context) {
        // return ContainerText();
        // return ListPage();
        // return ListPage2();
        // return GridViewPage();
        // return GridViewBuilderPage();
        return DemoPage();

      }));
    // Toast.show("xxxxxxxxxx", context,
        // duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
