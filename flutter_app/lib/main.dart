import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Persone.dart';

void main() {
  Persone p = Persone();
  p.age = 10;
  p.name = "ahmidi";
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutriana',
      home : Scaffold(
        appBar: AppBar(
          title: Text("Nutriana Learn"),
          backgroundColor: Colors.blue ,//Color In AppBar
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_box), onPressed: (){}),

          ],
   // centerTitle: true,
          elevation: 10,
          //leading: IconButton(icon:Icon(Icons.search),onPressed: (){}),
        titleSpacing: 50,
          brightness: Brightness.light,
        ),
        drawer : Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(accountEmail:Text("ahmidinador123@gmail.com"),
              accountName: Text("ahmidi"),
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person
                ),
                foregroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                backgroundBlendMode: BlendMode.darken
              ),

            ),
          ListTile(
            title: Text("Profile"
            ,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20
              ),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          )
          ,
          ListTile(
            title: Text("Home",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),

            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            dense: true,
            onLongPress: ()=>{
              print("ahmidi press")
            },
            onTap: ()=>{
              print("ahmidi tap")
            },

          ),
            ListTile(
              title: Text("Cours",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
                ) ,
              ),
              leading: Icon(
                Icons.book,
                color: Colors.blue,

              ),

            ),
            ListTile(
              title: Text("Setting",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),

              ),
              leading: Icon(Icons.settings,
              color: Colors.blue,
              ),
            )
          ],
        )

        ),
        body: Column(
          children: <Widget>[
          SizedBox(
          height: 150.0,
          width: double.infinity,
          child: Carousel(

            images: [
              NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          //    ExactAssetImage("assets/images/LaunchImage.jpg"),
            ],
          ),
        ),



          ] ,
        )
      ),
    );
  }
}


