import 'package:flutter/material.dart';

class MaraeContent extends StatelessWidget {
  final Color colour;

  MaraeContent(this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: colour,
      alignment: Alignment.center,
    );
  }
}