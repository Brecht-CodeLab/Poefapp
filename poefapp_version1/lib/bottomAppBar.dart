import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:poefapp_version1/icons/icons.dart';
import 'package:poefapp_version1/main.dart';
import 'package:poefapp_version1/settings.dart';

class NavBar extends StatefulWidget {
  final String state;

  NavBar({this.state});

  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> {

  Widget _appBar(state) {
    switch (state) {
      case 'home':
        return MyHomePage(state: state);
      case 'settings':
        return Settings(state: state);
      case 'notifications':
        return Settings(state: state);
      case 'contacts':
        return Settings(state: state);
      default:
        return MyHomePage(state: state);
    }
  }

  Route _createRoute(state) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => _appBar(state),
        transitionDuration: Duration(milliseconds: 500),
        reverseTransitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.easeIn;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            child: child,
            position: animation.drive(tween),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        height: 50,
        // margin: EdgeInsets.only(
        //   bottom: 5.0,
        //   left: 5.0,
        //   right: 5.0
        // ),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(20.0),
          //     topRight: Radius.circular(20.0),
          //     bottomRight: Radius.circular(20.0),
          //     bottomLeft: Radius.circular(20.0)
          // ),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppThemeColors.GroenUwMoederColor,
                AppThemeColors.BlauwUwMoederColor
              ]),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  if (widget.state != 'home') {
                    Navigator.of(context).push(_createRoute('home'));
                  }
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 0),
              icon: Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  if (widget.state != 'settings') {
                    Navigator.of(context).push(_createRoute('settings'));
                  }
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 0.0),
              icon: Icon(Icons.notifications),
              onPressed: () {
                setState(() {
                  if (widget.state != 'notifications') {
                    Navigator.of(context).push(_createRoute('notifications'));
                  }
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 100.0),
              icon: Icon(Icons.location_history_rounded),
              onPressed: () {
                setState(() {
                  if (widget.state != 'contacts') {
                    Navigator.of(context).push(_createRoute('contacts'));
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
