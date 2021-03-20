import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class IconContainer extends StatelessWidget {
  double size = 32;
  IconData icon;

  Color color = Colors.black;

  IconContainer(this.icon, {this.size,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: this.color,
        child: Icon(this.icon, size: this.size));
  }
}
