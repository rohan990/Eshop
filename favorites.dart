import 'package:flutter/material.dart';


class Eshopfavorite extends StatefulWidget {
  @override
  _EshopfavoriteState createState() => _EshopfavoriteState();
}

class _EshopfavoriteState extends State<Eshopfavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Favorities'),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My favaourite",style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
