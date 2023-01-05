

import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  TextOverflow overFlow;
  final Color? color;
  final String text;
  double size;

 BigText({Key? key, this.color= const Color(0x8A000000), required this.text, this.overFlow= TextOverflow.ellipsis , this.size=0}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color:color,
        fontWeight: FontWeight.w400,
        fontSize:size ==0? Dimensions.font20:size,
      ),

    );
  }
}
