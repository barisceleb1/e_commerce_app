import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/app_column.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 AppColumn(text: 'Veal',),
                 SizedBox(height: Dimensions.height20,),
                 BigText(text: "Introduce"),

               ],
             )






          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height20, right: Dimensions.height20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: Dimensions.height20),
              padding: EdgeInsets.all(Dimensions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.remove, color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.height20),
              padding: EdgeInsets.all(Dimensions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:AppColors.mainColor,
              ),
              child: BigText(text: "0.8+ Add to Card"),
            )


          ],
        ),
      ),

    );
  }
}
