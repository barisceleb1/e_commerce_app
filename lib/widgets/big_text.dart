import 'dart:html';

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  TextOverflow overFlow;
  final Color? color;
  final String text;
  double size;

 BigText({Key? key, this.color, required this.text, this.overFlow= TextOverflow.ellipsis , this.size=20}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color:color,
        fontWeight: FontWeight.w400,
        fontSize: size,
      ),

    );
  }
}
