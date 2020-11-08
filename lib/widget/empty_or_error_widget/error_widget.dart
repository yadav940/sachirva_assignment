import 'package:flutter/material.dart';

/// error widget
class ModistaboxErrorWidget extends StatelessWidget {
  /// visible status
  final bool visible;

  /// error message
  String error;

  /// error widget constructor
   ModistaboxErrorWidget({Key key, this.visible, this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: visible ? 1 : 0,
        child: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  error,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      );
}
