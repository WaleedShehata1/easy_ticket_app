


import 'package:flutter/material.dart';

class ThemeClass{
  Color darkPrimryColor =Color(0xff212121);
  
  
  static ThemeData? darkTheme =ThemeData(
  scaffoldBackgroundColor: Color(0xff212121),
  textTheme: TextTheme(subtitle2: TextStyle(color: Colors.white)),
   primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))
  );
}

