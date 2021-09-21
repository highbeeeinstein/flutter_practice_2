import 'package:flutter/material.dart';

class Olu extends StatefulWidget {
  const Olu({Key? key}) : super(key: key);

  @override
  _OluState createState() => _OluState();
}

class _OluState extends State<Olu> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
            Icon(
              Icons.volume_up,
              size: 40,
            ),
            new Expanded(
                child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    divisions: 10,
                    activeColor: Colors.green,
                    inactiveColor: Colors.orange,
                    label: 'Set volume value',
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    })),
          ])),
    );
  }
}
