import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
 FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
PageController pageController =PageController(viewportFraction: 0.90);

var _currPageValue=0.0;
double _scaleFactor= 0.8;
double _height= Dimensions.pageViewContainer;

@override
void initState(){
  super.initState();
  pageController.addListener(() {
    setState(() {
      _currPageValue= pageController.page!;
      print(_currPageValue.toString());
    });
  });
}

@override
void dispose(){
  pageController.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
      height: Dimensions.pageView,
      // color: Colors.orange,

      child: PageView.builder(itemCount: 5,
        controller: pageController,
        itemBuilder:(context,position){
          return _buildPageItem(position);
        },

      ),
    ),
        //dots
    new DotsIndicator(
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
      activeColor: AppColors.mainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radius5)),
    ),
    ),
      //Popular text],
    SizedBox(height: Dimensions.height30,),
  ],
    );
  }

  Widget _buildPageItem(int index) {
  Matrix4 matrix= new Matrix4.identity();
  if(index== _currPageValue.floor()){
    var currScale= 1-(_currPageValue-index)*(1-_scaleFactor);
    var currTrans= _height*(1-currScale)/2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans,0);
  }else if (index == _currPageValue.floor()+1){
    var currScale= _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
    var currTrans= _height*(1-currScale)/2;
    matrix= Matrix4.diagonal3Values(1, currScale, 1);
    matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans,0);

  }else if (index == _currPageValue.floor()-1){
    var currScale= 1-(_currPageValue-index)*(1-_scaleFactor);
    var currTrans= _height*(1-currScale)/2;
    matrix= Matrix4.diagonal3Values(1, currScale, 1);
    matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);
  }else{
    var currScale = 0.8;
    matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,_height*(1-_scaleFactor)/2,1);
  }


  return Transform(
    transform: matrix,
    child: Stack(
        children:[Container(
          height: Dimensions.pageViewContainer,
          margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/hamburger.png"),
                fit: BoxFit.cover),

            borderRadius: BorderRadius.circular(Dimensions.radius30),
           // color: index.isEven?Color(0xFF00BCD4):Colors.orange,
          ),
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width40, right: Dimensions.width40, bottom: Dimensions.height15,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
      color: Colors.white,
                 boxShadow:[ BoxShadow(
                   blurRadius: 5.0,
                   color: Color(0xFFe8e8e8),
                   offset: Offset(0,5),
                 )]
            ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width15, right: Dimensions.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Side",),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                        Wrap(
                          children:
                            List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor,size: Dimensions.iconSize15,))

                        ),
                        SizedBox(width: Dimensions.width10,),
                        SmallText(text: "4.5"),
                        SizedBox(width: Dimensions.width10,),
                        SmallText(text: "1287"),
                        SizedBox(width: Dimensions.width10,),
                        SmallText(text: "Comments"),


                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(icon: Icons.circle_sharp, text: "Normal" , iconColor: AppColors.iconColor),
                        IconAndTextWidget(icon: Icons.location_on, text: "1.5km" , iconColor: AppColors.mainColor),
                        IconAndTextWidget(icon: Icons.access_time_rounded, text: "36min" , iconColor: AppColors.textColor),



                      ],
                    )
                  ],
                ),
              ),
            ),
            ),

        ]
      ),
  );
  }
}
