import 'package:flutter/material.dart';
class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Order Hisotry'),
        centerTitle: false,
      ),
      body: new Center(child: new Text('My Order History',style: new TextStyle(fontSize: 25.0),),),
    );
  }
}