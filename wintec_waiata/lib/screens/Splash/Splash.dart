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
      Duration(milliseconds: 4000),
          () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.gif"),
            fit: BoxFit.cover,
          )
        ),
      )
    );
  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        color: Colors.amber,
//        child: FadeTransition(
//            opacity: _animation,
//            child: Container(
//              foregroundDecoration: BoxDecoration(
//                  image: DecorationImage(
//                    image: AssetImage("assets/images/splashstill.png"),
//                  )
//              ),
//            )
//        ),
//      ),
//    );
//  }

}