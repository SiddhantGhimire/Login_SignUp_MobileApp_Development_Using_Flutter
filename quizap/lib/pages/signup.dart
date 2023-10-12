

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizap/pages/Loginpage.dart';
import 'Afterup.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final usernamecontroller=TextEditingController();
  bool passToggle=true;
  final _formkey =GlobalKey<FormState>();

  void Signup(){
if(_formkey.currentState!.validate()){
   Navigator.push(context, MaterialPageRoute(builder: (context) {
    return AfterSignup(usernamecontroller.text.toString());
  },));
}

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assest/images.jpg'),fit: BoxFit.fill),),
       child: Center(
        child: Container(
          width: 300,
          height: 550,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   //   crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
          
            Text('TIVIIA',style: TextStyle(fontSize: 43,fontWeight: FontWeight.w600),),
                
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter firstname';
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  labelText: 'FirstName',
                 contentPadding: EdgeInsets.all(12),
          
                  ),
                ),
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter lastname';
                    }
                  },
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  labelText: 'LastName',
                 contentPadding: EdgeInsets.all(12),
                  
                  ), 
                ),
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter username';
                    }

                    {
                      {
 
}
                    }
                  },
                  controller: usernamecontroller,
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  labelText: 'UserName',
                 contentPadding: EdgeInsets.all(12),
          
                  ), 
                ),
                
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter password';
                    }
                  },
                  obscureText: passToggle,
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  labelText: 'Password',
                 contentPadding: EdgeInsets.all(12),
                 suffixIcon: InkWell(
                  onTap: () {
                   setState(() {
                     passToggle=!passToggle;
                   }); 
                  },
                  child: Icon(passToggle? Icons.visibility:Icons.visibility_off),
                 )
                 
          
                  ),
                ),
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter confirmpassword';
                    }
                  },
          
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  labelText: 'ConfirmPassword',
                 contentPadding: EdgeInsets.all(12),
          
           suffixIcon: InkWell(
                  onTap: () {
                   setState(() {
                     passToggle=!passToggle;
                   }); 
                  },
                  child: Icon(passToggle? Icons.visibility:Icons.visibility_off),
                 )
          
                  ),
                  
                ),
                ElevatedButton(onPressed: () {
                 Signup();
                  
                }, child: Text('Signup')),
            
            InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return Login();
               },));
             },
                
              
              child: RichText(text: TextSpan(
                text: 'Already Have An Acoount',
                children: [
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(color: Colors.amber)
                  )
                ]
              ),
              
              ),
            )
                
              ],
            ),
          ),
        ),
       ),
      ),
    );
  }




}