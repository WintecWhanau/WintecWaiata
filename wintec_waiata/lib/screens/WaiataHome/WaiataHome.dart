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
                  WaiataContent(2,"Waikato Te Awa"),
                  WaiataContent(3,"Pupuke Te Hihiri"),
                  WaiataContent(4,"Me Whakaiti Tātou"),
                  WaiataContent(5,"Pua Te Kōwhai"),
                  WaiataContent(6,"I Te Whare Whakapiri"),
                  WaiataContent(7,"waiata 8"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
