import 'package:flutter/material.dart';
import 'package:sachirva_assignment/util/color/colors.dart';

class ButtonStyleWithoutBorderSmallHight extends StatelessWidget {
  ButtonStyleWithoutBorderSmallHight(
      {@required this.callBack,
        @required this.buttonText,
        @required this.fillColor,
        @required this.textStyle});

  final Function callBack;
  final String buttonText;
  final Color fillColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: RaisedButton(
          elevation: 0,
          onPressed: () {
            callBack();
          },
          color: fillColor ?? secondaryColor,
          child: Center(
            child: Text(
              buttonText.toUpperCase(),
              style: textStyle,
            ),
          )),
    );
  }
}
