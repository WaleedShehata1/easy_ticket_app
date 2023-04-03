// ignore: implementation_imports

import 'dart:ui';
import 'package:easy_ticket_app/screen/map.dart';
import 'package:flutter/material.dart';
import '../shapes/ticket.dart';
import '../widget/components.dart';
import '../widget/list_build_home.dart';

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
      backgroundColor: Colors.white,
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
              alignment: Alignment.centerLeft,
              Child:Text('Where do you want to go ?' ,
              style:TextStyle(
              fontSize: 16,
              wordSpacing: 1,
              letterSpacing: 0.5,
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
      Child: Icon(
        Icons.directions_train_sharp,
        color:Colors.white,
        size: 30,),
        Height: 50,
        Width: 35,
        radius: 12,
         PaddingHorizontal: 0,
          PaddingVertical: 15,
          OnTap: (){
            setState(() {
              selectBottom =false;
            });
          },
          color:selectBottom ?Colors.grey:PrimaryColour ,
          ),
    DefaultButtom(
      Child: Icon(
        Icons.directions_bus_filled_rounded,
        color:Colors.white,
        size: 30,),
       Height: 50,
        Width: 35,
        radius: 12,
         PaddingHorizontal: 0,
          PaddingVertical: 15,
          color: selectBottom ? PrimaryColour:Colors.grey,
          OnTap: (){
             setState(() {
              selectBottom =true;
            });
          },
          ),
  ],
), Expanded(

       child:listBuild(switshBus: selectBottom,switshTicket: selectBottom)! ,
      ) 
        ]
      ),

    );
  }
}
