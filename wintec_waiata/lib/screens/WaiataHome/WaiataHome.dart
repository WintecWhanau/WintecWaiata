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
                  //change waiata name to json element
                  WaiataContent(1,waiataName, Colors.blue),
                  WaiataContent(2,waiataName, Colors.green),
                  WaiataContent(3,waiataName, Colors.yellow),
                  WaiataContent(4,waiataName, Colors.orange),
                  WaiataContent(5,waiataName, Colors.blue),
                  WaiataContent(6,waiataName, Colors.red),
                  WaiataContent(7,waiataName, Colors.blue),
                  WaiataContent(8,waiataName, Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
