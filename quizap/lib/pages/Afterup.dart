

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizap/pages/Loginpage.dart';

class AfterSignup extends StatefulWidget {

var name;
AfterSignup(
  this.name
);
  @override
  State<AfterSignup> createState() => _AfterSignupState();
}

class _AfterSignupState extends State<AfterSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Center(
      
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.redAccent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You Have Succesfully Create An account',style: TextStyle(fontSize: 33),),
              Text('hi,${widget.name}',style: TextStyle(fontSize: 33),),
              InkWell(
                child: Text('Continue With Login'),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return Login();
                  },));
                },
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}