

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizap/pages/home.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passToggle=true;
  final userNameController=TextEditingController();
  final passwordController=TextEditingController();
  final formkey=GlobalKey<FormState>();

  void login(){
    if(formkey.currentState!.validate()){
      Navigator.push(context,MaterialPageRoute(builder: (context) {
                  
return ProfileScreen(userNameController.text.toString());
                },) );
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
extendBodyBehindAppBar: true,
      body: Container(
decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assest/images.jpg'),fit: BoxFit.cover)),

child: Center(
  child: Form(
    key: formkey,

    child: Container(
      height: 350,
      width: 300,
  
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    
          Text('TIVIIA',style: TextStyle(fontSize: 43,fontWeight: FontWeight.w600),),
          
         
          TextFormField(
            controller: userNameController,
            validator: (value) {
              if(value!.isEmpty){
                return 'Please Enter UserName';
              }


            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(9),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              
            ),
            labelText: 'User Name',  
            ),
          
          ),
    
           TextFormField(
            controller: passwordController,
            
            validator: (value) {
              if(value!.isEmpty){
                return 'Please Enter Password';
               
              }
             

            },
           obscureText: passToggle, 
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(9),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              
            ),
            labelText: 'Password', 
             
    
            
            suffixIcon:

            IconButton(onPressed: () {
              setState(() {
                passToggle=!passToggle;
              });
              
            }, icon:
            Icon(passToggle? Icons.visibility:Icons.visibility_off),
            
             ),
           

            
            )
          ),
    
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            onPressed: () {
              login();
              
              
            
          }, child: Text("Login")),
        InkWell(
          onTap: () {
            
          },
          child: Text('Forget Password?')),
    
         
        ],
      ),
    ),
  ),
),
      ) ,
    );
  }
}