import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/CarvingCard.dart';
import 'package:wintec_waiata/shared/Info.dart';

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
          CarvingCard(InfoString.memorialPillar, InfoString.memorialPillarDesc,
              InfoString.memorialPillarImage),
          CarvingCard(
              InfoString.pillar, InfoString.pillarDesc, InfoString.pillarImage),
          CarvingCard(
              InfoString.internalWharenui1,
              InfoString.internalWharenuiDesc1,
              InfoString.internalWharenuiDescImage1),
          CarvingCard(
              InfoString.internalWharenui,
              InfoString.internalWharenuiDesc,
              InfoString.internalWharenuiDescImage),
          CarvingCard(
              InfoString.gate, InfoString.gateDesc, InfoString.gateImage),
          CarvingCard(InfoString.doorwayLintels, InfoString.doorwayLintelsDesc,
              InfoString.doorwayLintelsImage),
          CarvingCard(InfoString.windowLintels, InfoString.windowLintelsDesc,
              InfoString.windowLintelsImage),
        ],
      ),
    );
  }
}
