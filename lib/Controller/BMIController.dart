
import 'dart:math';

import 'package:bmi_calculator/Model/Result.dart';
import 'package:bmi_calculator/Utils/appEnums.dart';
import 'package:bmi_calculator/Utils/appStringsAndKeys.dart';

class BMIController {

  Gender _currentGender;
  int _currentHeight = 170;
  int _currentWeight = 70;
  int _currentAge = 30;
  double _bmi;

  get getGender => _currentGender;
  get getCurrentHeight => _currentHeight;
  get getCurrentWeight => _currentWeight;
  get getCurrentAge => _currentAge;
  set setGender(Gender gender) => _currentGender = gender;
  set setCurrentHeight(int newHeight) => _currentHeight = newHeight;

  void updateWeightByOne(bool isIncrement) {
    if(isIncrement && _currentWeight < 400) _currentWeight++;
    else if(!isIncrement && _currentWeight > 10) _currentWeight--;
  }

  void updateAgeByOne(bool isIncrement) {
    if(isIncrement && _currentAge < 120) _currentAge++;
    else if(!isIncrement && _currentAge > 5) _currentAge--;
  }

  ///formula : weight / height (in meter) ^2 !
  ///gender & age doesn't matter to calculate bmi
  double _calculateBMI() => _bmi = _currentWeight / pow(_currentHeight/100, 2);

  Result provideResults() {
    Result result;
    _calculateBMI();
    //inform bmi is not a pertinent indicator for people under 18 or over than 70 years old.
    if(_currentAge < 18)
      result = Result(_bmi, AppStrings.strings[AppStringKey.labelNonRelevant], AppStrings.strings[AppStringKey.textNonRelevantYoungster]);
    else if(_currentAge > 70)
      result = Result(_bmi, AppStrings.strings[AppStringKey.labelNonRelevant], AppStrings.strings[AppStringKey.textNonRelevantOlder]);
    //provide result for people in range of 18..70 years old.
    else {
      if(_bmi < 16.5)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorUndernourishment], AppStrings.strings[AppStringKey.textUndernourishment]);
      else if(_bmi < 18.5)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorThinness], AppStrings.strings[AppStringKey.textThinness]);
      else if(_bmi < 25)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorNormal], AppStrings.strings[AppStringKey.textNormal]);
      else if(_bmi < 30)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorOverweight], AppStrings.strings[AppStringKey.textOverweight]);
      else if(_bmi < 35)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorModerateObesity], AppStrings.strings[AppStringKey.textModerateObesity]);
      else if(_bmi < 40)
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorSeriousObesity], AppStrings.strings[AppStringKey.textSeriousObesity]);
      else
        result = Result(_bmi, AppStrings.strings[AppStringKey.indicatorMorbidObesity], AppStrings.strings[AppStringKey.textMorbidObesity]);
      //add additional note for women about pregnancy.
      if(_currentGender == Gender.female)
        result.explanation += AppStrings.strings[AppStringKey.textPregnancyWarning];
    }
    return result;
  }
}
