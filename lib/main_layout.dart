import 'package:flutter/material.dart';
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
      home: Container_p3(),
    );
  }
}
// class Container_p1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//       ),
//     );
//   }
// }

// class Container_p2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Row(
//       children: <Widget>[
//         Container(
//           margin: EdgeInsets.all(20),
//           width: 50,
//           height: 50,
//           color: Colors.red,
//         ),
//         Container(
//           margin: EdgeInsets.all(20),
//           // width: 50,
//           // height: 50,
//           color: Colors.red,
//           child: Column(
//             children: <Widget>[
//               Text('文本11',
//               style: TextStyle(
//                 fontSize: 30.0,
//                 color: Colors.black
//               ),),
//               Text('文本2'),
//               Text('文本3'),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(20),
//           width: 50,
//           height: 50,
//           color: Colors.red,
//         )
//       ],
//     );
//   }
// }

class Container_p3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Text('data',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue
          ),
        ),
        // alignment: Alignment.center,
        alignment: Alignment(-0.5,0),
      ),
    );
  }
}

// class Container_p3 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         color: Colors.red,
//         child: Container(
//           color: Colors.blue,
//           child: Text('这个是字符串'),
//           // constraints: BoxConstraints(maxHeight: 100,maxWidth: 150),
//           constraints: BoxConstraints.expand()
//         ),
//       ),
//     );
//   }
// }
// class Container_p3 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         // color: Colors.red,
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.orange,
//               offset: Offset(10,10),
//               blurRadius: 5
//             )
//           ],
//           gradient: LinearGradient(
//             colors: [Colors.red,Colors.yellow]
//           ),
//           // borderRadius: BorderRadius.all(Radius.circular(20)),
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20)
//           )
//         ),
//         child: FlutterLogo(
//           size: 250.0,
//         ),
//       ),
//     );
//   }
// }

// class Container_p3 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // return Center(
//     //   child: Container(
//     //     child: Container(
//     //       color: Colors.red,
//     //       child: FlutterLogo(
//     //         size: 250.0,
//     //       ),
//     //       transform:Matrix4.rotationZ(0.9),
//     //     ),
//     //   ),
//     // );

//     return Center(
//       child: Container(
//         color: Colors.red,
//         child: Transform.scale(
//           scale: 1.5,
//           child: FlutterLogo(
//             size: 250.0,
//           ),
//         )
        
//       ),
//     );
//   }
// }

// class Container_p3 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         color: Colors.red,
//         child: Column(
//           children: <Widget>[
//             new Image.asset('images/1.jpg'),
//             new Image.network('https://www.baidu.com/img/bd_logo1.png',
//             width: 150,
//             height: 120),
//             new FadeInImage.assetNetwork(//图片懒加载
//               placeholder: 'images/1.jpg',
//               image:'https://www.baidu.com/img/bd_logo1.png' ,
//               width: 150,
//               fit: BoxFit.fitWidth,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

