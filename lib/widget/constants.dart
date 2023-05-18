import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

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

enum ToastStates { SUCCESS, ERROR, WARNING }

Color? chooseToastColor(ToastStates state) {
  Color color;

  if (state == ToastStates.SUCCESS) {
    color = Colors.green;
  } else if (state == ToastStates.ERROR) {
    color = Colors.red;
  } else {
    color = Colors.amber;
  }

  return color;
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);
