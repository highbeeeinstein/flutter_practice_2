import 'package:flutter/material.dart';

class Alaba extends StatefulWidget {
  const Alaba({Key? key}) : super(key: key);

  @override
  _AlabaState createState() => _AlabaState();
}

class _AlabaState extends State<Alaba> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'Checkbox without Header and Subtitle: ',
              style: TextStyle(fontSize: 17.0),
            ),
            Checkbox(
              checkColor: Colors.greenAccent,
              activeColor: Colors.red,
              value: this.valuefirst,
              onChanged: (bool? value) {
                setState(() {
                  this.valuefirst = value!;
                });
              },
              // onChanged: (bool value) {
              //   setState(() {
              //     this.valuefirst = value;
              //   });
              // },
            ),
            Checkbox(
              value: this.valuesecond,
              onChanged: (bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
              // onChanged: (bool value) {
              //   setState(() {
              //     this.valuesecond = value;
              //   });
              // },
            ),
          ],
        ),
      ],
    ));
  }
}
