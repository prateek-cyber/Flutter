import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     const text = Text("Item 1");
          return Scaffold(
           appBar: AppBar(title: Text("Catalog"),),
           body: Center(
             child: Text("welcome to catalog page"),
             
             ),
     
           drawer: const Drawer(child: text),
    );

    
  }
}