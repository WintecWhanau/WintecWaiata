import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

import 'WaiataContent.dart';

class WaiataHome extends StatelessWidget {
  final String waiataName = "Waiata";

  WaiataHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "Waiata",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  //TODO: Add in waiata videos

                  //initialize waiata cards. int constructor is index for json assets/json/waiata.json
                  WaiataContent(
                    0, 
                    "E Kore Koe E Ngaro", 
                    "assets/images/waiata/WaiataIndex0.jpg"
                  ),
                  WaiataContent(
                    1, 
                    "He Maimai Aroha nā Tāwhiao",
                    "assets/images/waiata/WaiataIndex1.jpg"
                  ),
                  WaiataContent(
                    2, 
                    "Waikato Te Awa", 
                    "assets/images/waiata/WaiataIndex2.jpg"
                  ),
                  WaiataContent(
                    3, 
                    "Tutira mai nga iwi", 
                    "assets/images/waiata/WaiataIndex3.jpg"
                  ),
                  WaiataContent(
                    4, 
                    "Pupuke Te Hihiri", 
                    "assets/images/waiata/WaiataIndex4.jpg"
                  ),
                  WaiataContent(
                    5, 
                    "I Te Whare Whakapiri", 
                    "assets/images/waiata/WaiataIndex5.jpg"
                  ),
                  WaiataContent(
                    6, 
                    "Pua Te Kōwhai", 
                    "assets/images/waiata/WaiataIndex6.jpg"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
