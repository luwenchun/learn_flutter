import 'package:flutter/material.dart';
import 'Component/friend_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/home':(BuildContext context)=>HomePage(),
        './detail':(BuildContext context)=>DeatilPage()
      },
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color:Colors.red,
      child:Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, './detail');
          },
          child: Text(
            '点击跳转详情',
            textDirection:TextDirection.rtl,
            style:TextStyle(
              fontSize:20,
              color:Colors.white,
              fontStyle:FontStyle.italic
            )
          ),
        ),
      )
    );
  }
}


class DeatilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blue,
      child: Center(
        child: GestureDetector(
          onTap: (){
             Navigator.pushNamed(context, './home');
            // Navigator.pop(context);
            // Navigator.popAndPushNamed(context, routeName)
          },
          child: Text(
            '点击跳转首页',
             // textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    );
  }
}