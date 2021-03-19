
import 'package:flutter/material.dart';
import 'package:flutter_mirror/utils/utils.dart';

class ContainerImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("image"),),
      body: Center(
        child:Container(
          width:800,
          height:800,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              width:2,
              color: Colors.yellow,
            )
          ),
          child:
          Column(
            children: [ 
              Container(//圆角
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Image.asset("image/welcome_basic.png", fit: BoxFit.cover,
              width: 50,height: 200,),
              Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg", fit: BoxFit.cover,
              width: 50,height: 200,),
              ClipOval(
                child: Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg", fit: BoxFit.cover,
               width: 50,height: 50,)
              )
            ],
          ),
          
          alignment: Alignment.topLeft,),
      ),
    );
  }

}