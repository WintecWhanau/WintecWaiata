import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wintec_waiata/shared/Waiata.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class WaiataContent extends StatelessWidget {
  final int index; //index given to the initWaiata method
  final String title; //display song title
  final String image; // image to display inside card

  WaiataContent(this.index, this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.yellow),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () => initWaiata(context, index),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Hero(
                    tag: title,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                  )),
            ),
            Container(
              // color: Colors.black,
              child: Row(
                //used to expand song name across entire bottom of card
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      //only used a flat button for the styling
                      onPressed: null,
                      disabledTextColor: Colors.black,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //load selected waiata using the index provided to gather single waiata data
  initWaiata(BuildContext context, int index) async {
    //read and convert json
    String jsonContent = await rootBundle.loadString("assets/json/waiata.json");
    List json = jsonDecode(jsonContent);

    //initialize static waita from json
    WaiataAux.waiata = new Waiata(
        json[index]["name"],
        json[index]["brief"],
        json[index]["maoriWords"],
        json[index]["englishWords"],
        json[index]["thumbnailPath"],
        json[index]["vocalPath"],
        json[index]["nonVocalPath"]);

    //debug
    // print(WaiataAux.waiata.name + WaiataAux.waiata.brief);

    //navigate to brief page
    Navigator.of(context).pushNamed('/waiataBrief');
  }
}
