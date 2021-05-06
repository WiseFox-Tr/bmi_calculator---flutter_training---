import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData iconData;
  final Function onPressed;
  final Function onLongPress;
  final double constraints;
  final double elevation;
  final Color backgroundColor;

  RoundIconButton({
    @required this.iconData,
    @required this.onPressed,
    this.onLongPress,
    this.constraints = 50.0,
    this.elevation = 6.0,
    this.backgroundColor = AppConst.colorButtonGrey,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: Icon(iconData),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: constraints,
        height: constraints,
      ),
      elevation: elevation,
      fillColor: backgroundColor,
    );
  }
}
