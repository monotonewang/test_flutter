import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class DialogPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Dialog"),),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical :1.0,horizontal: 1.0),
        children: [
          ElevatedButton(
            onPressed:() {
              Toast.show("AlertDialog show", context,duration: Toast.LENGTH_SHORT);
              showDialog(
                  context:context,

                  builder:(context){
                    return  AlertDialog(
                      //标题
                      titlePadding: EdgeInsets.all(20),
                      title: Text('提示'),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('This is a demo alert dialog.'),
                            Text('Would you like to approve of this message?'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Approve'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                    );
                  }
   

              );
            },
            child: Text('AlertDialog'),
          )
        ],
      ),
    );
  }

}