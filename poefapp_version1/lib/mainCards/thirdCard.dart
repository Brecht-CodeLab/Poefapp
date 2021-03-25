import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:poefapp_version1/graphs/graph1.dart';
import 'package:poefapp_version1/parameters.dart';

class ThirdCardHomePage extends StatefulWidget {
  @override
  _ThirdCardHomePage createState() => _ThirdCardHomePage();
}

class _ThirdCardHomePage extends State<ThirdCardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      borderOnForeground: true,
      elevation: AppParameters.CardElevation,
      color: AppThemeColors.Subtitle,
      shadowColor: AppThemeColors.ZwartUwMoederColor,
      margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            contentPadding: const EdgeInsets.only(left: 20.0),
            title: Text(
              '#bakkentegeven',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  'Gever',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text(
                  'Aantal',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: AppThemeColors.LichtBlauw,
                  thickness: 3.0,
                  indent: 20,
                  endIndent: 20,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  'Gibbon',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text('3',
                    style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  'Gibbon',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text('3',
                    style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  'Gibbon',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text('3',
                    style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  'Gibbon',
                  style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text('3',
                    style: TextStyle(
                      color: AppThemeColors.LichtBlauw,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
