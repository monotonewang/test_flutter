

import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return 
    Scaffold(
      backgroundColor: Color(0xfff4f3f8),
      appBar: AppBar(
        title:Text("grid")),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,//上下间距
            childAspectRatio: 3/5, //宽度和高度的间距
            crossAxisSpacing:15.0,//左右间距
            crossAxisCount: 2
          ),
          itemCount: 20,
          itemBuilder: this._buildChild,
          padding: EdgeInsets.all(2.0)),
    );
      
  }

  Widget _buildChild(BuildContext context,int index){
     return Container(
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width:2,
              color: Colors.white,
            )
          ),
          //  decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(color: Colors.white,
          //     width:5,
          //   )
          // ),
          child:
            Column(
              children: [
                  Padding(//给图片加边距
                    padding: EdgeInsets.only(top:5.0),
                    child:  Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg"),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Padding(//给图片加边距
                    padding: EdgeInsets.only(left:5.0,right:5.0),
                      child: Text("This is=${index}-android framework 内存泄露\n接口回调\n测试回归",

                        textAlign: TextAlign.center
                          ,style: TextStyle(fontSize: 20),
                  ) 
                  )
              ],
            ),
          
          alignment: Alignment.center,
          // color: Colors.white,
        );
  }
  
}