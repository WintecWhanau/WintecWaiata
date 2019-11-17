import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/OverflowList.dart';

class ApplicationBar extends AppBar {
  ApplicationBar({
    Key key,
    Widget title,
    BuildContext context // this parameter is required for overflow navigation
  }): super(
    key: key,
    title: title,
    centerTitle: true,
    actions: < Widget > [
      PopupMenuButton( //overflow
        icon: Icon(Icons.more_vert),
        onSelected: (value) {
          if(value.compareTo('Home') == 0){
            Navigator.popUntil(context, ModalRoute.withName('/home'));
            // print("Home"); //debugging
          }
          else if(value.compareTo("About us") == 0){
            Navigator.of(context).pushNamed('/protocols'); //temp route until about us is implemented
            // print("About us"); //debugging
          }
          else{
            return;
          }
        },
        itemBuilder: (BuildContext context) {
          return OverflowList.items.map((link) { // creates an item per list item in OverflowList
            return PopupMenuItem(
              value: link,
              child: Text(link),
            );
          }).toList();
        },
      ),
    ],
  );
}