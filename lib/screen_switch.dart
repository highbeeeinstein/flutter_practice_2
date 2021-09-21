import 'package:flutter/material.dart';
class The_switch_screen extends StatefulWidget {
  const The_switch_screen({ Key? key }) : super(key: key);

  @override
  _The_switch_screenState createState() => _The_switch_screenState();
}

class _The_switch_screenState extends State<The_switch_screen> {
  bool isSwitched = false;  
  var textValue = 'Switch is OFF';  
  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'Switch Button is ON';  
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'Switch Button is OFF';  
      });  
      print('Switch Button is OFF');  
    }  
  }  
  @override

  Widget build(BuildContext context) {
    return Column(  
        mainAxisAlignment: MainAxisAlignment.center,  
        children:[ Transform.scale(  
            scale: 2,  
            child: Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Colors.blue,  
              activeTrackColor: Colors.yellow,  
              inactiveThumbColor: Colors.redAccent,  
              inactiveTrackColor: Colors.orange,  
            )  
          ),  
          Text('$textValue', style: TextStyle(fontSize: 20),)  
        ]);  
  }
}