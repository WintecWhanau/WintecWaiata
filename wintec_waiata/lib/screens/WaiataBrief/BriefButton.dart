import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

class BriefButton extends StatelessWidget {

  final String title;
  final String page;
  //TODO: Find a better implementation?
  final int index; //used to see which button is pressed

  const BriefButton(this.title, this.page, this.index, {
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 2.0),
        child: RaisedButton(
          color: Colors.black,
          splashColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5.0),
              bottom: Radius.circular(5.0),
            ),
            side: BorderSide(
              color: Colors.yellow
            )
          ),
          onPressed: () {
            switch (index) {
              case 1:
                WaiataAux.waiata.vocal = true;
                break;
              case 2:
                break;
              case 3:
                WaiataAux.waiata.vocal = false;
                break;
              default:
                break;
            }
            Navigator.of(context).pushNamed(page);
          },
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}