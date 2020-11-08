import 'package:flutter/material.dart';

class ButtonStyleWithBorderExtended extends StatelessWidget {
  ButtonStyleWithBorderExtended(
      {@required this.callBack,
      @required this.buttonText,
      @required this.borderColor,
      @required this.textColor,
      @required this.textStyle,
      this.borderRadius,this.buttonColor});

  final Function callBack;
  final String buttonText;
  final Color borderColor;
  final Color textColor;
  final TextStyle textStyle;
  final double borderRadius;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 45,
        child: FlatButton(
          onPressed: () {
            callBack();
          },
          shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor, width: 1.5),
              borderRadius: borderRadius != null
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.circular(0)),
          color: buttonColor?? Colors.white,
          child:
              Center(child: Text(buttonText.toUpperCase(), style: textStyle)),
        ),
      ),
    );
  }
}
