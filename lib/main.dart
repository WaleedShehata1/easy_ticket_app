
import 'screen/bottom_bar.dart';
import 'screen/credit_card.dart';
import 'screen/notifications.dart';
import 'screen/payment_method.dart';
import 'screen/sign_up.dart';
import 'screen/edit_profile.dart';
import 'screen/get_password_reset_code.dart';
import 'screen/home.dart';
import 'screen/onBoard.dart';
import 'screen/profile.dart';
import 'screen/sign_in.dart';
import 'screen/splash.dart';
import 'widget/components.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screen/wallet_screen.dart';

void main()
  async {
WidgetsFlutterBinding.ensureInitialized();

 await firstTime.init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context, child) 
      {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:PrimaryColour,
        ), 
        home: child,
      
          routes: {
                 splash.routeName: (context)=>  const splash(),
                  onBoard.routeName : (context)=>  const onBoard(),
                  Sign_In.routeName:(context) =>   Sign_In(),
                  SignUp.routeName:(context)=> SignUp(),
                  BottomBar.routeName:(context) => const BottomBar(),
                 HomeScreen.routeName: (context)=>  const HomeScreen(),
                 UserSettingsScreen.routeName:(context) => const UserSettingsScreen(),
                 EditProfileScreen.routeName: (context) =>  const EditProfileScreen(),
                 GetPasswordResetCode.routeName :(context) =>const GetPasswordResetCode(),
                 NotificationsScreen.routeName:(context) =>  NotificationsScreen(),
                PaymentMethodScreen.routeName :(context) => const PaymentMethodScreen(),
                WalletProfile.routeName:(context) =>  WalletProfile(),
                CreditCard.routeName:(context) =>  CreditCard(),
              },
              
             
      );},
      child: const splash(),
    );
  }
}


