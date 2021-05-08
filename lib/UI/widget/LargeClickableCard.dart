import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class LargeClickableCard extends StatelessWidget {

  final Function onTap;
  final String cardTitle;
  final double height;
  final Color backgroundColor;
  final TextStyle textStyle;

  ///provides a card with a width as large as possible
  ///this card is clickable with an onTap callback
  LargeClickableCard({
    @required this.onTap,
    @required this.cardTitle,
    this.height = 50.0,
    this.backgroundColor = AppConst.colorFlashyPink,
    this.textStyle = AppConst.regularTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 5.0),
        color: backgroundColor,
        width: double.infinity,
        height: height,
        margin: EdgeInsets.only(top: 10.0),
        child: Text(
          cardTitle.toUpperCase(),
          style: textStyle,
        ),
      ),
    );
  }
}
