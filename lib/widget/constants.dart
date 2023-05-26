import 'package:easy_ticket_app/model/sign_in_model.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

import '../model/sign_in_model.dart';

void showToast({
  required String text,
  required ToastStates state,
}) =>
    {
      Fluttertoast.showToast(
          msg: text,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: chooseToastColor(state),
          textColor: Colors.white,
          fontSize: 16.0)
    };

enum ToastStates { success, error, warning }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Colors.green;
      break;

    case ToastStates.error:
      color = Colors.red;
      break;

    case ToastStates.warning:
      color = Colors.amber;
      break;
  }
  return color;
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);

String? token = CacheHelper.getData(key: 'token');
String? uid = CacheHelper.getData(key: 'uid');
String? userEmail = CacheHelper.getData(key: 'email');
String? userName = CacheHelper.getData(key: "userName");
