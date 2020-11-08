import 'package:flutter/cupertino.dart';

/// email validation
String validateEmail(String value, BuildContext context) {
  if(value.isEmpty)
    return "email required";
  final emailRegEx = RegExp(r"^[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  if (!emailRegEx.hasMatch(value.trim()))
    return "invalid email address";
  return null;
}
