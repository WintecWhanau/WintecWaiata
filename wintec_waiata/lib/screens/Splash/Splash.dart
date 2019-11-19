//TODO
//this is a place holder for splash screen
import 'dart:async';
import 'dart:io';
import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _animation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );

    _animation.addListener(() => this.setState(() {}));
    _animationController.forward();

    Timer(
      Duration(milliseconds: 3000),
          () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( // Wintec logo as foreground image
        foregroundDecoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logoonly.png")
          )
        ),
        decoration: BoxDecoration( // Background image with no logo
          image: DecorationImage(
            image: AssetImage("assets/images/NoLogo.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(  // Indicator to show loading progress
          child: SizedBox(
            height: 150.0,
            width: 150.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              strokeWidth: 7.0,
           )
          ),
        )
      )
    );
  }
}