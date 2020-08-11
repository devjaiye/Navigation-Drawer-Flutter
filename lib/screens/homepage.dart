import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './otherpage.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{

  String mainProfilePic = "url";
  String otherProfilePic = "url";

  void switchUser(){
    String backupString = mainProfilePic;
    this.setState(() {
      mainProfilePic = otherProfilePic;
      otherProfilePic = backupString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"),),
      drawer: new Drawer(
        child:  ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Lorem Ipsum"),
            accountEmail: Text("ipsum@gmail.com"),
            currentAccountPicture: GestureDetector(
               child: CircleAvatar(
                 //backgroundImage: NetworkImage(mainProfilePic),
               ),
              onTap: () => print("Clicked")
            ),

            otherAccountsPictures: <Widget>[
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                onTap: ()=> switchUser(),
              ),
            ],
            decoration: BoxDecoration(
//              image: DecorationImage(
            //fit: BoxFit.fill,
//                  image: NetworkImage("url")
//              )
            color: Colors.teal,
            ),
          ),
           ListTile(
            title: Text("Home Page"),
             trailing: Icon(Icons.ac_unit),
             onTap: () {
              Navigator.of(context).pop();
               Navigator.of(context).push(new MaterialPageRoute(builder:
                   (BuildContext context) => OtherPage("Home Page"),
               ));
             }
          ),

          ListTile(
            title: Text("About Page"),
            trailing: Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => OtherPage("About Page"),
                ));
              }
          ),

          ListTile(
            title: Text("Settings Page"),
            trailing: Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => OtherPage("Settings Page"),
                ));
              }
          ),
          Divider(thickness: 1.0,),
          ListTile(
            title: Text("Close"),
            trailing: Icon(Icons.cancel),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
        )
    )
    );
  }
}