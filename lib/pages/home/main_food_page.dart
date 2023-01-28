import 'package:e_commerce_app/pages/home/food_page_body.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("current height is:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
          //  color: Colors.blue,
            child: Container(
          //    color: Colors.pink,
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text:"Turkey", color:Colors.cyan),
                      Row(
                        children: [
                         SizedBox(width: 20),
                          SmallText(text: "Ankara",),
                          Icon(Icons.arrow_drop_down_rounded),

                        ],
                      ),

                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                //        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          Expanded(child:SingleChildScrollView(
child: FoodPageBody(),
          ) ),
        ],
      ),
    );
  }
}
