import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
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