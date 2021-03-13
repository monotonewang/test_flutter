import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_flutter/myfuncation.dart';
import 'package:test_flutter/my_app.dart';
import 'package:test_flutter/page/splash_screen.dart';
import 'package:flutter/services.dart';

// flutter packages get

//声明list
List<String> list = ['sanumang'];

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //强制横屏
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MyApp());
  if(Platform.isAndroid) {
  //设置Android头部的导航栏透明
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo+${isNoble(1)}',
      // 右上角显示一个debug的图标
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: Colors.yellow,
      ),
      home: SplashScreenPage(),
    );
  }
}


