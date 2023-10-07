  // ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   const Home({super.key});
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {

   int _counter = 0;
   int index = 0;

   void _incrementCounter() {

     if(_counter<33){
       setState(() {
         _counter++;
          });
     }else{
       setState(() {
         _counter=0;

       });
     }
   }
   void _Restart(){
     setState(() {
       _counter=0;
     });
   }
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           flexibleSpace: Image.asset(
             'assets/images/sappbar.jpg', fit: BoxFit.cover,),
           title: Center(child: Text('فزكر ان نفعت الذكرى',
             style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 color: Colors.white),)),
         ),
         body: Container(
           height: double.infinity,
           width: double.infinity,
           child: Stack(
             children: [
               Image.asset('assets/images/sabeh.jpg', fit: BoxFit.cover,
                 width: double.infinity,),
               Container(
                 height: double.infinity,
                 width: double.infinity,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 180),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('data'),
                       SizedBox(height: 20,),
                       Container(
                         height: 35,
                         width: 200,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(
                                 bottomRight: Radius.circular(30),
                                 topLeft: Radius.circular(30)),
                             color: Colors.white
                         ),
                         child: Center(child: Text('عدد التسبيحات',
                           style: TextStyle(fontSize: 22,
                             fontWeight: FontWeight.w700,
                             color: Colors.red,
                           ),
                         )),
                       ),
                       SizedBox(height: 20,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("$_counter",
                             style: TextStyle(
                                 color: Colors.white,
                               fontSize: 30,
                             fontWeight: FontWeight.bold
                             ),),
                           SizedBox(
                             height: 15,
                           ),
                           Container(
                             height: 150,
                             width: 150,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               border: Border.all(color: Colors.white,width: 3)
                             ),
                             child: Center(
                               child: MaterialButton(onPressed:_incrementCounter,

                                 child: Text(" اضغط ",

                                   style: TextStyle(
                                       color:Colors.black,
                                       fontSize: 24,
                                       fontWeight: FontWeight.bold
                                   ),
                                 ),
                               ),
                             ),
                           ),

                           SizedBox(
                             height: 15,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               TextButton(onPressed:_Restart,
                                   style:ElevatedButton.styleFrom(
                                     padding:EdgeInsets.all(5),

                                     shape:CircleBorder(),

                                   ), child:Padding(padding:EdgeInsets.all(15.0),
                                     child: Text("البدأ من جديد",
                                       style: TextStyle(
                                           color:Colors.black,
                                           fontSize: 16,
                                           fontWeight: FontWeight.bold
                                       ),
                                     ),
                                   )
                               ),
                               TextButton(onPressed:_Restart,
                                   style:ElevatedButton.styleFrom(
                                     padding:EdgeInsets.all(5),

                                     shape:CircleBorder(),

                                   ), child:Padding(padding:EdgeInsets.all(15.0),
                                     child: Text("البدأ من جديد",
                                       style: TextStyle(
                                           color:Colors.black,
                                           fontSize: 16,
                                           fontWeight: FontWeight.bold
                                       ),
                                     ),
                                   )
                               ),
                             ],
                           ),

                         ],

                       ),

                     ],
                   ),
                 ),
               ),


             ],
           ),
         ),
       );
     }
   }

