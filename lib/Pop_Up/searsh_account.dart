// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace
import 'package:flutter/material.dart';

import '../widget/components.dart';

class SearshAccount extends StatelessWidget {
var userId= TextEditingController();
Function()? onTap;
String?  Function(String?) Validate;

   SearshAccount({
    Key? key,
    this.onTap,
    required this.Validate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     
       child: Column(
        mainAxisSize:MainAxisSize.min ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:  const Icon(Icons.close_outlined,size: 35,))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
         const Text('Enter',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),
          const Text('the national number to search for your account.',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),
          const SizedBox(height: 30,),
          DefaultFormField(
            controller:userId ,
            label:null,
            validate:Validate ,MaxLength: 14,keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 40,),
          DefaultButtom(Child: const Text("Searsh",style: TextStyle(fontSize: 24),),
           Height: 50, Width: 200,
            PaddingHorizontal: 0, PaddingVertical:0,
            OnTap:onTap),
            const SizedBox(height: 20,)
        ],
       ),
    );
  }
}
