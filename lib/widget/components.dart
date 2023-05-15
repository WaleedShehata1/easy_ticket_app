// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, camel_case_types, unnecessary_null_in_if_null_operators, duplicate_ignore, deprecated_member_use, prefer_typing_uninitialized_variables, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
Color PrimaryColour = const Color(0xffF48265);
Color DarkColour = const Color(0xff212121);
Color textColour = const Color(0xff3E548D);

const LOGIN ="login";

class firstTime {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> putData(
      {required String key, required bool valu}) async {
    return await sharedPreferences?.setBool(key, valu);
  }

  static bool? getData({required String key}) {
    return sharedPreferences?.getBool(key);
  }
}
class darkMode {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> putData(
      {required String key, required bool valu}) async {
    return await sharedPreferences?.setBool(key, valu);
  }

  static bool? getData({required String key}) {
    return sharedPreferences?.getBool(key);
  }
}





