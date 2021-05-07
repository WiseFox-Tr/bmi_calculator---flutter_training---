
import 'dart:math';

import 'package:bmi_calculator/Model/Result.dart';
import 'package:bmi_calculator/Utils/appEnums.dart';

class BMIController {

  Gender _currentGender;
  int _currentHeight = 180;
  int _currentWeight = 70;
  int _currentAge = 20;
  double _bmi;

  get getGender => _currentGender;
  get getCurrentHeight => _currentHeight;
  get getCurrentWeight => _currentWeight;
  get getCurrentAge => _currentAge;
  set setGender(Gender gender) => _currentGender = gender;
  set setCurrentHeight(int newHeight) => _currentHeight = newHeight;

  void updateWeightByOne(bool isIncrement) {
    if(isIncrement) _currentWeight++;
    else _currentWeight--;
  }

  void updateAgeByOne(bool isIncrement) {
    if(isIncrement) _currentAge++;
    else _currentAge--;
  }

  ///formula : weight / height (in meter) ^2 !
  ///gender & age doesn't matter to calculate bmi
  double _calculateBMI() => _bmi = _currentWeight / pow(_currentHeight/100, 2);

  Result provideResults() {
    Result result;
    _calculateBMI();
    //inform bmi is not a pertinent indicator for people under 18 or over than 70 years old.
    if(_currentAge < 18)
      result = Result(_bmi, 'non pertinent', 'BMI is not a pertinent indicator for children & teenagers... sorry try it later !');
    else if(_currentAge > 70)
      result = Result(_bmi, 'non pertinent', 'BMI is not a pertinent indicator for seniors... prefer to find a more detailed tool.');
    //provide result for people in range of 18..70 years old.
    else {
      if(_bmi < 16.5)
        result = Result(_bmi, 'undernourishment', 'You are in severe underweight, don\'t hesitate to consult a specialist.');
      else if(_bmi < 18.5)
        result = Result(_bmi, 'thinness', 'Your weight is little low, consider to eat a little more.');
      else if(_bmi < 25)
        result = Result(_bmi, 'normal', 'Your weight seems well, good job!');
      else if(_bmi < 30)
        result = Result(_bmi, 'overweight', 'You are on overweight, maybe consider to eat a little more healthy and practise some exercises.');
      else if(_bmi < 35)
        result = Result(_bmi, 'moderate obesity', 'Your weight is too important, consider to consult a specialist!');
      else if(_bmi < 40)
        result = Result(_bmi, 'serious obesity', 'Your weight says that you really need to refer to a specialist!');
      else
        result = Result(_bmi, 'morbid obesity', 'Your are at great risk, please refer to a specialist to save your life...');
      //add additional note for women about pregnancy.
      if(_currentGender == Gender.female)
        result.explanation += '\nPlease note that these results are not reliable if you are pregnant.';
    }
    return result;
  }
}
