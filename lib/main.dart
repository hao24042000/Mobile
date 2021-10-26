import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nhom2_hao/Product.dart';
import 'package:nhom2_hao/Products1.dart';
import 'package:nhom2_hao/register.dart';

import 'listview_advanced.dart';
import 'listview_basic.dart';
import 'login.dart';
import 'myapp2.dart';


void main() {
  runApp(MyApp7());
}

// class MyApp extends StatelessWidget {
//   const MyApp() : super();
//
//   Widget createColumn(String data, IconData icon, Color color) {
//     double size = 25;
//     return Column(
//       children: [
//         Icon(icon, textDirection: TextDirection.ltr, size: size, color: color),
//         Text(
//           data,
//           textDirection: TextDirection.ltr,
//           style: TextStyle(color: color, fontSize: size),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: Colors.black),
//       padding: EdgeInsets.all(50),
//       child: Center(
//         child: Column(
//           children: [
//
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30),
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30)
//                 ),
//               ),
//               padding: EdgeInsets.all(5),
//               width: 3000,
//               height: 200,
//               child: Text(
//                 "Hello, Xin chào các bạn",
//                 textDirection: TextDirection.ltr,
//                 style: TextStyle(
//                   fontSize: 30,
//
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(20),)
//               ),
//               height: 60,
//               child: Row(
//                 textDirection: TextDirection.ltr,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//
//                   createColumn("Call", Icons.call, Colors.blue),
//                   createColumn("Adress", Icons.place, Colors.red),
//                   createColumn("Share", Icons.share, Colors.amber),
//                   createColumn("Buy", Icons.add_shopping_cart, Colors.pink)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

