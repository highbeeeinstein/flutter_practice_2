import 'package:flutter/material.dart';

class Check_box extends StatefulWidget {
  const Check_box({Key? key}) : super(key: key);

  @override
  _Check_boxState createState() => _Check_boxState();
}

class _Check_boxState extends State<Check_box> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
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
                  this.valuesecond = value!;
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
