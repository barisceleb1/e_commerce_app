import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Şu an ki telefon boyutu:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.toolBarHeight,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
      preferredSize: Size.fromHeight(Dimensions.height20),

              child: Container(
               // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),

              child: Center(child: BigText(text:"Sliver",size: Dimensions.font30,)),
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
              background: Image.asset("assets/cooked_meat.png",
                width: double.maxFinite,
              fit: BoxFit.cover,),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(child: ExpandableTextWidget(text: "These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare."
                ),
                 margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                ),
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: Column(
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
                AppIcon(icon: Icons.remove,backgroundColor: AppColors.mainColor,iconSize: Dimensions.iconSize20,),
                BigText(text: "\$12.88 "+" X "+" 0 ", color: AppColors.signColor,size: Dimensions.font25,),
                AppIcon(icon: Icons.add,backgroundColor: AppColors.mainColor,iconSize: Dimensions.iconSize20,),
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
                Container(
                  margin: EdgeInsets.only(left: Dimensions.height20),
                  padding: EdgeInsets.all(Dimensions.height15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color:AppColors.mainColor,
                  ),
                  child: BigText(text: "8\$ Add to Card"),
                )


              ],
            ),
          ),


        ],

      ),
    );
  }
}
