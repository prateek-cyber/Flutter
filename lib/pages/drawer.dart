import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      
             child: Container(
               color: Colors.blue,
                            child: ListView(
                 children: [
                   DrawerHeader(
                     
                     padding: EdgeInsets.zero,
                     child: UserAccountsDrawerHeader(
                       margin: EdgeInsets.zero,
                     //  decoration: BoxDecoration(color: Colors.deepOrange),
                     accountName: Text("Your Interests"),
                      accountEmail: Text("prateekghanti.cs19@bmsce.ac.in"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.png")),
                   ),),
                   ListTile(
                     leading: Icon(CupertinoIcons.home, color: Colors.white),
                     title: Text("Home"),
                   ),
                   ListTile(
                     leading: Icon(CupertinoIcons.bitcoin, color: Colors.white),
                     title: Text("Clubs"),
                   ),
                   ListTile(
                     leading: Icon(CupertinoIcons.phone, color: Colors.white),
                     title: Text("Contact Us"),
                   )
                 ]
               ),
             ),
             
           
      
    );
  }
}