import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget{
  @override
  _WelcomePageState createState()=>new _WelcomePageState();
  }
  
class _WelcomePageState extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: new Color.fromARGB(123, 0,123, 1),
      child: Center(
        child: new Text(
          '携程旅行',
          style:TextStyle(
            fontSize:50.0,
            fontWeight:FontWeight.bold,
            color:Colors.white
          )
        ),
      ),
    );
  }
}
