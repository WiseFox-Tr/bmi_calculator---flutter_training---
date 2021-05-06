import 'package:bmi_calculator/UI/screens/homeScreen.dart';
import 'package:bmi_calculator/UI/screens/resultScreen.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppConst.colorIntenseDark,
        scaffoldBackgroundColor: AppConst.colorIntenseDark,
        sliderTheme: SliderThemeData(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          thumbColor: AppConst.colorFlashyPink,
          overlayColor: AppConst.colorPinkSemiTransparent,
          activeTrackColor: Colors.white,
          inactiveTrackColor: AppConst.colorLightGrey,
        )
      ),
      initialRoute: AppConst.routeHome,
      routes: {
        AppConst.routeHome : (BuildContext context) => HomeScreen(),
        AppConst.routeResult : (BuildContext context) => ResultScreen(),
      },
    );
  }
}

