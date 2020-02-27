import 'package:flutter/material.dart';



class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Messages'),
        centerTitle: false,
              ),
      body: new Center(child: new Text('My Messeages',style: new TextStyle(fontSize: 25.0),),),
    );
  }
}
