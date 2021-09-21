import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class Radio1 extends StatefulWidget {
  const Radio1(
      {Key? key,
      BestTutorSite? value,
      BestTutorSite? groupValue,
      Null Function(BestTutorSite? value)? onChanged})
      : super(key: key);
  static const String _title = 'Radio Button Example';

  @override
  _Radio1State createState() => _Radio1State();
}

class _Radio1State extends State<Radio> {
  BestTutorSite _site = BestTutorSite.javatpoint;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('www.javatpoint.com'),
          leading: Radio(
            value: BestTutorSite.javatpoint,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.w3school.com'),
          leading: Radio(
            value: BestTutorSite.w3schools,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.tutorialandexample.com'),
          leading: Radio(
            value: BestTutorSite.tutorialandexample,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}

// class BestTutorSite {
//   // static BestTutorSite javatpoint;

//   static var w3schools;

//   static var tutorialandexample;

//   static BestTutorSite javatpoint;
// }