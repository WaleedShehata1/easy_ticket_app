// ignore: implementation_imports

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../shapes/ticket.dart';
import '../widget/components.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 bool selectBottom =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
     
      body:Column(
        children: 
        [
          
          Stack(
            children: 
            [
               Container(
                          width: double.infinity,
                          height: 180,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),),
                           
                            ),
                          child: Stack(
                                       alignment: Alignment.center,
                                       children:
                                       [
                                        Image.asset('asset/images/unsplash_nG3q_mlv8yI.png',
                                                    width: double.infinity,
                                                    fit: BoxFit.fill,
                                                   ),
                                        Positioned.fill(child: BackdropFilter(
                                          filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
                                          child: Container(color: const Color.fromARGB(70, 0, 0, 0),),)),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: 
                                                           [
                                                            
                                                            const Text(
                                                              'Easy Ticket',
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 26,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto'
                                                                ),
                                                                ),
                                                            DefaultButtom(
                                                              OnTap: (){},
                                                              alignment: Alignment.centerLeft,
                                                               Child: const Text(
                                                                'Where do you want to go?',
                                                                style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Roboto',
                                                                color: Colors.white,
                                                                letterSpacing: 0.5
                                                                ),),
                                                               Height:40 ,
                                                               Width: 300,
                                                               PaddingHorizontal: 0,
                                                               PaddingVertical: 0,
                                                               radius: 10,
                                                            ),
                                                           
                                                           ],
                                                ),
                                        )
                                       ]
                                      ),
                                      
                ),
                
            ],
            ),
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   children: [
     DefaultButtom(
       radius: 15,
       Child:  Icon(Icons.directions_railway_filled,
       size: 30,
       color: selectBottom ?Colors.black :Colors.white ,
       ),
       color: selectBottom? Colors.white:PrimaryColour,
        Height:55, 
        Width:30,
      PaddingHorizontal: 0,
      PaddingVertical: 0,
      OnTap: (){
        setState(() {
        selectBottom = false;
      }); 
      },
        ),
     DefaultButtom(
       radius: 15,
       Child: Icon(
        Icons.directions_bus_filled,
        size: 30,
        color: selectBottom ?Colors.white:Colors.black ,
        ),
          Height:55, 
        Width:30,
        OnTap:(){
        setState(() {
        selectBottom = true;
      }); 
      },
       PaddingHorizontal: 0,
       PaddingVertical: 0,
       color: selectBottom ?PrimaryColour:Colors.white,
       ),
    ],
     ),
 ),
            Expanded(
              child: ListView.builder(
               itemCount: 15,
               itemBuilder:(ctx,index){ 
               return Column(
                 children: [
                  SizedBox(height: 20,),
                   Stack(
                   clipBehavior: Clip.antiAliasWithSaveLayer,
                   alignment: Alignment.center,
                    children: [
                      busTicket(),
                      Container(
                       width: 270,
                       height: 120,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           SizedBox(width: 10,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 7,),
                               Text('Bus 12',textAlign: TextAlign.start,),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     width: 32,
                                     height: 32,
                                     decoration: BoxDecoration( 
                                        color: PrimaryColour,
                                        borderRadius: BorderRadius.circular(7)),
                                     child: Icon(Icons.abc,color: Colors.white,),
                                   ),
                                   SizedBox(width: 5,),
                                   Column(
                                     children: [
                                       Text('Sohg'),
                                       Text('15-Dec-2022'),
                                     ],
                                   )
                                 ],
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               Row(
                                 children: [
                                   Container(
                                     width: 32,
                                     height: 32,
                                     decoration: BoxDecoration( 
                                        color: PrimaryColour,
                                        borderRadius: BorderRadius.circular(7)),
                                   
                                     child: Icon(
                                      Icons.abc,
                                      color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 5,),
                                   Column(
                                     children: [
                                       Text('Sohg'),
                                       Text('15-Dec-2022'),
                                     ],
                                   )
                                 ],
                               )
                             ],
                           )
                        ,SizedBox(width: 40,),
                        DottedBorder( padding: EdgeInsets.all(0.5),
                        dashPattern: [5,4],
                        strokeWidth: 0.5,
                        color: Colors.grey,
                          child: Container(
                           height: 90,
                          
                          ),
                        ),
                        Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           DefaultButtom(
                             Child: Text("Detiles"),
                             OnTap: (){},
                             radius: 10,
                            Height: 34,
                             Width: 50,
                             PaddingHorizontal: 10,
                             PaddingVertical: 0,
                              ),
                              SizedBox(height: 10,),
                              Text("Price: \$70")
                         ],
                        )
                         ],
                        ),
                      ),
              
                    ],
              ),
                 ],
               );}
               ),
            )
       
        ],
        ),       

    );
  }
}