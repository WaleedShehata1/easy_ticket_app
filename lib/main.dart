
import 'package:easy_ticket_app/screen/edit_profile.dart';
import 'package:easy_ticket_app/screen/home.dart';
import 'package:easy_ticket_app/screen/map.dart';
import 'package:easy_ticket_app/screen/onBoard.dart';
import 'package:easy_ticket_app/screen/profile.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/screen/splash.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'screen/bottom_bar.dart';
import 'screen/sign_up.dart';

void main()
  async {
WidgetsFlutterBinding.ensureInitialized();

 await firstTime.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
 
        primarySwatch: Colors.deepOrange,
      ),
      home:const BottomBar() ,
    
        routes: {
               splash.routeName: (context)=>  const splash(),
                onBoard.routeName : (context)=>  const onBoard(),
                Sign_In.routeName:(context) =>   Sign_In(),
                SignUp.routeName:(context)=> SignUp(),
                BottomBar.routeName:(context) => const BottomBar(),
               HomeScreen.routeName: (context)=>  HomeScreen(),
               MapScreen.routeName:(context) => const MapScreen(),
               UserSettingsScreen.routeName:(context) => UserSettingsScreen(),
               EditProfileScreen.routeName: (context) =>  EditProfileScreen()

            },
           
    );
  }
}


