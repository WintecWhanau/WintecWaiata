import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class Lyrics extends StatefulWidget {

  Lyrics({
    Key key
  }): super(key: key);

  @override
  _LyricsState createState() => _LyricsState();
}

class _LyricsState extends State < Lyrics > {

  bool changed = false;
  String words = WaiataAux.waiata.maoriWords;
  String button = "English";

  changeLyrics() {
    setState(() {
      if (!changed) {
        words = WaiataAux.waiata.englishWords;
        changed = true;
        button = "Māori";
      } else {
        words = WaiataAux.waiata.maoriWords;
        changed = false;
        button = "English";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: < Widget > [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: Column(
                children: < Widget > [
                  Text(
                    WaiataAux.waiata.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      words,
                      style: TextStyle(
                        fontSize: 20.0, //larger scale
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: < Widget > [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 2.0),
                  child: RaisedButton(
                    onPressed: () => changeLyrics(),
                    child: Text(button),
                  ),
              ),
            ),
          ],
        )
      ],
    );
  }
}