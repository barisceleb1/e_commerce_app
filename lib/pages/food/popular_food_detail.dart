import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/controllers/popular_product_controller.dart';
import 'package:e_commerce_app/controllers/recommended_product_controller.dart';
import 'package:e_commerce_app/pages/cart/cart_page.dart';
import 'package:e_commerce_app/pages/home/main_food_page.dart';
import 'package:e_commerce_app/route/route_helper.dart';
import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_column.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  const PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product= Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());
    print("page is id "+pageId.toString());
    print("product name is"+ product.name.toString());
    //print("Şu an ki telefon boyutu:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        children: [
          //background image
          GetBuilder<RecommendedProductController> (builder: (recommendProduct){
           return Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:NetworkImage(AppConstants.BASE_URL+AppConstants.UPLOAD_URL+product.img!),
                        fit: BoxFit.cover)
                ),
              ),

            );

          },),


          //icon widgets
          Positioned(
            top: Dimensions.height30,
              left :Dimensions.width15,
              right: Dimensions.width15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>MainFoodPage());
                    },
                    child:AppIcon(
                      icon: Icons.arrow_back_ios,),
                  ),
GetBuilder<PopularProductController>(builder: (controller){
  return GestureDetector(
    onTap: (){
      if(controller.totalItems>=1)
      Get.toNamed(RouteHelper.getCartPage());
    },
    child: Stack(
      children: [
        AppIcon(
          icon: Icons.shopping_cart_outlined,),
        controller.totalItems>=1?
        Positioned(
          right:0,
          top:0,
          child: AppIcon(
            icon: Icons.circle,size:Dimensions.height20,iconColor: Colors.transparent,backgroundColor: AppColors.mainColor,),
        )

            :Container(),
        Positioned(
          right:Dimensions.height3,
          top:Dimensions.height3,
          child: BigText(text: Get.find<PopularProductController>().totalItems.toString(),
            size: 12,color: Colors.white,),

        )
      ],
    ),
  );
},)
                 
                ],






          )),
          //introduction of food
          Positioned(
              left:0,
              right:0,
              bottom: 0,
              top:Dimensions.popularFoodImgSize-Dimensions.popularFoodSize,
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
                 AppColumn(text: product.name!,),
                 SizedBox(height: Dimensions.height20,),
                 BigText(text: "Introduce"),
                 SizedBox(height: Dimensions.height20,),
                 Expanded(
                   child: SingleChildScrollView(
                     child: ExpandableTextWidget(text: product.description!,

                          ),
                   ),
                 )

               ],
             )






          )),

        ],
      ),
      bottomNavigationBar:GetBuilder<PopularProductController>(builder: (popularProduct){
        return  Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height20, right: Dimensions.height20),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
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
                      GestureDetector(onTap: (){
                        popularProduct.setQuantity(false);

                      },
                          child: Icon(Icons.remove, color: AppColors.signColor,)),
                      SizedBox(width: Dimensions.width10/2,),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(width: Dimensions.width10/2,),
                      GestureDetector(
          onTap: (){
            popularProduct.setQuantity(true);
          }
          ,child: Icon(Icons.add, color: AppColors.signColor,)),
                    ],
                  ),
                ),
              GestureDetector(
                onTap: (){
                  popularProduct.addItem(product);
                },
                child: Container(
                  margin: EdgeInsets.only(left: Dimensions.height20),
                  padding: EdgeInsets.all(Dimensions.height15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color:AppColors.mainColor,
                  ),
                 child: BigText(text: "${product.price!}\$ | Add to Card")),
              ),



            ],
          ),
        );
      },)

    );
  }
}
