// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: non_constant_identifier_names
Color PrimaryColour =const Color(0xffFE8668);


// ignore: camel_case_types
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
  String? Function(String?) validate;

   DefaultFormField({
    Key? key,
    this.textColor,
    this.fontSize,
    required this.controller,
    this.keyboardType,
    required this.label,
    this.prefixIcon,
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
 double MarginHorizontal;
 double MarginVertical;
 DefaultButtom({
    Key? key,
    this.OnTap,
    required this.Child,
    required this.Height,
    required this.Width,
    required this.MarginHorizontal,
    required this.MarginVertical,
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap:OnTap,
          splashColor: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: const BorderRadius.all(Radius.circular(30)) ,
           
             child: Container(
               margin:  EdgeInsets.symmetric(vertical: MarginVertical,horizontal: MarginHorizontal),
               alignment: Alignment.center,
               padding: const EdgeInsets.all(10),
               width: Width,
               height: Height,
               decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: PrimaryColour,
              ),
               child: Child,
             ),
           );
       
  }


}
