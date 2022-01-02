import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  int days = 30;
  String name = "Prateek";
  Widget build(BuildContext context){
    return MaterialApp(
      //  home: HomePage(),
      routes: {
        // "/" : (context) => HomePage(),
        "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homepage: (context) => HomePage(),
      },
    );
    
  }
}