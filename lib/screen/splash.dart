// ignore_for_file: camel_case_types, non_constant_identifier_names, deprecated_member_use
import 'dart:async';
import 'package:easy_ticket_app/screen/home.dart';
import 'package:easy_ticket_app/screen/onBoard.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/components.dart';

class splash extends StatefulWidget {
  static const String routeName = 'splash';
  const splash({
    super.key,
  });

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  bool? FirstTime = CacheHelper.getData(key: 'firstTime');
  String? token = CacheHelper.getToken(key: 'access_token');
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      if (FirstTime == true ) {
        if(token !=null){
            Navigator.pushReplacementNamed(context,HomeScreen.routeName);
        }else{
           Navigator.pushReplacementNamed(context, Sign_In.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, onBoard.routeName);
      }
    });
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
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'EasyTicket',
                style: TextStyle(
                  fontFamily: 'Jomhuria',
                  fontSize: 45.sp,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).textTheme.subtitle2!.color!,
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
                decoration: BoxDecoration(
                  color: PrimaryColour,
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                ),
                width: 15.w,
                height: 15.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
