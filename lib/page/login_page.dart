


import 'package:flutter/material.dart';
import 'package:test_flutter/enum/enum.dart';
import 'package:test_flutter/page/sign_in.dart';
import 'package:test_flutter/page/sing_out.dart';
import 'package:test_flutter/ui/button.dart';
import 'package:test_flutter/ui/gradual_change_view.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _LoginState();
  }

}

class _LoginState extends State<LoginPage>{

  PageController _controller;
  PageView _pageView;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();
     _pageView = PageView(
      controller: _controller,
      children: <Widget>[
        SignIn(),
        SignOut(),
      ],
      onPageChanged: (index) {
        setState(() => _currentPage = index);
      },
    );
  }

  @override
  void dispose() {
     _controller.dispose();
     super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          GradualChangeView(colors: [Color(0xFFfbab66), Color(0xFFf7418c)],
          rotation: Rotation.TL2BR,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,)
          ,SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Column(
                    children: [
                      Hero(tag: 'login_log', child: Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg"
                      ,width: 100,
                      height: 40)),
                         /// 指示器
                      _buildIndicator(),
                      Expanded(child: _pageView)
                    ],
                  ),
                ),
            ),
          )
        ],
      )
    );
  }

    Widget _buildIndicator() {
    return Container(
      width: 300.0,
      height: 42.0,
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),

        /// 圆角
        borderRadius: BorderRadius.all(
          Radius.circular(21.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Button(
              onPressed: () => _controller.animateToPage(0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.decelerate),
              child: Text('登录',
                  style: TextStyle(fontSize: 18)),
              buttonShape: ButtonShape.Fillet,
              borderRadius: 30.0,
              textColor: _currentPage == 0 ? Colors.black54 : Colors.white,
              height: 35.0,
              color: _currentPage == 0 ? Colors.white : Colors.transparent,
            ),
          ),
          Expanded(
            child: Button(
              onPressed: () => _controller.animateToPage(1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.decelerate),
              child: Text('注册',
                  style: TextStyle(fontSize: 18)),
              buttonShape: ButtonShape.Fillet,
              borderRadius: 30.0,
              height: 35.0,
              textColor: _currentPage == 1 ? Colors.black54 : Colors.white,
              color: _currentPage == 1 ? Colors.white : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

}