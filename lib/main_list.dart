import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'Component/friend_list.dart';
// 入口
void main() => runApp(MyApp());

// 顶层组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: CustomListView(),
    );
  }
}
class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: getListView1(),
    );
  }
  // 方式1
  // getListView1(){
  //   return new ListView(
  //     padding: EdgeInsets.all(10),
  //     children: <Widget>[
  //       Text('data11'),
  //       Text('data1'),
  //       Text('data1'),
  //       Text('data1'),
  //       Text('data1')
  //     ],
  //   );
  // }
  // 方式2
  // getListView1(){
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context,int index){
  //       return Text('$index');
  //       // return ListTile(
  //       //   title: Text(('$index'))
  //       // );
  //     },
  //   );
  // }
  // 方式3
  getListView1(){
     _loadData();
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (BuildContext context,int index){
        return Text('$index');
      },
      separatorBuilder: (BuildContext context,int index){
        return Divider(
          color: Colors.red,
        );
      }
    );
  }
  var httpClient=new HttpClient();
  var url = 'https://randomuser.me/api/?results=30';  

  _loadData() async{
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var result = await response.transform(utf8.decoder).join();
    print(result);
    httpClient.close();
  }

}
