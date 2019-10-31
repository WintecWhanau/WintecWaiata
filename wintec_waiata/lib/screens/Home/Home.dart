import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/MaraeHome/MaraeHome.dart';
import 'package:wintec_waiata/shared/Marae_icon.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> screens = [
    //This is where we add our card per screen
    MaraeHome("Waiata"),
    MaraeHome("Marae")
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //removed this because we can return the dynamic app bar per *Home.dart file
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow[800],
      //   title: Text('Waiata'),
      // ),
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text('Waiata'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyIcon.squaremaraeblack_2_,
            ),
            title: Text('Marae'),
          ),
        ],
        currentIndex: _selectedIndex,
        //the hex code for the app theme is #FFD700
        // however flutter does not support parse hex code, so we need to use RGBO
        selectedItemColor: Color.fromRGBO(255, 215, 0, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
