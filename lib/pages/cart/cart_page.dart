import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
    top: Dimensions.height20*3,
    left: Dimensions.width20,
    right: Dimensions.width20,

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppIcon(icon: Icons.arrow_back_ios,
        iconColor: Colors.white,
        backgroundColor: AppColors.mainColor,
        iconSize: Dimensions.iconSize25,),
        SizedBox(width: Dimensions.width20*5,),
        AppIcon(icon: Icons.home_outlined,
          iconColor: Colors.white,
          backgroundColor: AppColors.mainColor,
          iconSize: Dimensions.iconSize25,),

        AppIcon(icon: Icons.shopping_cart,
          iconColor: Colors.white,
          backgroundColor: AppColors.mainColor,
          iconSize: Dimensions.iconSize25,)
      ],
    ) ),
          Positioned(
              top: Dimensions.height20*5,
              left:Dimensions.width20,
              right:Dimensions.width20,
              bottom: 0,
              child:Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                color: Colors.red,
                child: MediaQuery.removePadding(context: context,removeTop: true, child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (_, index){
                      return Container(
                        margin: EdgeInsets.only(top:Dimensions.height20),
                        height: 100,
                        width: 200,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            Container(
                              width: Dimensions.height20*5,
                              height: Dimensions.height20*5,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/hamburger.png"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(Dimensions.height20)
                              ),
                            ),
                            Expanded(child: Container(
                              height: Dimensions.height20*5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.,
                              ),

                            ))
                          ],
                        ),
                      );




                    }),
                )

              ))

        ],



      ),


    );
  }
}
