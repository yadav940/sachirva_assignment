import 'package:flutter/material.dart';
import 'package:sachirva_assignment/util/color/colors.dart';

class CircleCheckBox extends StatelessWidget {
  bool isChecked=false;

  CircleCheckBox(this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
          color: white),
      child: Container(

        height: 20,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isChecked?Colors.black:white),
      ),
    );
  }
}
