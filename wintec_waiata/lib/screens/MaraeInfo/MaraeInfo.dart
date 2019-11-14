//TODO
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class MaraeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text(
          "Te Kōpū Mānia o Kirikiriroa",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: SizedBox(
        height: 250,
        child: Carousel(
          images: [
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
            ExactAssetImage("assets/images/LaunchImage.jpg")
          ],
        ),
      ),
    );
  }
}
