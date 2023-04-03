// ignore: implementation_imports

import 'dart:ui';
import 'package:easy_ticket_app/screen/map.dart';
import 'package:flutter/material.dart';
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
 int i =10;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: 
        [
ClipRRect(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20)
  ),
  child:   Stack(
    alignment: Alignment.center,
    children: [
      Image.asset("asset/images/unsplash_nG3q_mlv8yI.png",
      fit: BoxFit.cover,
      width: double.infinity,
        height: 175,
        ),
      Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
          child: Container(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
           children: [
            SizedBox(
              height: 30,
            ),
            Text("Easy Ticket",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
           SizedBox(height: 15,),
            DefaultButtom(
              Child:Text('Where do you want to go ?',
              style:TextStyle(
              fontSize: 18,
              wordSpacing: 1,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ) ,) ,
               Height: 35,
               Width: 270,
              PaddingHorizontal: 20,
               PaddingVertical: 20,
               radius: 10,
               OnTap: (){
                Navigator.pushNamed(context, MapScreen.routeName);
               },
               ),
           ],
      )
    ],
  
  ),
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    
    DefaultButtom(
      Child: Icon(Icons.directions_train_sharp,color: Colors.white,size: 30,),
        Height: 50,
        Width: 35,
        radius: 12,
         PaddingHorizontal: 0,
          PaddingVertical: 20,
          OnTap: (){},),
    DefaultButtom(
      Child: Icon(Icons.directions_bus_filled_rounded,color: Colors.white,size: 30,),
       Height: 50,
        Width: 35,
        radius: 12,
         PaddingHorizontal: 0,
          PaddingVertical: 20,
          OnTap: (){},
          ),
  ],
),
      Expanded(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (ctx,index){
            return busTicket();
          },
           separatorBuilder: (BuildContext context, int index)
            { return SizedBox(
            height: 20,
          ); },
          ) 
          ) 
        ]
      ),

    );
  }
}
