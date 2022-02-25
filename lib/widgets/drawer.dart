import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.boloji.com/articlephotos/a52519.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          children: [
            
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                
                accountName: Text("Harsh Gupta",textScaleFactor: 1.2 ,),
                accountEmail: Text("harsh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",textScaleFactor: 1.3,
              style: TextStyle(color:Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",textScaleFactor: 1.3,
              style: TextStyle(color:Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("mail me for query",textScaleFactor: 1.3,
              style: TextStyle(color:Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
