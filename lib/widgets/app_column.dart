import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font30),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
                children:
                List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor,size: Dimensions.iconSize15,))

            ),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "4.5"),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "1287"),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "Comments"),


          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp, text: "Normal" , iconColor: AppColors.iconColor),
            IconAndTextWidget(icon: Icons.location_on, text: "1.5km" , iconColor: AppColors.mainColor),
            IconAndTextWidget(icon: Icons.access_time_rounded, text: "36min" , iconColor: AppColors.textColor),



          ],
        )
      ],
    );
  }
}
