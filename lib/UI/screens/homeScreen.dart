import 'package:bmi_calculator/Controller/BMIController.dart';
import 'package:bmi_calculator/UI/widget/GenderCard.dart';
import 'package:bmi_calculator/UI/widget/LargeClickableCard.dart';
import 'package:bmi_calculator/UI/widget/MoreOrLessCard.dart';
import 'package:bmi_calculator/UI/widget/ReusableCard.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:bmi_calculator/Utils/app_strings_and_keys.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Utils/appEnums.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  BMIController _bmiController = BMIController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.strings[AppStringKeys.title]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() => _bmiController.setGender = Gender.male);
                    },
                    color: _bmiController.getGender == Gender.male ? AppConst.colorCardActive : AppConst.colorCardInactive,
                    child: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      text: AppStrings.strings[AppStringKeys.genderMale].toUpperCase(),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() => _bmiController.setGender = Gender.female);
                    },
                    color: _bmiController.getGender == Gender.female ? AppConst.colorCardActive : AppConst.colorCardInactive,
                    child: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      text: AppStrings.strings[AppStringKeys.genderFemale].toUpperCase(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'height'.toUpperCase(),
                    style: AppConst.labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _bmiController.getCurrentHeight.toString(),
                        style: AppConst.numberTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: AppConst.labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: _bmiController.getCurrentHeight.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        _bmiController.setCurrentHeight = newValue.round();
                      });
                    }
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: MoreOrLessCard(
                      label: 'weight'.toUpperCase(),
                      value: _bmiController.getCurrentWeight.toString(),
                      minusOnPressedCallBack: () {
                        setState(() => _bmiController.updateWeightByOne(false));
                      },
                      plusButtonOnPressedCallBack: () {
                        setState(() => _bmiController.updateWeightByOne(true));
                      },
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      child: MoreOrLessCard(
                        label: 'age'.toUpperCase(),
                        value: _bmiController.getCurrentAge.toString(),
                        minusOnPressedCallBack: () {
                          setState(() => _bmiController.updateAgeByOne(false));
                        },
                        plusButtonOnPressedCallBack: () {
                          setState(() => _bmiController.updateAgeByOne(true));
                        },
                      )
                  ),
                ),
              ],
            ),
          ),
          LargeClickableCard(
            onTap: () => Navigator.pushNamed(context, AppConst.routeResult, arguments: _bmiController.provideResults()),
            cardTitle: 'calculate',
            height: AppConst.heightBottomCard,
          ),
        ],
      ),
    );
  }
}
