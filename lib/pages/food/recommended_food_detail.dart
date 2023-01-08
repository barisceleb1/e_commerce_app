import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: Colors.white,
              child: Center(child: BigText(text:"Sliver",size: Dimensions.font30,)),
              width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom:10),
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
            child: Text("These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare.These are short, famous texts in English from classic sources like the Bible or Shakespeare."),
          )

        ],
      ),
    );
  }
}
