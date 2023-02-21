import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/pages/home/main_food_page.dart';
import 'package:e_commerce_app/route/route_helper.dart';
import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        GestureDetector(
          onTap: (){
            Get.toNamed(RouteHelper.getInitial());
          },
          child: AppIcon(icon: Icons.home_outlined,
            iconColor: Colors.white,
            backgroundColor: AppColors.mainColor,
            iconSize: Dimensions.iconSize25,),
        ),

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
               // color: Colors.red,
                child: MediaQuery.removePadding(context: context,removeTop: true,
                  child: GetBuilder<CartController>(builder:(cartController){

                    return ListView.builder(
                        itemCount: cartController.getItems.length,
                        itemBuilder: (_, index){
                          return Container(
                            margin: EdgeInsets.only(top:Dimensions.height20),
                            height: 100,
                            width: 200,
                            // color: Colors.blue,
                            child: Row(
                              children: [
                                Container(
                                  width: Dimensions.height20*5,
                                  height: Dimensions.height20*5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(AppConstants.BASE_URL+AppConstants.UPLOAD_URL+cartController.getItems[index].img!),fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(Dimensions.height20)
                                  ),
                                ),
                                SizedBox(width: Dimensions.width10,),
                                Expanded(child: Container(
                                  height: Dimensions.height20*5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      BigText(text: cartController.getItems[index].name!,color: Colors.black54,),
                                      SmallText(text: "spicy"),
                                      Row(
                                        children: [
                                          BigText(text: cartController.getItems[index].price.toString(),color: Colors.redAccent,),
                                          Container(
                                            margin: EdgeInsets.only(left: Dimensions.height10),
                                            padding: EdgeInsets.all(Dimensions.height10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius10),
                                              color:Colors.white,
                                            ),

                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: Dimensions.height20),
                                            padding: EdgeInsets.all(Dimensions.height15),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius20),
                                              color:Colors.white,
                                            ),
                                            child: Row(
                                              children: [
                                                GestureDetector(onTap: (){
                                                  //popularProduct.setQuantity(false);

                                                },
                                                    child: Icon(Icons.remove, color: AppColors.signColor,)),
                                                SizedBox(width: Dimensions.width10/2,),
                                                BigText(text: "asdasd"),//popularProduct.inCartItems.toString()),
                                                SizedBox(width: Dimensions.width10/2,),
                                                GestureDetector(
                                                    onTap: (){
                                                      //popularProduct.setQuantity(true);
                                                    }
                                                    ,child: Icon(Icons.add, color: AppColors.signColor,)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),

                                ))
                              ],
                            ),
                          );




                        });

                  })
                )

              ))

        ],



      ),


    );
  }
}
