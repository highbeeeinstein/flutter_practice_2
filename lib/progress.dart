import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  late bool _loading;
  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: _loading
            ? LinearProgressIndicator()
            : Text("Press button for downloading",
                style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
