import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class Marae extends StatelessWidget {
  
  var _title;

  Marae(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text('$_title'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Hello world'),
          Text('Waiata')
        ],
      ),
    );
  }
}