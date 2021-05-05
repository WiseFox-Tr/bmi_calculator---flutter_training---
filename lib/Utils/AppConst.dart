import 'package:flutter/material.dart';

class AppConst {
  //size
  static const double heightBottomCard = 80.0;
  static const double sizeIcon = 70.0;
  static const double fontSizeRegular = 18.0;

  //color
  static const Color colorIntenseDark = Color(0xFF0A0E21);
  static const Color colorCardInactive = Color(0xFF090B17);
  static const Color colorCardActive = Color(0xFF1D1E33);
  static const Color colorFlashyPink = Color(0xFFEB1555);
  static const Color colorPinkSemiTransparent = Color(0x29EB1555);
  static const Color colorLightGrey = Color(0xFF8D8E98);

  static const TextStyle labelTextStyle = TextStyle(
    color: AppConst.colorLightGrey,
    fontSize: AppConst.fontSizeRegular,
  );
  static const TextStyle numberTextStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w900,
  );
}
