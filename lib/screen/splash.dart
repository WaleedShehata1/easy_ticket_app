// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'dart:async';
import 'package:easy_ticket_app/screen/onBoard.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';

import 'package:flutter/material.dart';

import '../widget/components.dart';

class splash extends StatefulWidget {
  
static const String routeName = 'splash'; 
const splash({super.key,});
 

  @override
  State<splash> createState() => _splashState();
}


class _splashState extends State<splash> { 
 bool? FirstTime = firstTime.getData(key: 'firstTime');
   @override
  void initState() {
       super.initState();
    Timer(
      const Duration(seconds: 2), 
      () {
        if(FirstTime ==true)
        {
               Navigator.pushReplacementNamed(context,Sign_In.routeName );
        }else
        {
              Navigator.pushReplacementNamed(context,onBoard.routeName );
        }
      }
         );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Transform.rotate(
      angle: 44.75,
      child: logoTicket,
      ),
      const SizedBox(
        height: 20,
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'EasyTicket',
          style: TextStyle(
            fontFamily: 'Jomhuria',
            fontSize: 45,
            fontWeight: FontWeight.w900,
            ),
            ),
             Container(
              margin: const EdgeInsetsDirectional.fromSTEB(12,0, 0, 12),
            decoration: BoxDecoration(
              
               color:  PrimaryColour,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              width: 15,
              height:15,
      ),
        ],
      ),


  ],
),
      
    );
  }
}

