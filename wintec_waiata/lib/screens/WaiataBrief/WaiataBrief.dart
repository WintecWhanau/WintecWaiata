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
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage(WaiataAux.waiata.thumbnailPath),  
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
              WaiataAux.waiata.englishWords
            ),
          ),
        ],
      )
    );
  }

  goWaiata(int index){
    print(index);
  }
}