import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Login Page'),
        centerTitle: false,
      ),
      body: new Center(child: new Text('Login page',style: new TextStyle(fontSize: 25.0),),),
    );
  }
}
