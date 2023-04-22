// ignore_for_file: must_be_immutable

import 'package:easy_ticket_app/Pop_Up/message_wallet.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  var passwordController=TextEditingController();

   WalletScreen({super.key});
  static const String routeName = 'Wallet ';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Text('Wallet',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

        ),
        const SizedBox(
          height: 30,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Total : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('\$80',style: TextStyle(color: PrimaryColour,fontSize: 20,),)
          ],
        ),
        const SizedBox(height: 40,),
        SizedBox(
          height: 40,
          width: 250,
          child: DefaultFormField(
            controller: passwordController,
             label: 'Password', validate:(p0) {
               return null;
             
               
             }),
        ),
const SizedBox(
  height: 50,
),
DefaultButtom(
  Child: const Text('Pay By Wallet'),
   Height: 40,
    Width: 220, 
    PaddingHorizontal:0,
     PaddingVertical: 0,
     radius: 15,
     OnTap: () {
     Navigator.pop(context);
      showDialog(
      context: context, builder: (context){
        return DefaultDialog(Child: const MessageWalletScreen());
      });
     
   },)
      ],
    );
  }
}
