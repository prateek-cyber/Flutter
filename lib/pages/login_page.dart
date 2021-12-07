import "package:flutter/material.dart";

class LoginPage extends StatelessWidget{
     Widget build(BuildContext context) {
       
         return Scaffold(
         body: Center(child: Text("Login page",style: TextStyle(
           fontSize: 20,
           color: Colors.blue, 
           fontWeight: FontWeight.bold,
         ),),),
        
       );
     }
}