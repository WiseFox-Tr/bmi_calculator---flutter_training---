import 'package:bmi_calculator/UI/CustomColor.dart';
import 'package:bmi_calculator/UI/screens/homeScreen.dart';
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
      ),
      home: HomeScreen(),
    );
  }
}

