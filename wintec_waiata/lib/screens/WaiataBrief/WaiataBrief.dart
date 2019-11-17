import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/WaiataBrief/BriefButton.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class WaiataBrief extends StatelessWidget {

  WaiataBrief();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          WaiataAux.waiata.name,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: < Widget > [
            Stack( //thumbnail with text overlayed
              alignment: Alignment.center,
              children: < Widget > [
                Image(
                  fit: BoxFit.fill,
                  image: AssetImage(WaiataAux.waiata.thumbnailPath),
                ),
                Text(
                  WaiataAux.waiata.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text(
                WaiataAux.waiata.name + " brief",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              )
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                WaiataAux.waiata.brief,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: < Widget > [
                Expanded(
                  child: BriefButton("Vocal", '/waiataPlayback', 1),
                ),
                Expanded(
                  child: BriefButton("Lyrics", '/waiataWords', 2),
                ),
                Expanded(
                  child: BriefButton("Non vocal", '/waiataPlayback', 3),
                ),
              ],
            ),
        ),
      ),
    );
  }

  goWaiata(int index) {
    print(index);
  }
}