

import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;


  const AppIcon({Key? key, required this.icon , this.backgroundColor= Colors.white70, this.iconColor= Colors.black54, this.size=35, this.iconSize=20,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,

      ),
    );

  }
}
