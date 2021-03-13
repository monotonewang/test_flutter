import 'package:flutter/material.dart';
import 'package:test_flutter/skip_down_time_progress.dart';
import 'package:test_flutter/utils/utils.dart';
import 'package:test_flutter/my_app.dart';
import 'package:test_flutter/page/container_image.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _SplashScreenPageState();
  }

}

class _SplashScreenPageState extends State<SplashScreenPage>{
  @override
  Widget build(BuildContext context) {
 return Stack(children: <Widget>[
    //https://www.jianshu.com/p/b837c1b0da6f
      Container(
         color: Colors.green.shade200,//同上
      ),
      ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Image.asset("image/welcome_basic.png", fit: BoxFit.cover)),
          Positioned(
          child: SkipDownTimeProgress(
              color: Colors.red,
              radius: 22.0,
              duration: Duration(seconds: 5),
              size: Size(25.0, 25.0),
              skipText: "跳过",
              onTap: () => goToHomePage(context),
              onFinishCallBack: (bool value) {
                if (value) goToHomePage(context);
              }),
          top: Utils.topSafeHeight + 20,
          right: 30),
    ]);

  }

   void goToHomePage(BuildContext context) async {
    //  Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
              // return MyHomePage();
              return ContainerImage();
            }));
      // });
          

    // firstOpen = SpUtil.getBool('first_open', defValue: true);

    // debugPrint("$firstOpen");
    // if (!firstOpen) {
      // if (Store.value<UserModel>(context, listen: false).isLogin()) {
        // pushAndRemovePage(context, HomePage());

    //   } else {
    //     pushAndRemovePage(context, LoginPage());
    //   }
    // } else {
    //   SpUtil.setBool("first_open", false);
    //   pushAndRemovePage(context, IntroSlidePage());
    // }
  }


}