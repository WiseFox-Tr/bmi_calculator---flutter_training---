import 'package:bmi_calculator/UI/screens/resultScreen.dart';
import 'package:bmi_calculator/UI/widget/GenderCard.dart';
import 'package:bmi_calculator/UI/widget/LargeClickableCard.dart';
import 'package:bmi_calculator/UI/widget/MoreOrLessCard.dart';
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
  int currentHeight = 180;
  int currentWeight = 80;
  int currentAge = 20;

  void onPressGenderCard(Gender gender) {
    setState(() {
      currentGender = gender;
    });
  }

  int updateIntValueByOne(bool isIncrement, int intValue) {
    if(isIncrement)
      return ++intValue;
    else
      return --intValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConst.strAppTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      text: 'male'.toUpperCase(),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => onPressGenderCard(Gender.female),
                    color: currentGender == Gender.female ? AppConst.colorCardActive : AppConst.colorCardInactive,
                    child: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      text: 'female'.toUpperCase(),
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
                        currentHeight.toString(),
                        style: AppConst.numberTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: AppConst.labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: currentHeight.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        currentHeight = newValue.round();
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
                      value: currentWeight.toString(),
                      minusOnPressedCallBack: () {
                        setState(() => currentWeight = updateIntValueByOne(false, currentWeight));
                      },
                      plusButtonOnPressedCallBack: () {
                        setState(() => currentWeight = updateIntValueByOne(true, currentWeight));
                      },
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      child: MoreOrLessCard(
                        label: 'age'.toUpperCase(),
                        value: currentAge.toString(),
                        minusOnPressedCallBack: () {
                          setState(() => currentAge = updateIntValueByOne(false, currentAge));
                        },
                        plusButtonOnPressedCallBack: () {
                          setState(() => currentAge = updateIntValueByOne(true, currentAge));
                        },
                      )
                  ),
                ),
              ],
            ),
          ),
          LargeClickableCard(
            onTap: () => Navigator.pushNamed(context, AppConst.routeResult),
            cardTitle: 'calculate',
            height: AppConst.heightBottomCard,
          ),
        ],
      ),
    );
  }
}
