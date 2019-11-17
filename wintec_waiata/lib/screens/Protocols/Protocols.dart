import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wintec_waiata/screens/MaraeInfo/MoreInfoButton.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/Info.dart';

class Protocols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "Protocols",
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
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(InfoString.protocolImage),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                InfoString.protocolTitle,
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
                InfoString.protocols,
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontSize: 15.0, color: Colors.black, height: 1.5),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Wharenui - Te Kakano a te Kaahu',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.wharenui,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Wharekai',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                InfoString.wharekai,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MoreInfoButton('Learn More',
                'https://www.wintec.ac.nz/about-wintec/m%C4%81ori-and-pasifika/wintec-marae'),
          ],
        ),
      ),
    );
  }
}
