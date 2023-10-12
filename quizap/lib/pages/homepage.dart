

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizap/pages/Loginpage.dart';
import 'package:quizap/pages/signup.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Scaffold(
  body: 
   Container(
      decoration: BoxDecoration(
   
        image: DecorationImage(image: AssetImage('assest/images.jpg'),fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          SizedBox(
            height: 230,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Icon(Icons.home,size: 85,),
               
          Text('Tiviia',style: TextStyle(fontSize: 52,fontWeight: FontWeight.bold,color: Colors.white),),
          Center(
          child: Container(
            width: 270,
            child: Text('quiz application to train your knowledge',
            
            softWrap: true,
          
           textAlign: TextAlign.center,   
           style: TextStyle(color: Colors.white,fontSize: 18),        
            ),
          ),
          ),
            ],
          ),
       
SizedBox(
  height: 20,
),
              
   ElevatedButton(

    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,padding: EdgeInsets.only(left: 140,right: 140,top: 20,bottom: 20),
 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))   
    ),
    onPressed: () {
   
   Navigator.push(context, MaterialPageRoute(builder: (context) {
     return Signup();
   },));
   
   }, child: Text('Get Started',style: TextStyle(color: Colors.blue.shade900,fontSize: 18,fontWeight: FontWeight.w500),)),
    
      
        ],
      ),
      
      ),
);

    

    
  
  }
}



  //  Icon(Icons.home,size: 55,),
  //         Text('Tiviia',style: TextStyle(fontSize: 52,fontWeight: FontWeight.bold,color: Colors.white),),
  //         Center(
  //           child: Container(
  //             width: 200,
  //             child: Text('quiz application to train your knowledge',softWrap: true,
            
  //            textAlign: TextAlign.center,   
  //            style: TextStyle(color: Colors.white),        
  //             ),
  //           ),
  //         ),