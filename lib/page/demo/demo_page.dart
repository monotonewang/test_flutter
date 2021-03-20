import 'package:flutter/material.dart';
import 'package:flutter_mirror/page/container_image_page.dart';
import 'package:flutter_mirror/page/container_text_page.dart';
import 'package:flutter_mirror/page/demo/strawberry_official_page.dart';
import 'package:flutter_mirror/page/layout/aspect_ratio_page.dart';
import 'package:flutter_mirror/page/layout/card_page.dart';
import 'package:flutter_mirror/page/layout/dialog_page.dart';
import 'package:flutter_mirror/page/layout/row_page.dart';
import 'package:flutter_mirror/page/layout/stack_page.dart';
import 'package:flutter_mirror/page/list/grid_view_page.dart';
import 'package:flutter_mirror/page/list/grid_view_page_builder.dart';
import 'package:flutter_mirror/page/list/list_page.dart';
import 'package:flutter_mirror/page/list/list_page2.dart';
import 'package:flutter_mirror/page/login_page.dart';
import 'package:flutter_mirror/page/swipe_page.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("流式布局"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 2,
            runSpacing: 5,
            children: Boxs(context),
          ),
        ));
  }

  List<String> list = [
    'ListView',
    'ListViewBuilder',
    'GridView',
    'GridViewBuilder',
    'Login',
    'Image',
    'Swipe',
    'Text',
    'Dialog',
    'Strawberry',
    'Row',
    'Stack',
    'AspectRatio',
    'Card'
  ];

  List<Widget> Boxs(BuildContext context) =>
      List.generate(list.length, (index) {
        return Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1.0,
                  color: Color(0xFFFF4081),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(10.0)), //圆角
            ),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      onTap(context, index, list[index]);
                    },
                    child: Text(
                      "${list[index]}",
                      style: TextStyle(
                        // color: Color(0XFF4081),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ))));
      });

  onTap(BuildContext context, int index, String item) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ListPage();
        }));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ListPage2();
        }));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GridViewPage();
        }));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GridViewBuilderPage();
        }));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
        break;
      case 5:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ContainerImagePage();
        }));
        break;
      case 6: //swipe
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SwipePage();
        }));
        break;
      case 7:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ContainerTextPage();
        }));
        break;
      case 8: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DialogPage();
        }));
        break;
      case 9: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return StrawberryOfficialPage();
        }));
        break;
      case 10: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RowPage();
        }));
        break;
      case 11: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return StackPage();
        }));
        break;
      case 12: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AspectRatioPage();
        }));
        break;
      case 13: //Dialog
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CardPage();
        }));
        break;
    }
  }
}
