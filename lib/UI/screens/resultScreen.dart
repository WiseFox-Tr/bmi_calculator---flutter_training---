import 'package:bmi_calculator/Utils/AppConst.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConst.strAppTitle),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('Result'),
      ),
    );
  }
}
