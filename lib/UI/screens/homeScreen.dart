import 'package:bmi_calculator/UI/widget/GenderCard.dart';
import 'package:bmi_calculator/UI/widget/ReusableCard.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Utils/appEnums.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Gender currentGender;

  void onPressGenderCard(Gender gender) {
    setState(() {
      currentGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () => onPressGenderCard(Gender.male),
                    color: currentGender == Gender.male ? AppConst.colorCardActive : AppConst.colorCardInactive,
                    child: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      text: "male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => onPressGenderCard(Gender.female),
                    color: currentGender == Gender.female ? AppConst.colorCardActive : AppConst.colorCardInactive,
                    child: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      text: "female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
              ],
            ),
          ),
          Container(
            color: AppConst.colorFlashyPink,
            width: double.infinity,
            height: AppConst.heightBottomCard,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
