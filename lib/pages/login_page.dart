import 'package:first_app/pages/home_page.dart';
import 'package:first_app/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget{
     Widget build(BuildContext context) {
       
         return Material(
        //  body: Center(child: Text("Login page",style: TextStyle(
        //    fontSize: 20,
        //    color: Colors.blue, 
        //    fontWeight: FontWeight.bold,
        //  ),),),
        color: Colors.white,
        child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
            
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome to login page",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child:Column(
              children: [
              TextFormField(
               decoration: InputDecoration(
                 hintText: "Enter your name",
                 labelText: "Username",
               ),
            ),
            TextFormField(
              obscureText: true,
               decoration: InputDecoration(
                 hintText: "Enter Password",
                 labelText: "Password",
               ),
            ),
            SizedBox(
              height: 20.0
            ),

            ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, MyRoutes.homepage);

            },

            child: Text("login"),
            style: TextButton.styleFrom(),
            )
              ],
            ),
            )
          ],
        
        )
        
        ),
         );
     }
}