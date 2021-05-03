import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenreCard extends StatelessWidget {

  final IconData icon;
  final String text;

  GenreCard({@required this.icon, @required this.text});

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
          text.toUpperCase(),
          style: TextStyle(
            color: AppConst.colorLightGrey,
            fontSize: AppConst.fontSizeRegular,
          ),
        ),
      ],
    );
  }
}
