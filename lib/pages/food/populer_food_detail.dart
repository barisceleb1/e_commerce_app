import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/app_column.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PopulerFoodDetail extends StatelessWidget {
  const PopulerFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Şu an ki telefon boyutu:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
            child: Container(
              width: double.infinity,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/cooked_meat.png"),
                   fit: BoxFit.cover)
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height30,
              left :Dimensions.width15,
              right: Dimensions.width15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,)
                ],






          )),
          Positioned(
              left:0,
              right:0,
              bottom: 0,
              top:Dimensions.popularFoodImgSize-50,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
decoration: BoxDecoration(
  color: Colors.white,
   borderRadius: BorderRadius.only(
     topRight: Radius.circular(Dimensions.radius20),
       topLeft: Radius.circular(Dimensions.radius20),

   )

),
             child:AppColumn(text: 'Veal',)






          ))



        ],

      ),

    );
  }
}
