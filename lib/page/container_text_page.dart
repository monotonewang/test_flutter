

import 'package:flutter/material.dart';
import 'package:flutter_mirror/utils/utils.dart';

class ContainerTextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("文本测试")),
      body:Container(
        // padding: EdgeInsets.only(top:Utils.topSafeHeight),
        child:Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color:Colors.blue,
                width:2.0
              ),
              color: Colors.yellow,
            ),
            child: 
            Text("新华社评论员：从全国两会读懂中国式民主“爱国者治港”，香港才有美好未来  伟大抗疫精神从全国两会读懂中国式民主 政府工作报告新华社受权播发\\""\\规划和2035年远景目标纲要“爱国者治港”，香港才有美好未来中国内政决不容许任何外部势力干涉中国成功发射遥感三十一号04组卫星“十三五”农民收入年均实际长6% 务工收入贡献率41.6%“复阳”者还会传染别人吗？吴尊友、钟南山这样解读沈阳新冠肺炎复阳患者密接者和居住出入环境检测均为阴性各地2月CPI出炉：4省份“转正”湖北、重庆降最猛北京市委领导有调整，莫高义任市",
            maxLines: 5,
            style: TextStyle( color:Colors.white ,fontSize: 22.0,
            fontStyle: FontStyle.italic,
            decoration:TextDecoration.none )),
            // transform: Matrix4.translationValues(100, 0, 0),
            // transform: Matrix4.rotationZ(0.3),
            // alignment: Alignment.bottomLeft,
          )
        )
      ));
  }
}