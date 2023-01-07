import 'package:e_commerce_app/const/color.dart';
import 'package:e_commerce_app/const/dimensions.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hidddenText= true;
  double textHeight = Dimensions.screenHeight/4.55;

  @override
  void initState() {
    super.initState();
    if(widget.text.length >textHeight){
      firstHalf= widget.text.substring(0, textHeight.toInt());
      secondHalf= widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else {
      firstHalf= widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(text: hidddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                  SmallText(text:"Show More"),
                Icon(Icons.arrow_drop_down, color: AppColors.mainColor,)
              ],
            ),
          ),

        ],



      ),
    );
  }
}
