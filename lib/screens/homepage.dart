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

  String mainProfilePic = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  String otherProfilePic = "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  //.. Switching Profile using multiple Accounts

  /*void switchUser(){
    String backupString = mainProfilePic;
    this.setState(() {
      mainProfilePic = otherProfilePic;
      otherProfilePic = backupString;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: new Drawer(
        child:  ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("johndoe@email.com"),
            currentAccountPicture: GestureDetector(
               child: CircleAvatar(
                 backgroundImage: NetworkImage(mainProfilePic),
               ),
              onTap: () => print("Current User")
            ),

           //.. This line of code provides the usage of multiple accounts
           /* otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: ()=> switchUser(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(otherProfilePic)
                ),
              ),
            ], */

            decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
                  image: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20190828/pngtree-dark-vector-abstract-background-image_302715.jpg")
             ),
            ),
          ),
           ListTile(
            title: Text("Home Page"),
             trailing: Icon(Icons.menu),
             onTap: () {
              Navigator.of(context).pop();
               Navigator.of(context).push(new MaterialPageRoute(builder:
                   (BuildContext context) => OtherPage("Home Page"),
               ));
             }
          ),

          ListTile(
            title: Text("About Page"),
            trailing: Icon(Icons.info),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => OtherPage("About Page"),
                ));
              }
          ),

          ListTile(
            title: Text("Settings Page"),
            trailing: Icon(Icons.security),
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