import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sachirva_assignment/widget/barchart/bar_chart_sample.dart';
class BarcharPage extends StatelessWidget {
  final List<double> list;

  BarcharPage(this.list);

  /*=[90.32,30.0,20.0,50.0,15.0,70.77]*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BarChartSample(list),
    );
  }
}
