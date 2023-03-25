// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/screen/sign_up.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';

class Sign_In extends StatelessWidget {
    Sign_In({super.key});
  
static const String routeName = 'Sign_im';
 var NationalIDController = TextEditingController();
 var PasswordController = TextEditingController();
 var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
         
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: 
                  [
                         Transform.rotate(
                angle: 44.75,
                child: logoTicket,
                ),
                         const SizedBox(height: 80,),
                         DefaultFormField
                         (
                          label:'National ID',
                          keyboardType: TextInputType.number,
                          validate: (String? value){
                            return null;
                          },
                           controller: NationalIDController,
                  
                         ),
                        const SizedBox(height: 20,),
                         DefaultFormField
                         (
                          label:'Password',
                          keyboardType: TextInputType.number,
                          validate: (String? value){
                            return null;
                          },
                           controller: PasswordController,
                  
                         ),
              Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child:  Text(
                                  'Forget Password?',
                                  style: TextStyle(fontSize: 15,color: PrimaryColour,),
                                ),
                              ),
                            ],
                          ),
              DefaultButtom(
                Child: const Text(
                'Log In',
                style: TextStyle(
                   fontSize: 28,
                   color: Colors.white,
                   fontWeight: FontWeight.w600,
                   ), ),
                    Height: 65,
                     Width: double.infinity, MarginHorizontal: 30, MarginVertical: 0,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        const SizedBox(width: 15,),
                         const Text('Don’t have an account?' , style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   ),),
                   TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context,SignUp.routeName );
                    }, 
                    child: Text(
                      'Sign up.',
                   style: TextStyle(
                   fontSize: 16,
                   color: PrimaryColour,
                   fontWeight: FontWeight.w600,
                   ),))
                       ],
                     )
                  ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}