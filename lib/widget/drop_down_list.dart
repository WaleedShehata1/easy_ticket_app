// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components.dart';

class DefaultDropdown extends StatelessWidget {
  Object? value;
  Function(Object?)? onChanged;
  List<DropdownMenuItem<Object>>? items;
  String? Function(Object?)? validator;
  double? radius;
  double? height;
  double? width;
  Color? colorBorder;
  Color? color;
  TextStyle? labelStyle;
  String? labelText;

  DefaultDropdown(
      {Key? key,
      this.onChanged,
      this.items,
      required this.labelText,
      this.labelStyle,
      required this.validator,
      this.radius,
      this.height,
      this.width,
      this.colorBorder,
      this.color,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      iconSize: 0.h,
      style: TextStyle(
          fontSize: 14.sp, color: Colors.black87, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        counterStyle: TextStyle(
          fontSize: 13.sp,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        labelText: labelText,
        labelStyle: TextStyle(color: color ?? PrimaryColour, fontSize: 16.sp),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(
            radius ?? 15,
          ).r,
        ),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            radius ?? 15.r,
          ),
          borderSide: BorderSide(color: colorBorder ?? PrimaryColour, width: 2),
        ),
        errorMaxLines: 2,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 15.r),
          borderSide: const BorderSide(width: 2.0, color: Colors.red),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 15.r),
          borderSide: const BorderSide(width: 2.0, color: Colors.red),
        ),
      ),
      value: value,
      borderRadius: BorderRadius.circular(10.r),
      items: items,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
