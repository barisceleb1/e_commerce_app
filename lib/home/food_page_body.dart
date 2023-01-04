import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatelessWidget {
 FoodPageBody({Key? key}) : super(key: key);
PageController pageController =PageController(viewportFraction: 0.90);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.orange,

      child: PageView.builder(itemCount: 5,
        controller: pageController,
        itemBuilder:(context,position){
        return _buildPageItem(position);
        },

      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children:[Container(
        height: 220,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/hamburger.png"),
              fit: BoxFit.cover),

          borderRadius: BorderRadius.circular(30),
          color: index.isEven?Color(0xFF00BCD4):Colors.orange,
        ),
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
    color: Colors.white
          ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side",),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: 
                          List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor,size: 15,))
                        
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1287"),
                      SizedBox(width: 10,),
                      SmallText(text: "Comments"),


                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndTextWidget(icon: Icons.circle_sharp, text: "Normal" , iconColor: AppColors.iconColor),
                      SizedBox(width: 10,),
                      IconAndTextWidget(icon: Icons.location_on, text: "1.5km" , iconColor: AppColors.mainColor),
                      SizedBox(width: 10,),
                      IconAndTextWidget(icon: Icons.access_time_rounded, text: "36min" , iconColor: AppColors.textColor),



                    ],
                  )
                ],
              ),
            ),
          ),
          ),

      ]
    );
  }
}
