import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/controllers/popular_product_controller.dart';
import 'package:e_commerce_app/controllers/recommended_product_controller.dart';
import 'package:e_commerce_app/pages/cart/cart_page.dart';
import 'package:e_commerce_app/route/route_helper.dart';
import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;
  const RecommendedFoodDetail({Key? key,required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<RecommendedProductController>().recommendedProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());
   // print("Şu an ki telefon boyutu:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: Dimensions.toolBarHeight,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteHelper.getInitial());
                  },
                    child: AppIcon(icon: Icons.clear)),
               // AppIcon(icon: Icons.shopping_cart_outlined)
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
                        Get.find<PopularProductController>().totalItems>=1?
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
            ),
            bottom: PreferredSize(
      preferredSize: Size.fromHeight(Dimensions.height20),

              child: Container(
               // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),

              child: Center(child: BigText(text:product.name!,size: Dimensions.font30,)),
              width: double.maxFinite,
                padding: EdgeInsets.only(top: Dimensions.width5, bottom:Dimensions.width10),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft:Radius.circular(Dimensions.radius20),
                ),
                  color: Colors.white,),
            ),),
            pinned: true,
            backgroundColor: Colors.red.shade900,
            expandedHeight: Dimensions.expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(AppConstants.BASE_URL+AppConstants.UPLOAD_URL+product.img!,
                width: double.maxFinite,
              fit: BoxFit.cover,),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child:ExpandableTextWidget(text: product.description!,)
                  ,
                 margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                ),
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar:GetBuilder<PopularProductController>(builder: (controller){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width50,
                right: Dimensions.width50,
                top: Dimensions.height10,
                bottom: Dimensions.height10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap:(){
                    print("click");
                    controller.setQuantity(false);


                  },child: AppIcon(icon: Icons.remove,backgroundColor: AppColors.mainColor,iconSize: Dimensions.iconSize20,)),
                  BigText(text: "\$${product.price} X ${controller.inCartItems} ", color: AppColors.signColor,size: Dimensions.font25,),
                  GestureDetector(onTap:(){
                    print("click");
                    controller.setQuantity(true);


                  },child: AppIcon(icon: Icons.add,backgroundColor: AppColors.mainColor,iconSize: Dimensions.iconSize20,)),
                ],
              ),
            ),
            Container(
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
                      child: Icon(Icons.favorite,
                        color: AppColors.mainColor,)
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.addItem(product);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: Dimensions.height20),
                      padding: EdgeInsets.all(Dimensions.height15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color:AppColors.mainColor,
                      ),
                      child: BigText(text: "${product.price}\$ Add to Card"),
                    ),
                  )


                ],
              ),
            ),


          ],

        );

      })


    );
  }
}
