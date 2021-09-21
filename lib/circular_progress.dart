import 'dart:async';

import 'package:flutter/material.dart';

class OniGobu extends StatefulWidget {
  const OniGobu({Key? key}) : super(key: key);

  @override
  _OniGobuState createState() => _OniGobuState();
}

class _OniGobuState extends State<OniGobu> {
  late bool _loading;
  late double _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(14.0),
        child: _loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    strokeWidth: 10,
                    backgroundColor: Colors.yellow,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    value: _progressValue,
                  ),
                  Text('${(_progressValue * 100).round()}%'),
                ],
              )
            : Text("Press button for downloading",
                style: TextStyle(fontSize: 25)),
      ),
    );
  }
  // void _updateProgress() {
  //   const oneSec = const Duration(seconds: 1);
  //   new Timer.periodic(oneSec, (Timer t) {
  //     setState(() {
  //       _progressValue += 0.2;
  //       // we "finish" downloading here
  //       if (_progressValue.toStringAsFixed(1) == '1.0') {
  //         _loading = false;
  //         t.cancel();
  //         return;
  //       }
  //     });
  //   });
  // }
}
