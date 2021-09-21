import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Slider_Image.dart';
// import 'package:flutter_application_1/Bar_snak.dart';
import 'package:flutter_application_1/circular_progress.dart';
// import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/table_data.dart';
// import 'package:flutter_application_1/navigation.dart';
// import 'package:flutter_application_1/screen_switch.dart';
// import 'package:flutter_application_1/slider.dart';
// import 'package:flutter_application_1/tool.dart';
// import 'package:flutter_application_1/progress.dart';
// import 'package:flutter_application_1/radio.dart';
// import 'package:flutter_application_1/yello.dart';
// import 'package:flutter_application_1/radio.dart';
// import 'package:flutter_application_1/abas.dart';
// import 'package:flutter_application_1/wale.dart';
// import 'package:flutter_application_1/bass.dart';

void main() {
  runApp(MyApp());
  // runApp(OgaAde());
  // runApp(MyHomePage());
  // var app = MyHomePage(title: '',),
  // runApp(Mine());
}

class MyApp extends StatelessWidget {
  // int _selectedIndex = 0;
  int _currentIndex = 0;

  // late int _currentIndex;
  // ignore: unused_field
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Search Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Profile Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  // ];
  // This widget is the root of your application.
  // late bool _loading;
  // late double _progressValue;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  int index = 0;
  @override
  // void initState() {
  //   _loading = false;
  //   _progressValue = 0.0;
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,

      // ),
      theme: new ThemeData(
        primaryColor: const Color(0xFF43a047),
        accentColor: const Color(0xFFffcc00),
        primaryColorBrightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
        ),
        // body: Alaba(),
        // body: Check_list(),
        // body: Radio(),
        // body: Radio1(),
        // body: Milo(),
        // body: ProgressBar(),
        // body: Snoke(),
        // body: Ade(),
        // body: Olu(),
        // body: Slid(),
        // body: Center(child: The_switch_screen()),
        // body: Navigation_bottom(),
        // body: Container(),
        // body: Tabili(),
        body: Data_table(),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex = _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // ignore: deprecated_member_use
                title: Text('Home'),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                // ignore: deprecated_member_use
                title: Text('Search'),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud),
                // ignore: deprecated_member_use
                title: Text("About")),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                // ignore: deprecated_member_use
                title: Text("Contact"))
          ],
          // onTap: (index){
          //     setState(() =>
          //     _ = index;
          //     )
          // }
          // type: BottomNavigationBarType.shifting,
          // // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          // iconSize: 40,
          // onTap: _onItemTapped,
          // onTap: (index){
          //   setState(() {
          //     _currentIndex = index;
          //   }

          //    );
          //  }
          // elevation: 5
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       _loading = !_loading;
        //     });
        //   },
        //   tooltip: 'Download',
        //   child: Icon(Icons.cloud_download),
        // ),
      ),
    );
  }

  void setState(Null Function() param0, int i) {}
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _loading;
  // late double _progressValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: OniGobu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.cloud_download),
      ),
    );
  }

  void _updateProgress() {
    //  late bool _loading;
    late double _progressValue;
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}

class OgaAde extends StatefulWidget {
  const OgaAde({Key? key}) : super(key: key);

  @override
  _OgaAdeState createState() => _OgaAdeState();
}

class _OgaAdeState extends State<OgaAde> {
  late bool _loading;
  late double _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
        ),
        // body: Alaba(),
        // body: Check_list(),
        // body: Radio(),
        // body: Radio1(),
        // body: Milo(),
        // body: ProgressBar(),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(
                        backgroundColor: Colors.cyanAccent,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.red),
                        value: _progressValue,
                      ),
                      Text('${(_progressValue * 100).round()}%'),
                    ],
                  )
                : Text("Press button for downloading",
                    style: TextStyle(fontSize: 25)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          tooltip: 'Download',
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    late bool _loading;
    late double _progressValue;
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}

void setState(Null Function() param0) {}

// void setState(Null Function() param0) {
// }

class Mine extends StatefulWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  late bool _loading;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // title: Text(widget.title),
            ),
        body: OniGobu(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    //  late bool _loading;
    late double _progressValue;
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}
