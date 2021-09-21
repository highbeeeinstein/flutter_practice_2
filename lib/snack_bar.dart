import 'package:flutter/material.dart';

class Snoke extends StatefulWidget {
  const Snoke({Key? key}) : super(key: key);

  @override
  _SnokeState createState() => _SnokeState();
}

class _SnokeState extends State<Snoke> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text(
          'Show SnackBar',
          style: TextStyle(fontSize: 25.0),
        ),
        textColor: Colors.white,
        color: Colors.redAccent,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.grey,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Hey! This is a SnackBar message.'),
            duration: Duration(seconds: 15),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
