// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, unnecessary_null_in_if_null_operators, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components.dart';

class DefaultFormField extends StatelessWidget {
  Color? textColor;
  int? MaxLength;
  double? fontSize;
  double? radius;
  TextEditingController controller;
  TextInputType? keyboardType;
  String? label;
  Widget? prefixIcon;
  Color? colorBorder;
  IconData? suffixIcon;
  String? Function(String?) validate;
  TextAlign? textAlign;
  Function? suffixPressed;
  List<TextInputFormatter>? inputFormatters;
  String? hint;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;
  bool? isPassword;

  void Function()? onTap;

  DefaultFormField({
    Key? key,
    this.textColor,
    this.MaxLength,
    this.fontSize,
    this.radius,
    required this.controller,
    this.keyboardType,
    this.label,
    this.prefixIcon,
    this.colorBorder,
    this.suffixIcon,
    required this.validate,
    this.textAlign,
    this.suffixPressed,
    this.inputFormatters,
    this.hint,
    this.onChanged,
    this.onSaved,
    this.isPassword,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      onTap: onTap ?? null,
      obscureText: isPassword ?? false,
      textAlign: textAlign ?? TextAlign.start,
      maxLength: MaxLength ?? null,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: (fontSize ?? 14).sp,
        fontWeight: FontWeight.w500,
      ),
      onChanged: onChanged,
      onSaved: onSaved,
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validate,
      decoration: InputDecoration(
        hintText: hint,
        counterStyle: TextStyle(
          fontSize: 13.sp,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        labelText: label,
        labelStyle:
            TextStyle(color: textColor ?? PrimaryColour, fontSize: 16.sp),
        prefixIcon: prefixIcon ?? null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(suffixIcon))
            : null,
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
    );
  }
}
