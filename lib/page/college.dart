

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class College extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2969235134,2098148338&fm=11&gp=0.jpg",fit: BoxFit.fill,);
                },
                itemCount: 3,
                viewportFraction: 0.8,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              );
  }

}