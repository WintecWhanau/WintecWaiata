import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/CarvingCard.dart';

class Carvings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          "Te Kōpū Mānia o Kirikiriroa info",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CarvingCard(
              'This is the waka maumahara (memorial pillar) which faces Taupiri mountain. At the top of the waka maumahara stands the native kaahu (hawk) representing the Māori Queen Dame Te Atairangikaahu.',
              'edfewfcewf',
              'e'),
        ],
      ),
    );
  }
}
