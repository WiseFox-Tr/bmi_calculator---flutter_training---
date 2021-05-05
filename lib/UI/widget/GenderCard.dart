import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCard extends StatelessWidget {

  final IconData icon;
  final String text;

  GenderCard({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: AppConst.sizeIcon,
          color: Colors.white,
        ),
        SizedBox(height: 15.0),
        Text(
          text,
          style: AppConst.labelTextStyle,
        ),
      ],
    );
  }
}
