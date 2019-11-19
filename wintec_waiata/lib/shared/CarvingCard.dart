import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/MaraeInfo/MoreInfoButton.dart';

class CarvingCard extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  CarvingCard(
    this.title,
    this.info,
    this.image,
  );

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                tapBodyToCollapse: true,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                header: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    title,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                collapsed: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    info,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        info,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Divider(),
                    Column(
                      children: <Widget>[
                        MoreInfoButton('Learn More',
                            'https://www.wintec.ac.nz/about-wintec/m%C4%81ori-and-pasifika/wintec-marae')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
