import 'package:flutter/material.dart';

class WaiataContent extends StatelessWidget {
  final String title;
  final Color colour;

  WaiataContent(this.title, this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: colour,
      alignment: Alignment.center,
      child: Text(
        title
      ),
    );
    
  }
}