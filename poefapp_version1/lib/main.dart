import 'package:flutter/material.dart';
import 'package:poefapp_version1/colors/colors.dart';
import 'package:poefapp_version1/fab.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
        fontFamily: 'RaleWay',
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void openMenu() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
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
            Card(
              borderOnForeground: true,
              elevation: 30.0,
              color: AppThemeColors.LichtBlauw,
              shadowColor: AppThemeColors.ZwartUwMoederColor,
              margin: EdgeInsets.only(
                top: 60.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text(
                      'Goedemorgend Beermarter',
                      style: TextStyle(
                        color: AppThemeColors.ZwartUwMoederColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      )
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    subtitle: Text(
                      'Je hebt momenteel nog €100',
                      style: TextStyle(
                        color: AppThemeColors.ZwartUwMoederColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      )
                    ),
                  ),
                ],
              ),

            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        color: Colors.black,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppThemeColors.GroenUwMoederColor,
                  AppThemeColors.BlauwUwMoederColor
                ]),
          ),
        ),
        //notchMargin: -20,
      ),
      floatingActionButton: new Column(children: <Widget>[
        new Padding(
          padding: new EdgeInsets.symmetric(
            vertical: 275,
          ),
        ),
        new FancyFab(),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      //floatingActionButton: FancyFab(),
    );
  }
}
