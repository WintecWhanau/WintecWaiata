import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wintec_waiata/screens/MaraeInfo/MoreInfoButton.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/Info.dart';

class MaraeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "Te Kōpū Mānia o Kirikiriroa info",
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
              child: Carousel(
                images: [//changed images from network to asset
                  AssetImage(
                      'assets/images/image2.jpg'),
                  AssetImage(
                      'assets/images/image2.jpg'),
                ],
                indicatorBgPadding: 5.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Te Kōpū Mānia o Kirikiriroa',
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
                InfoString.maraeDescription,
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontSize: 15.0, color: Colors.black, height: 1.5),
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
