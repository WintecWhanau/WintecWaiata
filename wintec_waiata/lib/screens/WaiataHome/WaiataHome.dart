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
                  WaiataContent(waiataName, Colors.blue),
                  WaiataContent(waiataName, Colors.green),
                  WaiataContent(waiataName, Colors.yellow),
                  WaiataContent(waiataName, Colors.orange),
                  WaiataContent(waiataName, Colors.blue),
                  WaiataContent(waiataName, Colors.red),
                  WaiataContent(waiataName, Colors.blue),
                  WaiataContent(waiataName, Colors.green),
                  WaiataContent(waiataName, Colors.yellow),
                  WaiataContent(waiataName, Colors.orange),
                  WaiataContent(waiataName, Colors.blue),
                  WaiataContent(waiataName, Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
