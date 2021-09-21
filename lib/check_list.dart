import 'package:flutter/material.dart';

class Check_list extends StatefulWidget {
  const Check_list({Key? key}) : super(key: key);

  @override
  _Check_listState createState() => _Check_listState();
}

class _Check_listState extends State<Check_list> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: new EdgeInsets.all(22.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              'Checkbox with Header and Subtitle',
              style: TextStyle(fontSize: 20.0),
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.alarm),
              title: const Text('Ringing at 4:30 AM every day'),
              subtitle: Text('Ringing after 12 hours'),
              value: this.valuefirst,
              onChanged: (bool? value) {
                setState(() {
                  this.valuefirst = value!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: const Icon(Icons.alarm),
              title: const Text('Ringing at 5:00 AM every day'),
              subtitle: Text('Ringing after 12 hours'),
              value: this.valuesecond,
              onChanged: (bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
          ],
        ));
  }
}
