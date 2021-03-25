import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:poefapp_version1/fab.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:poefapp_version1/graphs/graph1.dart';
import 'package:poefapp_version1/mainCards/mainCard.dart';
import 'package:poefapp_version1/mainCards/secondCard.dart';
import 'package:poefapp_version1/mainCards/thirdCard.dart';
import 'package:poefapp_version1/parameters.dart';
import 'package:poefapp_version1/settings.dart';
import 'package:poefapp_version1/bottomAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: 'Montserrat',
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PoefApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.state = 'home'}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String state;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
              SecondCardHomePage(),
              ThirdCardHomePage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(state: widget.state),
      floatingActionButton: new FancyFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
