import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:eshopflutter/itemdetails.dart';
import 'package:eshopflutter/tools/stores.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'orderHistory.dart';
import 'profileSettings.dart';
import 'delivery.dart';
import 'aboutUs.dart';
import 'login.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: new Text('Eshop'),
        actions: <Widget>[

          new IconButton(icon: new Icon(Icons.favorite,color: Colors.white,),
              onPressed:(){
              Navigator.of(context).push(new CupertinoPageRoute(builder: (BuildContext context){
                return new Eshopfavorite();
              }));
              }

          ),
      new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.chat,color: Colors.white,), onPressed:() {
            Navigator.of(context).push(
                new CupertinoPageRoute(builder: (BuildContext context) => new Messages()
                ));
          }),
          new CircleAvatar(
            radius:10.0,
            backgroundColor: Colors.redAccent,
            child: new Text("0",style: new TextStyle(

            ),),
          )
        ],
      )
        ],
      ),
      body:new Center(
        child:new Column(
          children: <Widget>[
            new Flexible(
                child:new GridView.builder(gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: storeItems.length,
                  itemBuilder: (BuildContext context,int index){

                  return new GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new ItemDetails(
                            itemImage: storeItems[index].itemImage,
                            itemName: storeItems[index].itemName,
                            itemPrice: storeItems[index].itemPrice,
                            itemRating: storeItems[index].itemRating,

                          )));


                      },

                    child: new Card(
                      child:Stack(
                         alignment: FractionalOffset.topLeft,


                          children: <Widget>[

                      new Stack(
                        alignment: FractionalOffset.bottomCenter,
                      children: <Widget>[
                        new Container(
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fitWidth,
                                image:new NetworkImage(storeItems[index].itemImage))),
                        ),
                       new Container(
                         height:35.0,
                           alignment: Alignment.bottomCenter,
                           padding: const EdgeInsets.all(6.0),
                         color: Colors.black.withAlpha(100),
                         child:new  Padding(

                    padding:const EdgeInsets.all(6.0),

                            child:new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                    new Text(
                    "${storeItems[index].itemName}",
                    style: new TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                    color: Colors.white),
                    ),
                    new Text(
                    "₹${storeItems[index].itemPrice}",
                    style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                    ),

                      ],
                    ),
                  )
                       ),
                      ],
                    ),
                      new Container(
                        height:30.0,
                        width: 50.0,
                        decoration: new BoxDecoration(
                        color: Colors.white,
                          borderRadius: new BorderRadius.only(topRight: new Radius.circular(5.0),
                          topLeft: new Radius.circular(5.0 ))
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Icon(Icons.star,color: Colors.blue,size: 20.0,),
                            new Text("${storeItems[index].itemRating}",style: new TextStyle(color: Colors.redAccent),)
                          ],
                        ),
                      )
                  ],
                  ),),
                  );
                  },),
            )
          ],

        )
    ),
      floatingActionButton:new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(onPressed:() {
    Navigator.of(context).push(
    new CupertinoPageRoute(builder: (BuildContext context) => new Cart()));
    },
            child: new Icon(Icons.shopping_cart),

          ),
          new CircleAvatar(
            radius:10.0,
            backgroundColor: Colors.redAccent,
            child: new Text("0",style: new TextStyle(

            ),),
          ),
      ],
    ),
      drawer: new Drawer(
        child:  Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Rohan Thakur"),
            accountEmail: new Text("rohantest@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Icon(Icons.person),
            ),
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(Icons.history,color: Colors.white,size: 20,),
            ),
            title: new Text('Order History'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new OrderHistory()));
            },
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(Icons.notifications,color: Colors.white,size: 20,),
            ),
            title: new Text('Order notification'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new Notifications()));
            },
          ),
         new Divider(),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(Icons.person,color: Colors.white,size: 20,),
            ),
            title: new Text('Profile Setting'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new ProfileSettings()));
            },
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(Icons.home,color: Colors.white,size: 20,),
            ),
            title: new Text('Delivery Address'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new Delivery()));
            },
          ),
          new Divider(),
          new ListTile(
            trailing: new CircleAvatar(
              child: new Icon(Icons.help,color: Colors.white,size: 20,),
            ),
            title: new Text('About Us'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new Aboutus()));
            },
          ),
          new ListTile(
            trailing: new CircleAvatar(
              child: new Icon(Icons.input,color: Colors.white,size: 20,),
            ),
            title: new Text('Login'),
            onTap: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) => new Login()));
            },
          ),

        ],
        ),
      ),
    );
  }
}
