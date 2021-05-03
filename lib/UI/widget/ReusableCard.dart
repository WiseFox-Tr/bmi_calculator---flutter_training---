import 'package:bmi_calculator/UI/CustomColor.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;

  ReusableCard({this.color = AppConst.colorLighterDark});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
