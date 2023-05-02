// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, camel_case_types, unnecessary_null_in_if_null_operators, duplicate_ignore, deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
Color PrimaryColour = const Color(0xffF48265);
Color DarkColour = const Color(0xff212121);
Color textColour = const Color(0xff3E548D);

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

class DefaultFormField extends StatelessWidget {
  Color? textColor;
  int?MaxLength;
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
  
  bool? isPassword;

  DefaultFormField({
    Key? key,
    this.MaxLength,
    this.textColor,
    this.radius,
    this.colorBorder,
    this.fontSize,
    required this.controller,
    this.keyboardType,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    required this.validate,
    this.textAlign,
    this.suffixPressed,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       obscureText: isPassword ?? false,
      textAlign:textAlign?? TextAlign.start,
       maxLength: MaxLength?? null,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: (fontSize?? 14).sp,
        fontWeight: FontWeight.w500,
      ),
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validate,
      decoration: InputDecoration(
        counterStyle: TextStyle(fontSize: 13.sp,),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
        labelText: label,
        prefixIcon: prefixIcon ?? null,
          suffixIcon: suffixIcon!= null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: const Icon(Icons.remove_red_eye_outlined))
            : null,
    
        focusedBorder: OutlineInputBorder(
          borderSide:  const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(
            radius??20.r,
          ),
        ),
        fillColor:Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
           radius?? 20.r,
          ),
          borderSide: BorderSide(color: colorBorder?? PrimaryColour, width: 2),
        ),
         focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius??20.r),
                    borderSide: BorderSide(width: 2.0, color: Colors.red),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius??20.r),
                    borderSide: BorderSide(width: 2.0, color: Colors.red),
                  ),
      ),
    );
  }
}

class DefaultButtom extends StatelessWidget {
  void Function()? OnTap;
  Widget Child;
  double Height;
  double Width;
  double? radius;
  double PaddingHorizontal;
  double PaddingVertical;
  double? PaddingVerticalText;
  Color? color;
  Color? colorShadow;
  AlignmentGeometry? alignment;

  DefaultButtom({
    Key? key,
    this.OnTap,
    required this.Child,
    required this.Height,
    required this.Width,
    this.radius,
    required this.PaddingHorizontal,
    required this.PaddingVertical,
    this.PaddingVerticalText,
    this.color,
    this.colorShadow,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: PaddingVertical.h, horizontal: PaddingHorizontal.w),
      child: Container(
        height: Height.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 30).r),
          boxShadow: [
         /*  BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 15,
              spreadRadius: -5,
              color: colorShadow ?? Colors.grey.withOpacity(0.5)), */
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
        ]),
        child: ElevatedButton(
          onPressed: OnTap,
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            primary: color ?? PrimaryColour,
            padding: EdgeInsets.all(PaddingVerticalText ?? 5).h,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 30).r),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(0),
            alignment: alignment ?? Alignment.center,
            width: Width.w,
            height: Height.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 30).r),
            ),
            child: Child,
          ),
        ),
      ),
    );
  }
}

class DefaultDialog extends StatelessWidget {
  Widget Child;
  double? paddingVerrtical;
  double? radius;
  double? paddingHorizontal;
  Color? backgroundColor;
  DefaultDialog({
    Key? key,
    this.backgroundColor,
    required this.Child,
    this.paddingVerrtical,
    this.radius,
    this.paddingHorizontal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Dialog(
          backgroundColor: backgroundColor?? Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 25)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: paddingVerrtical ?? 15,
                horizontal: paddingHorizontal ?? 20),
            child: Child,
          ),
        ));
  }
}

class DefaultDropdown extends StatelessWidget {
  Object?value;
   Function(Object?)? onChanged;
   List<DropdownMenuItem<Object>>? items;
   Widget? hint;
   double? radius;
   double? height;
   double? width;
   Color? colorBorder;
   Color? color;


  DefaultDropdown({
    Key? key,
    this.onChanged,
    this.items,
    required this.hint,
    this.radius,
    this.height,
    this.width,
    this.colorBorder,
    this.color,
    this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? 140.w,
       height: height??36.h,
       
        decoration: BoxDecoration( color:color?? Colors.white,
          borderRadius: BorderRadius.circular( radius??20).r
        ),
        child: DropdownButtonFormField(
          iconSize: 20.h,
          style:TextStyle(fontSize: 14.sp, color: Colors.black87,fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            contentPadding: EdgeInsetsDirectional.only(start: 5.w ,end: 5.w,top: 7.h,bottom: 7.h),
                                enabled: false,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
               radius??20,
              ).r,
              borderSide: BorderSide(color:colorBorder?? PrimaryColour, width: 2),
            ),
          ),
          hint: hint,


          value: value,
          
          borderRadius: BorderRadius.circular(10.r),
          items: items,
          onChanged: onChanged,
        ));
  }
}
