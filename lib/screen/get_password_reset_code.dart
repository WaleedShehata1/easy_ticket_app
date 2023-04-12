import 'package:dotted_border/dotted_border.dart';
import 'package:easy_ticket_app/Pop_Up/enter_4_digit.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

import '../Pop_Up/change_passwword_login.dart';

class GetPasswordResetCode extends StatefulWidget {
  static const String routeName = 'Get Password Reset Code';
  const GetPasswordResetCode({super.key});

  @override
  State<GetPasswordResetCode> createState() => _GetPasswordResetCodeState();
}

class _GetPasswordResetCodeState extends State<GetPasswordResetCode> {
  num? _radioValue = 1;
  bool nextDailog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Transform.rotate(
                  angle: 44.75,
                  child: logoTicket,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      color: PrimaryColour,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 5,
                            color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          const Text(
                            "User Name Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          DottedBorder(
                              padding: const EdgeInsets.all(0),
                              dashPattern: const [12, 15],
                              strokeWidth: 1.5,
                              color: Colors.white,
                              child: const SizedBox(
                                width: double.infinity,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "How would you like to get a password reset code ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(children: [
                              RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                groupValue: _radioValue,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue = value;
                                  });
                                },
                                value: 1,
                                title: Transform.translate(
                                  offset: const Offset(-10, 3),
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: PrimaryColour,
                                        borderRadius:
                                            const BorderRadiusDirectional.only(
                                                topStart: Radius.circular(10),
                                                topEnd: Radius.circular(10)),
                                      ),
                                      child: const Text(
                                        'Send the code to the phone number',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                subtitle: Transform.translate(
                                  offset: const Offset(-10, 0),
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 2),
                                      decoration: BoxDecoration(
                                        color: PrimaryColour,
                                        borderRadius:
                                            const BorderRadiusDirectional.only(
                                                bottomStart:
                                                    Radius.circular(10),
                                                bottomEnd: Radius.circular(10)),
                                      ),
                                      child: const Text(
                                        '+*********14',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                groupValue: _radioValue,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue = value;
                                  });
                                },
                                value: 2,
                                title: Transform.translate(
                                  offset: const Offset(-10, 0),
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: PrimaryColour,
                                        borderRadius:
                                            const BorderRadiusDirectional.only(
                                                topStart: Radius.circular(10),
                                                topEnd: Radius.circular(10)),
                                      ),
                                      child: const Text(
                                        'Send the code to the e-mail',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                subtitle: Transform.translate(
                                  offset: const Offset(-10, 0),
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 2),
                                      decoration: BoxDecoration(
                                        color: PrimaryColour,
                                        borderRadius:
                                            const BorderRadiusDirectional.only(
                                                bottomStart:
                                                    Radius.circular(10),
                                                bottomEnd: Radius.circular(10)),
                                      ),
                                      child: const Text(
                                        'w************9@gmail.com',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          DefaultButtom(
                            Child: const Text(
                              'Send',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Height: 35,
                            Width: 150,
                            PaddingHorizontal: 0,
                            radius: 15,
                            PaddingVertical: 0,
                            color: Colors.white,
                            OnTap: () {
                               showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return DefaultDialog(
                                          Child: Enter4Digit(
                                            Validate: (p0) {
                                              return null;
                                            },
                                            onTap: () {setState(() {
                                              Navigator.pop(context);
                                             showDialog(context: context, builder: (BuildContext context){
                                              return DefaultDialog(
                                                Child: ChangePasswordLoginScreen()
                                                );});
                                            });
                                            
                                             
                                            },
                                          ),
                                        );
                                },
                              ); 
                             
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
