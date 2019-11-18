import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/MaraeHome/MaraeContent.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class MaraeHome extends StatelessWidget {

  MaraeHome();

  @override
  Widget build(BuildContext context) {

    //sizing cards
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 85) / 2;
    final double itemWidth = size.width / 2;

    //main render
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "Te Kōpū Mānia o Kirikiriroa",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: GridView.count(
              crossAxisCount: 2, //2 collumns
              childAspectRatio: (itemWidth / itemHeight),
              children: <Widget>[
                MaraeContent(
                  "Marae info", 
                  "assets/images/image.png", 
                  "maraeInfo"
                ),
                MaraeContent(
                  "Carvings",
                  "assets/images/image.png",
                  "carvings"
                ),
                MaraeContent(
                  "Protocols", 
                  "assets/images/image.png", 
                  "protocols"
                ),
                MaraeContent(
                  "Bookings", 
                  "assets/images/image.png", 
                  "booking"
                ),
              ],
            ),
    );
  }
}