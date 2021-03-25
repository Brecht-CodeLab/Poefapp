import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:poefapp_version1/fab.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:poefapp_version1/bottomAppBar.dart';
import 'package:poefapp_version1/mainCards/mainCard.dart';

class Settings extends StatefulWidget {
  final String state;
  Settings({this.state});

  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.0,
                0.5,
                1.0
              ],
                  colors: [
                AppThemeColors.GroenUwMoederColor,
                AppThemeColors.BlauwUwMoederColor,
                AppThemeColors.ZwartUwMoederColor,
              ])),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              MainCardHomePage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(state: widget.state),
      floatingActionButton: FancyFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
