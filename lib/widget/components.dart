// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, camel_case_types, unnecessary_null_in_if_null_operators, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color PrimaryColour =const Color(0xffF48265);



class firstTime {

static SharedPreferences? sharedPreferences;

static init() async{
sharedPreferences = await SharedPreferences.getInstance();
}

static Future<bool?> putData({
  required String key,
  required bool valu
}) async{

  return await sharedPreferences?.setBool(key,valu);
}

static bool? getData({required String key})
{
return sharedPreferences?.getBool(key);
}

}


class DefaultFormField extends StatelessWidget {
  Color? textColor;
  double? fontSize;
  TextEditingController controller;
  TextInputType? keyboardType;
  String label;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String? Function(String?) validate;
 

   DefaultFormField({
    Key? key,
    this.textColor,
    this.fontSize,
    required this.controller,
    this.keyboardType,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    required this.validate,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.w500,
      ),
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validate,
      decoration: InputDecoration(
       // hintText: hint,
        labelText: label,
       
        // ignore: unnecessary_null_in_if_null_operators
        prefixIcon: prefixIcon ?? null,
        suffixIcon: suffixIcon ?? null,
        
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        fillColor: const Color.fromARGB(255, 249, 247, 249),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
          borderSide: BorderSide(
              color: PrimaryColour, width: 2),
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
 Color? color ;
 Color? colorShadow ;
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
      padding: EdgeInsets.symmetric(vertical: PaddingVertical,horizontal:PaddingHorizontal ),
      child: Container(
            height: Height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0,0 ),
              blurRadius: 15,
              spreadRadius: -5,
              color: colorShadow?? Colors.grey.withOpacity(0.5)
            )
          ]
        ),
        child: ElevatedButton(
          onPressed: OnTap,
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black, 
           primary:color ??PrimaryColour ,
           padding: EdgeInsets.all(PaddingVerticalText??5),
          
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 30)),
              ),
              ),
          child: Container(
            margin: const EdgeInsets.all(0),
            alignment: alignment ?? Alignment.center,
            width: Width,
            height: Height,
            decoration:  BoxDecoration(
                    borderRadius:  BorderRadius.all(Radius.circular(radius ?? 30)),
                  ),
            child: Child,
          ),
        ),
      ),
    );
       
  }


}

