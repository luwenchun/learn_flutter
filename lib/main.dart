import 'package:flutter/material.dart';
import 'package:flutter_demo/View/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color.fromARGB(255, 0, 215, 198),
        primaryIconTheme: IconThemeData(color: Colors.white),
        accentColor: Colors.cyan[300]
      ),
      home: WelcomePage()
      
    );
  }
}
