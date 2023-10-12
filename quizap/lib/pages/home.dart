import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
   var namefromhome;
ProfileScreen( this.namefromhome);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int curridx=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child:
        
         Padding(
              padding: const EdgeInsets.only(top:38,right: 20,left: 20),
           
           child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                    
                    text: 'Hi ,${widget.namefromhome}',
                    style: TextStyle(fontSize: 29,fontWeight: FontWeight.w600,color:Colors.black),
                    children: [
                      TextSpan(
                        text: '\nStart Your Productive Day',
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal)
                      ),
                    ]
                  )),
                  CircleAvatar(
                    backgroundImage: AssetImage('assest/images.jpg'),
                    radius: 32,
                  )
                ],
              ),
              Container(

                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(14),
                color: Colors.blue,
                
                ),
                width:double.infinity,
                margin: EdgeInsets.all(18),
                height: 90,
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.stacked_bar_chart,size: 33,),
                         SizedBox(
                          width: 8,
                        ),
                        RichText(text: TextSpan(
                          text: '2100',
                          style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: '\n exp.points',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                            ),
                          ]
                        ),
                        
                        ),
                        
                      ],
                    ),
              VerticalDivider(
              color: Colors.grey.shade300,
              thickness: 0.25,
              indent: 30,
              endIndent: 30,
              ),
              
                               Row(
                                 children: [
                                   
              
                                   Icon(Icons.home_max_rounded,size: 33,),
                                   SizedBox(
                                     width: 8,
                                   ),
              
                                   RichText(
                                     
                                     text: TextSpan(
                                     text: '2100',
                                     style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                     children: [
                                       TextSpan(
                                         text: '\nexp.points',
                                         style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                                       ),
                                     ]
                                   ),
                                   
                                   ),
                                   
                                 ],
                               ),
                
                  ],
                ),
              ),
         
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.transparent,
                child:Text('Your studies',textAlign: TextAlign.left,style: TextStyle(fontSize: 26),),
              ),
            
              Card(
                elevation: 1,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
                child: Container(
                  
                  height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.purple.shade100),
                          width: 55,
                          height: 65,
                          child: Center(
                            child: Text('B',style: TextStyle(color: Colors.purple,fontSize: 22,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        RichText(text: TextSpan(
                          text: 'Biology',
                          
                          style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: '\n 24 questions',
                              style: TextStyle(fontSize: 14,color: Colors.black54)
                            )
                          ]
                        ),
                        
                        ),
                        

                      ],
                    ),
                  ),
                        Icon(Icons.arrow_forward_ios,color: Colors.purple,)


                ],
              ),
                ),
              ),



                Card(
                elevation: 1,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
                child: Container(
                  
                  height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.purple.shade100),
                          width: 55,
                          height: 65,
                          child: Center(
                            child: Text('M',style: TextStyle(color: Colors.purple,fontSize: 22,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        RichText(text: TextSpan(
                          text: 'Mathematics',
                          
                          style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: '\n 6 questions',
                              style: TextStyle(fontSize: 14,color: Colors.black54)
                            )
                          ]
                        ),
                        
                        ),
                        

                      ],
                    ),
                  ),
                        Icon(Icons.arrow_forward_ios,color: Colors.purple,)


                ],
              ),
                ),
              ),
                 Card(
                elevation: 1,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
                child: Container(
                  
                  height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.purple.shade100),
                          width: 55,
                          height: 65,
                          child: Center(
                            child: Text('F',style: TextStyle(color: Colors.purple,fontSize: 22,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        RichText(text: TextSpan(
                          text: 'Foreign Language',
                          
                          style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: '\n 12 questions',
                              style: TextStyle(fontSize: 14,color: Colors.black54)
                            )
                          ]
                        ),
                        
                        ),
                        

                      ],
                    ),
                  ),
                        Icon(Icons.arrow_forward_ios,color: Colors.purple,)


                ],
              ),
                ),
              ),
              

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(child: Text('See More ⤋',style: TextStyle(fontSize: 18,color: Colors.purple),)),
            ),

            Container(
              width: double.infinity,
              height: 300,
            
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(22),color: Colors.amber ),
              child: Stack(
                children: [

                         Positioned(
                    left: 50,
                    top: 40,

                    child: Image.asset('assest/person.png',fit: BoxFit.contain),
                    ),
                  Positioned(
                    top: 20,
                    left: 10,

                    child: Text(' Premium \n Account\n Discount',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600,color: Colors.grey)),
                    ),


           
                ],
              ),
            ),
          

              
            ],
                 ),
         ),
     
     
     
      ),

      bottomNavigationBar: BottomNavigationBar(items: [

        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home',backgroundColor: Colors.blue),
       
        BottomNavigationBarItem(icon: Icon(Icons.info,),label: 'About',
        backgroundColor: Colors.blue

        ),

        BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Like',
        backgroundColor: Colors.blue
        
        ),

        BottomNavigationBarItem(icon: Icon(Icons.people,),label: 'My profile',
      
        backgroundColor: Colors.blue
        
        ),


      ],
      currentIndex: curridx,
      onTap: (value) {
        setState(() {
          curridx=value;
        });
      },
      ),

    );
  }
}