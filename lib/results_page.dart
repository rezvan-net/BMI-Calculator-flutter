import 'package:bmi_calculator/Bottom_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'Bottom_Button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required  this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String  interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result',
                  style: kTitleTextStyle,),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard (colour:kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      resultText.toUpperCase(),
                style:kResultTextStyle ),
                Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RECALCULATE',
            onTap: (){
            Navigator.pop(context);
          },
          )
        ],
      ),
    );
  }
}