import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
      preferredSize: Size.fromHeight(20),

              child: Container(

              child: Center(child: BigText(text:"Sliver",size: Dimensions.font30,)),
              width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom:10),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft:Radius.circular(Dimensions.radius20),
                ),
                  color: Colors.white,),
            ),),
            pinned: true,
            backgroundColor: Colors.red.shade900,
            expandedHeight: 300,
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
    );
  }
}
