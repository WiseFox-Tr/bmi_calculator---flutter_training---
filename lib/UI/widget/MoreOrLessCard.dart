import 'package:bmi_calculator/UI/widget/RoundIconButton.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreOrLessCard extends StatelessWidget {

  final String label;
  final String value;
  final Function minusOnPressedCallBack;
  final Function plusButtonOnPressedCallBack;
  final Function minusButtonOnLongPressCallback;
  final Function plusButtonOnLongPressCallback;

  MoreOrLessCard({
    @required this.label,
    @required this.value,
    @required this.minusOnPressedCallBack,
    @required this.plusButtonOnPressedCallBack,
    this.minusButtonOnLongPressCallback,
    this.plusButtonOnLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: AppConst.labelTextStyle,
        ),
        Text(
          value,
          style: AppConst.numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              iconData: FontAwesomeIcons.minus,
              onPressed: minusOnPressedCallBack,
              onLongPress: minusButtonOnLongPressCallback,
            ),
            SizedBox(width: 10.0),
            RoundIconButton(
              iconData: FontAwesomeIcons.plus,
              onPressed: plusButtonOnPressedCallBack,
              onLongPress: plusButtonOnLongPressCallback,
            ),
          ],
        ),
      ],
    );
  }
}
