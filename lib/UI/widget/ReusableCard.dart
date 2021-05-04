import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget child;
  final Function onPress;

  ReusableCard({this.color = AppConst.colorCardActive, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
