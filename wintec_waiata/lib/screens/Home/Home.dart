import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/Marae/Marae.dart';
import 'package:wintec_waiata/screens/Waiata/Waiata.dart';


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
    Waiata('Waiata'),
    Marae('Marae')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.music_note),
            title: Text('Waiata'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Marae'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[900],
        onTap: _onItemTapped,
      ),
    );
  }
}