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
  String buttonText = "English";

  changeLyrics() {
    setState(() {
      if (!changed) {
        words = WaiataAux.waiata.englishWords;
        changed = true;
        buttonText = "Māori";
      } else {
        words = WaiataAux.waiata.maoriWords;
        changed = false;
        buttonText = "English";
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      WaiataAux.waiata.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        words,
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
                    color: Colors.black,
                    splashColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(5.0),
                        bottom: Radius.circular(5.0),
                      ),
                      side: BorderSide(
                        color: Colors.yellow
                      )
                    ),
                    onPressed: () => changeLyrics(),
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ),
            ),
          ],
        )
      ],
    );
  }
}