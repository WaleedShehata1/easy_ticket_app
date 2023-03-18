

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:easy_ticket_app/screen/home.dart';
import 'package:flutter/material.dart';


class SplashSceen extends StatelessWidget {
  const SplashSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(logo: Image.asset('asset/images/ticket.png',width:200,height: 200,fit: BoxFit.fitHeight,)
    ,
    title:const Text('Easy Ticket .',style: TextStyle(
      fontFamily:'Jomhuria',
    fontSize: 40,
    fontWeight:FontWeight.bold,
    color:Color(0xffF48265),
    ),
    ), 
    logoWidth: 100,
    showLoader: true,
    loadingText: const Text(
      'Team 4 ELshorouk',
      style: TextStyle(
        fontFamily:'Jomhuria',
        fontSize: 20,
        fontWeight:FontWeight.bold,
        color:Color(0xffF48265),
        ),
        ),
    loaderColor: const Color(0xffF48265),
    navigator:const HomeScreen() ,
    durationInSeconds: 1500,
    );
  }
}