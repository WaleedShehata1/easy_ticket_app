// ignore: implementation_imports

import 'dart:ui';
import 'package:easy_ticket_app/screen/map.dart';
import 'package:easy_ticket_app/shapes/ticket_bus_detiles.dart';
import 'package:flutter/material.dart';
import '../shapes/ticket_bus.dart';
import '../shapes/ticket_dates.dart';
import '../shapes/ticket_metro.dart';
import '../widget/components.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 bool selectBottom =true;
 int i =10;
 late Widget list;
 
  bool switshTicket = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: 
        [
ClipRRect(
  borderRadius: const BorderRadius.only(
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
            const SizedBox(
              height: 30,
            ),
            const Text("Easy Ticket",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
           const SizedBox(height: 15,),
            DefaultButtom(
              alignment: Alignment.centerLeft,
              Child:const Text('Where do you want to go ?' ,
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
      Child: const Icon(
        Icons.directions_train_sharp,
        color:Colors.white,
        size: 30,),
       Height: 50,
        Width: 45,
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
      Child: const Icon(
        Icons.directions_bus_filled_rounded,
        color:Colors.white,
        size: 30,),
       Height: 50,
        Width: 45,
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

       child: list =selectBottom?
           ListView.separated(
         itemCount: 10,
         itemBuilder: (ctx,index){
           return  busTicket(
            ontap: () {
              showDialog(
                context: context,
                 builder:(context) {
                   return DefaultDialog(
                    Child:  Column(
                     
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.close_outlined,
                                          size: 35,
                                        ))
                                  ],
                                ),
                               
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: 10,
                                    itemBuilder: (ctx, index) {
                                      return busTicketDetiles(
                                        ontap: () {},
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(
                                        height: 20,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 5,),
                              ],
                            )
                    );

                 },);
            },
           );
         },
          separatorBuilder: (BuildContext context, int index)
           { return const SizedBox(
           height: 20,
         ); },
         )
         :
  Column(
        children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultButtom(
                        Child: Transform.rotate(
                                  angle: -44.75,
                                  child: 
                                  const Icon(
                      Icons.confirmation_num_outlined,
                      color: Colors.white,
                      size: 28,),),
                         Height: 35,
                          Width: 60,
                         
                          OnTap: () {
                            setState(() {
                              switshTicket = true;
                            });
                          },
                          color: switshTicket ? PrimaryColour:Colors.grey, 
                          radius: 15,
                           PaddingHorizontal: 5,
                            PaddingVertical: 5,),
                      DefaultButtom(
                        Child: const Text('Dates',style:TextStyle(color: Colors.white),),
                         Height: 35,
                          Width: 60,
                          radius: 15,
                          color:switshTicket ?Colors.grey:PrimaryColour,
                          OnTap: () {
                            setState(() {
                              switshTicket = false;
                            });
                          },
                           PaddingHorizontal: 5,
                            PaddingVertical: 5,),
                    ],
                  ),
                   Expanded(
                     child: ListView.separated(
                            itemCount: 10,
                            itemBuilder: (ctx,index){
                              if(switshTicket == false){
                                
                              return const metroDate();
                              }else{
                                
                               return const metroTicket();
                              }
                            },
                             separatorBuilder: (BuildContext context, int index)
                              { return const SizedBox(
                              height: 20,
                            ); },
                            ),
                   ),
                ],
              ),
      ) 
        ]
      ),

    );
  }
}
