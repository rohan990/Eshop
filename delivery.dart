import 'package:flutter/material.dart';


class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Delivery Address'),
        centerTitle: false,
      ),
      body: new Center(child: new Text('Delivery Address',style: new TextStyle(fontSize: 25.0),),),
    );
  }
}
