import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/Home/Home.dart';
import 'package:wintec_waiata/screens/MaraeInfo/MaraeInfo.dart';
import 'package:wintec_waiata/screens/Protocols/Protocols.dart';
import 'package:wintec_waiata/screens/Splash/Splash.dart';
import 'package:wintec_waiata/screens/WaiataBrief/WaiataBrief.dart';
import 'package:wintec_waiata/screens/WaiataPlayback/WaiataPlayback.dart';
import 'package:wintec_waiata/screens/WaiataWords/WaiataWords.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(255, 215, 0, 1),
        //for overscroll effect color
        accentColor: Color.fromRGBO(255, 255, 82, 1),
        //for InkWell ripple effect color
        splashColor: Color.fromRGBO(255, 255, 82, 1),
      ),
      //set up page route
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/waiataBrief': (context) => WaiataBrief(),
        '/waiataWords': (context) => WaiataWords(),
        '/waiataPlayback': (context) => WaiataPlayback(),
        '/maraeInfo': (context) => MaraeInfo(),
        '/protocols': (context) => Protocols()
      },
    );
  }
}
