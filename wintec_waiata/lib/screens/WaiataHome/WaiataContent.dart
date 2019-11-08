import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wintec_waiata/shared/Waiata.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class WaiataContent extends StatelessWidget {
  final int index;
  final String title;
  final Color colour;

  WaiataContent(this.index, this.title, this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => initWaiata(context, index), //set null then point to method stops auto trigger
        child: Stack(
          children: <Widget>[
            Card(
              child: Image(
                image: AssetImage("assets/images/image2.jpg"),
                // height: 250.0,
                // width: 92.0,
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //load waiata info for brief through json file
  initWaiata(BuildContext context, int index) async {
    //proper index to start from 0
    index -=1;
    
    //read and convert json
    String jsonContent = await rootBundle.loadString("assets/json/waiata.json");
    List json = jsonDecode(jsonContent);
    
    //initialize static waita from json
    WaiataAux.waiata = new Waiata(json[index]["name"], json[index]["brief"], 
                                  json[index]["maoriWords"], json[index]["englishWords"], 
                                  json[index]["thumbnailPath"], json[index]["vocalPath"], 
                                  json[index]["nonVocalPath"]);
   
    //debug
    // print(WaiataAux.waiata.name + WaiataAux.waiata.brief);
    
    //navigate to brief page
    Navigator.of(context).pushNamed('/waiataBrief');
  }
}