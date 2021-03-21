import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:poefapp_version1/graphs/graph1.dart';
import 'package:poefapp_version1/parameters.dart';


class SecondCardHomePage extends StatefulWidget {
  @override
  _SecondCardHomePage createState() => _SecondCardHomePage();
}

class _SecondCardHomePage extends State<SecondCardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      borderOnForeground: true,
      elevation: AppParameters.CardElevation,
      color: AppThemeColors.ZwartUwMoederColor,
      shadowColor: AppThemeColors.ZwartUwMoederColor,
      margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          LineChartSample2(),
        ],
      ),
    );
  }
}
