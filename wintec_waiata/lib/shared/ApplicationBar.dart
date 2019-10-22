import 'package:flutter/material.dart';

class ApplicationBar extends AppBar {

  ApplicationBar({Key key, Widget title}) : super(
    key: key, 
    title: title,
    backgroundColor: Colors.yellow[600],
    centerTitle: true,
    actions: <Widget>[
      //this needs to be a PopupMenuButton
      IconButton(
        icon: Icon(Icons.more_vert),
      )
      // PopupMenuButton(
      //   icon: Icon(Icons.more_vert),
      //   onSelected: _SelectedItem,
      //   itemBuilder: (BuildContext) {
      //     return Overflow.overflowItems.map((String overflowItem) {
            
      //     }
      //   },
      // )
    ]
  );

  void _SelectedItem(String choices){
    print('Test');
  }
}