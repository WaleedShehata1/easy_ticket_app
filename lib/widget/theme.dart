// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ThemeClass {
  Color darkPrimryColor = const Color(0xff212121);

  static ThemeData? darkTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xff212121),
      textTheme: const TextTheme(subtitle2: TextStyle(color: Colors.white)),
      primaryTextTheme:
          const TextTheme(bodyText1: TextStyle(color: Colors.white)));
  static ThemeData? lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(subtitle2: TextStyle(color: Colors.black)),
      primaryTextTheme:
          const TextTheme(bodyText1: TextStyle(color: Colors.black)));
}
