import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
title: new Text('Cart'),
        centerTitle: false,
      ),
        body: new Center(
          child: new Text('My Cart',style: new TextStyle(fontSize: 25.0),),
        ),
    );
  }
}
