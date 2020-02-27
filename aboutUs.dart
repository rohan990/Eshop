import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('About US'),
        centerTitle: false,
      ),
      body: new Center(child: new Text('About Us',style: new TextStyle(fontSize: 25.0),),),
    );
  }
}
