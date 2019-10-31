import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/MaraeHome/MaraeContent.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class MaraeHome extends StatelessWidget {
  MaraeHome();

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
                  MaraeContent(Colors.blue),
                  MaraeContent(Colors.green),
                  MaraeContent(Colors.yellow),
                  MaraeContent(Colors.orange),
                  MaraeContent(Colors.blue),
                  MaraeContent(Colors.red),
                  MaraeContent(Colors.blue),
                  MaraeContent(Colors.green),
                  MaraeContent(Colors.yellow),
                  MaraeContent(Colors.orange),
                  MaraeContent(Colors.blue),
                  MaraeContent(Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
