
import 'package:flutter/material.dart';

class ButtonStyleWithBorderSmallHight extends StatelessWidget {
  ButtonStyleWithBorderSmallHight(
      {@required this.callBack,
        @required this.buttonText,
        @required this.borderColor,
        @required this.textStyle,
        this.textColor});

  final Function callBack;
  final String buttonText;
  final Color borderColor;
  final TextStyle textStyle;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: FlatButton(
        onPressed: () {
          callBack();
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? Colors.grey, width: 1)),
        child: Center(child: Text(buttonText.toUpperCase(), style: textStyle)),
      ),
    );
  }
}
