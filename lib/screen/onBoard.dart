// ignore_for_file: camel_case_types, file_names, unused_import
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/shapes/shape_GetStart.dart';
import 'package:flutter/material.dart';
import '../widget/components.dart';

class onBoard extends StatelessWidget {
  const onBoard({super.key});
  static const String routeName = 'onBoard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  getStartShape,
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Welcome to Easy Ticket',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 320,
                    child: Text(
                      "Quick & Easy to Travel anywhere & anytime",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
      /*                 Container(
                        height: 65,
                        width: 300,
                        decoration: BoxDecoration(
                          color: PrimaryColour,
                         borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(

                          onPressed:()
                                    {
                                     firstTime.putData(key: 'firstTime', valu: true).then(
                                      (value) => Navigator.pushReplacementNamed(context, Sign_In.routeName ));
                                     Navigator.pushReplacementNamed(context, Sign_In.routeName );
                                    },
                          child: const Center(
                            child: Text(
                                        'Get Started',textAlign: TextAlign.center,
                                        style:TextStyle(
                                              color: Colors.white,
                                              fontSize: 38,
                                              fontWeight: FontWeight.w600
                                              ),
                                              ),
                          ),
                        ),
                      ), */
               DefaultButtom(
                OnTap: () {
                 firstTime.putData(key: 'firstTime', valu: true).then(
                                      (value) => Navigator.pushReplacementNamed(context, Sign_In.routeName ));
                                     Navigator.pushReplacementNamed(context, Sign_In.routeName );
                },
                Child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 28,
                      color: Colors.white,
                    )
                  ],
                ),
                Height: 60,
                Width: double.infinity,
                PaddingHorizontal: 30,
                PaddingVertical: 30,
              ), /* 
               InkWell(

                splashColor: Colors.blue,
                borderRadius: const BorderRadius.all(Radius.circular(30)) ,
                 onTap: () {
                  Navigator.pushNamed(context, Sign_In.routeName );
                },
                 child: Container(
                   margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                   alignment: Alignment.center,
                   padding: const EdgeInsets.all(10),
                   width: double.infinity,
                   
                   decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: PrimaryColour,
                  ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'get started'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 30,
                        weight: 50,
                        color: Colors.white,
                      )
                    ],
                  ),
                 ),
               ), */
            ],
          ),
        ),
      ),
    );
  }
}
