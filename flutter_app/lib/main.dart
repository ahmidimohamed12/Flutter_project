import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home : Scaffold(
        appBar: AppBar(
          title: Text("app nador"),
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
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),

            ),
          ListTile(
            title: Text("Home"),
            leading: Icon(
              Icons.home
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
              title: Text("Cours"),
              leading: Icon(
                Icons.book
              ),

            )
          ],
        )

        ),

      ),
    );
  }
}


