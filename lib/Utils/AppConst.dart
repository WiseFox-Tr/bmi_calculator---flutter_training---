import 'package:flutter/material.dart';

class AppConst {

  static const String routeHome = '/home';
  static const String routeResult = '/result';

  //size
  static const double heightBottomCard = 60.0;
  static const double sizeIcon = 70.0;
  static const double fontSizeRegular = 25.0;
  static const double fontSizeLabel = 18.0;

  //color
  static const Color colorIntenseDark = Color(0xFF0A0E21);
  static const Color colorCardInactive = Color(0xFF090B17);
  static const Color colorCardActive = Color(0xFF1D1E33);
  static const Color colorFlashyPink = Color(0xFFEB1555);
  static const Color colorPinkSemiTransparent = Color(0x29EB1555);
  static const Color colorButtonGrey = Color(0xFF4C4F5E);
  static const Color colorLightGrey = Color(0xFF8D8E98);
  static const Color colorFlashyGreen = Color(0xFF24D876);

  static const TextStyle labelTextStyle = TextStyle(
    color: AppConst.colorLightGrey,
    fontSize: AppConst.fontSizeLabel,
  );
  static const TextStyle regularTextStyle = TextStyle(
    fontSize: AppConst.fontSizeRegular,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle numberTextStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle resultNumberTextStyle = TextStyle(
    fontSize: 60.0,
    fontWeight: FontWeight.w900,
  );
}
