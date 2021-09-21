import 'package:flutter/material.dart';

class Ade extends StatefulWidget {
  const Ade({Key? key}) : super(key: key);

  @override
  _AdeState createState() => _AdeState();
}

class _AdeState extends State<Ade> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
                waitDuration: Duration(seconds: 1),
                showDuration: Duration(seconds: 2),
                padding: EdgeInsets.all(5),
                height: 35,
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                message: 'My Account',
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {  },
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
                message: 'My Account',
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                )),
          )
        ]);
  }
}
