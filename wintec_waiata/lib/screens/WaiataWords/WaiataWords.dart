import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/Lyrics.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class WaiataWords extends StatefulWidget {
  const WaiataWords({
    Key key
  }): super(key: key);

  @override
  _WaiataWordsState createState() => _WaiataWordsState();
}

class _WaiataWordsState extends State < WaiataWords > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text(
          WaiataAux.waiata.name + " lyrics",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: Lyrics(),
    );
  }
}