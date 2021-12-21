import 'package:first_app/pages/home_page.dart';
import 'package:first_app/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext) async{
    if(_formkey.currentState!.validate()){
     setState(() {

                     changeButton = true;
                   });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.homepage);
                  setState(() {
                    changeButton = false;
                  });
  }
  }
     Widget build(BuildContext context) {
       
         return Material(
        //  body: Center(child: Text("Login page",style: TextStyle(
        //    fontSize: 20,
        //    color: Colors.blue, 
        //    fontWeight: FontWeight.bold,
        //  ),),),
        color: Colors.white,
        child: SingleChildScrollView(
        child: Form(
          key: _formkey,
                  child: Column(
            children: [
              Image.asset("assets/images/crewup.jpeg",fit: BoxFit.cover,),
              
              SizedBox(
                height: 20.0,
              ),
              Text("Welcome to login page $name",style: TextStyle(
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
                 validator: (value){
                   if(value!.isEmpty){
                     return "Username cannot be empty";
                   }
                   return null;
                 },
                 onChanged: (value){
                   name = value;
                   setState(() {
                     
                   });
                 },

              ),
              TextFormField(
                obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter Password",
                   labelText: "Password",
                 ),
                 validator: (value){
                   if(value!.isEmpty){
                     return "Password cannot be empty";
                   }
                   return null;
                 },
                 ), 
                   
                 
              
              
                  
              SizedBox(
                height: 35.0
              ),

               InkWell(
                 onTap: () => moveToHome(context),
                   child: AnimatedContainer(
                     duration: Duration(seconds: 1),
                   height: 40,
                   width: changeButton?50: 100,
                   
                  //  color: Colors.purple,
                   child: Center(child: changeButton? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     
                   ),),
                   
                   ),
                   decoration: BoxDecoration(
                     color: Colors.deepPurple,
                    //  shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                     borderRadius: BorderRadius.circular(changeButton?40:10),
                   ),
                 ),
               ),

              // ElevatedButton(onPressed: (){
              //    Navigator.pushNamed(context, MyRoutes.homepage);

              // },

              // child: Text("login"),
              // style: TextButton.styleFrom(),
              // )
                ],
              ),
              )
            ],
          
          ),
        )
        
        ),
         );
     }
}