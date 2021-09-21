import 'package:flutter/material.dart';

class Navigation_bottom extends StatefulWidget {
  const Navigation_bottom({Key? key}) : super(key: key);

  @override
  _Navigation_bottomState createState() => _Navigation_bottomState();
}

class _Navigation_bottomState extends State<Navigation_bottom> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _widgetOptions.elementAt(_selectedIndex),
      );
     
    
  }
}
