import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/Info.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "About Us",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              //for better experience for different screen size
              height: MediaQuery.of(context).size.height * 0.35,
              child: Image.asset(InfoString.group),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                InfoString.aboutUsTitle,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    height: 2),
              ),
            ),
            Container(
              //alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                InfoString.appDescription,
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontSize: 20.0, color: Colors.black, height: 1.5),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.groupName,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  height: 2,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.gorupInfo,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.disclaimTitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  height: 2,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.disclaimer,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            /*SizedBox(
              //for better experience for different screen size
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(InfoString.wintecLogo),
            ),*/
          ],
        ),
      ),
    );
  }
}
