// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, camel_case_types, unnecessary_null_in_if_null_operators, duplicate_ignore, deprecated_member_use, prefer_typing_uninitialized_variables, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color PrimaryColour = const Color(0xffF48265);
//Color PrimaryColour = Colors.blue.shade600;
Color DarkColour = const Color(0xff212121);
Color textColour = const Color(0xff3E548D);

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> putData(
      {required String key, required bool value}) async {
    return await sharedPreferences?.setBool(key, value);
  }

  static dynamic getData({required String key}) {
    return sharedPreferences?.get(key);
  }

  static Future<bool?> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences?.setString(key, value);
    if (value is int) return await sharedPreferences?.setInt(key, value);
    if (value is bool) return await sharedPreferences?.setBool(key, value);
    return null;
  }

  static Future<bool?> clearData({
    required String key,
  }) async {
    return await sharedPreferences?.remove(key);
  }
}
