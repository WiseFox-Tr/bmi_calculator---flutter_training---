import 'package:bmi_calculator/UI/widget/LargeClickableCard.dart';
import 'package:bmi_calculator/UI/widget/ReusableCard.dart';
import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConst.strAppTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: AppConst.numberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'overweight'.toUpperCase(),
                    style: AppConst.regularTextStyle.copyWith(
                      color: AppConst.colorFlashyGreen,
                    ),
                  ),
                  Text(
                    '80',
                    style: AppConst.resultNumberTextStyle,
                  ),
                  Text(
                    'lorem ipsum sentence',
                    style: AppConst.regularTextStyle.copyWith(
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          ),
          LargeClickableCard(
            onTap: () => Navigator.pop,
            cardTitle: 're-calculate',
            height: AppConst.heightBottomCard,
          ),
        ],
      ),
    );
  }
}
