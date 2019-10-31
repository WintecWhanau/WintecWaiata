import 'package:flutter/material.dart';

class ApplicationBar extends AppBar {
  ApplicationBar({Key key, Widget title, Type color})
      : super(
          key: key,
          title: title,
          centerTitle: true,
          actions: <Widget>[
            //this needs to be a PopupMenuButton
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
            // PopupMenuButton(
            //   icon: Icon(Icons.more_vert),
            //   onSelected: _SelectedItem,
            //   itemBuilder: (BuildContext) {
            //     return Overflow.overflowItems.map((String overflowItem) {

            //     }
            //   },
            // )
          ],
        );

  // void _SelectedItem(String choices) {
  //   print('Test');
  // }
}
