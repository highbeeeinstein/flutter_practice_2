import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_switch.dart';

void main() {
  runApp(Btm_navigation());
}

class Btm_navigation extends StatefulWidget {
  const Btm_navigation({Key? key}) : super(key: key);

  @override
  _Btm_navigationState createState() => _Btm_navigationState();
}

class _Btm_navigationState extends State<Btm_navigation> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("About"),
    )
  ];

  late int currentIndex;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: tabs[_currentIndex],
        // Container(
        //     // homepage(),
        //     ),
        bottomNavigationBar: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          selectedFontSize: 30,
          unselectedFontSize: 20,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("Home"),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              // ignore: deprecated_member_use
              title: Text("Contact"),
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // ignore: deprecated_member_use
              title: Text("Search"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              // ignore: deprecated_member_use
              title: Text("About"),
              backgroundColor: Colors.pink,
            )
          ],
          onTap: (index) {
            setState(
              () => this._currentIndex = index,
            );
          },
        ),
      ),
    );
  }

//   homepage() {
//     switch (currentIndex) {
//       case 0:
//         return The_switch_screen();

//         break;
//       default:
//     }
//   }
// }
}
