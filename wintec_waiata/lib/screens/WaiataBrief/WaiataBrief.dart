import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class WaiataBrief extends StatelessWidget {

  WaiataBrief();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text(WaiataAux.waiata.name),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: < Widget > [
            Stack(
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
                  fontSize: 19.0,
                ),
              )
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                WaiataAux.waiata.brief
              ),
            ),
          ],
        ),
      )
    );
  }

  goWaiata(int index) {
    print(index);
  }
}