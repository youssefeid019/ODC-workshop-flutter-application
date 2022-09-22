import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget getIndecator() {
  return Container(
    width: 300,
    child: new LinearPercentIndicator(
      barRadius: Radius.circular(20),
      animation: true,
      animationDuration: 1000,
      width: 300.0,
      lineHeight: 8.0,
      percent: 1.0,
      progressColor: Colors.orange,
    ),
  );
}
