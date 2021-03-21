import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:poefapp_version1/parameters.dart';


class MainCardHomePage extends StatefulWidget {
  @override
  _MainCardHomePage createState() => _MainCardHomePage();
}

class _MainCardHomePage extends State<MainCardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      borderOnForeground: true,
      elevation: AppParameters.CardElevation,
      color: AppThemeColors.LichtBlauw,
      shadowColor: AppThemeColors.ZwartUwMoederColor,
      margin: EdgeInsets.only(top: 60.0, left: 10.0, right: 10.0, bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text(
              'Goedenacht Beermarter',
              style: TextStyle(
                color: AppThemeColors.ZwartUwMoederColor,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            contentPadding: EdgeInsets.only(left: 20.0, right: 50.0, top: 20.0),
            trailing: Icon(
              FlutterIcons.weather_night_partly_cloudy_mco,
              size: 100.0,
              color: AppThemeColors.Subtitle,
            ),
          ),
          const Padding(
              padding: const EdgeInsets.only(
            bottom: 0.0,
          )),
          const ListTile(
            subtitle: Text('Account: €100',
                style: TextStyle(
                  color: AppThemeColors.Subtitle,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                )),
            contentPadding:
                EdgeInsets.only(left: 20.0, right: 10.0, bottom: 20.0),
          )
        ],
      ),
    );
  }
}
