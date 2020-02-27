import 'package:flutter/material.dart';

import 'package:eshopflutter/userScreens/myHomePage.dart';

void main()=>
  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Eshop",
      theme:new ThemeData(
        primarySwatch: Colors.blue,
      ),
home: new MyHomePage(),
    );
  }
}



