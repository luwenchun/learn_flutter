import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          leading: Text('返回'),
          actions: <Widget>[
            Text('actions1'),
            Text('actions2')
          ],
          centerTitle: true,
        ),
         body: Center(
          child: Text('THIS IS BODY'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('首页')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('主题')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('我的')
            ),
          ]
        ),
         drawer: Drawer(
          // elevation: 0
          child: Center(
            // child: Text('drawer'),//Navigator.pop(context);
            child: WelcomePage(),
          ),
        ),
      ),
      
    );
  }
}
