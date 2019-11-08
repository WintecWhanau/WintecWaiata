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
        title: Text("Marae"),
        //color:
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  //initialize waiata cards. int constructor is index for json assets/json/waiata.json
                  WaiataContent(0,"E Kore Koe E Ngaro"),
                  WaiataContent(1,"He Maimai Aroha nā Tāwhiao"),
                  WaiataContent(2,waiataName),
                  WaiataContent(3,waiataName),
                  WaiataContent(4,waiataName),
                  WaiataContent(5,waiataName),
                  WaiataContent(6,waiataName),
                  WaiataContent(7,waiataName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
