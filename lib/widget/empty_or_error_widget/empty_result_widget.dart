import 'package:flutter/material.dart';
//import 'package:sachirva_assignment/language/app_translations.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:sachirva_assignment/util/style/style.dart';
//import 'package:tagrank/widgets/buutton_style/button_style_without_border.dart';

/// empty response widget
class EmptyWidget extends StatelessWidget {
  /// visible status
  final bool visible;

  /// empty response widget constructor
  const EmptyWidget({Key key, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity:  visible ? 1 : 0.0,
        child: Container(
          alignment: FractionalOffset.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'No Result',//AppTranslations.of(context).getText('general', 'no_result'),
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      );
}
