
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../widget/components.dart';



 class busTicket extends StatelessWidget{

   Widget build(BuildContext context) {
  return Stack(
                     alignment: Alignment.center,
                      children: [
                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                             
                            height: 120,
                            width: 151,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)
                                      ),
                            color: Colors.grey.withOpacity(1),
                            boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(-0.5, 3),
                                            color: Colors.grey.withOpacity(1),
                                            spreadRadius: 0,
                                            blurRadius: 2
                                          ),
                                        BoxShadow(
                                            offset: const Offset(0,-0.1),
                                            color: Colors.grey.withOpacity(1),
                                            spreadRadius: 0,
                                            blurRadius: 2
                                          ),
                                       ]
                            ),
                            ),
                            const SizedBox(width: 26,),
                              Container(
                               decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                      ),
                           color: Colors.grey.withOpacity(1),
                            boxShadow: [

                                BoxShadow(
                                            offset: const Offset(0.5, 3),
                                            color: Colors.grey.withOpacity(1),
                                            spreadRadius: 0,
                                            blurRadius: 2
                                          ),
                                        BoxShadow(
                                            offset: const Offset(0,-0.1),
                                            color: Colors.grey.withOpacity(1),
                                            spreadRadius: 0,
                                            blurRadius: 2
                                          ),

                            ]),
                            height: 120,
                            width: 93,

                            ),
                      ],
                    ),
                        Container(
                          width: 270,
                          height: 122,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 15,
                                       decoration: const BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)
                                    )),
                                    ),
                                    Stack(
                                        alignment: Alignment.center,
                       children: [
                         Container(
                                   width: 28,
                                  height: 14.5,
                                  decoration: BoxDecoration(
                                                             borderRadius: const BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(50),
                                                                    bottomRight: Radius.circular(50) ),
  
                                                              boxShadow: [
                                                                           BoxShadow(
                                                                          color: Colors.grey.withOpacity(1),
                                                                        spreadRadius:0,
                                                                        blurRadius: 0.5,
                                                                        offset: const Offset(0, -0.1), // changes position of shadow
                                                                      ),
                                                                     ],
                                                           ),
  
                                 ),
                         Container(
                                 width: 28,
                                 height: 15,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                                                    bottomLeft: Radius.circular(50),
                                                                    bottomRight: Radius.circular(50)
                                                                      ),
                                    boxShadow: [
                                      BoxShadow(
                                                 color: Colors.white.withOpacity(1),
                                                spreadRadius: 1,
blurRadius: 1,
offset: const Offset(0, -1.5), 
),
    ],
  ),
),
],
)
],
),
const SizedBox(width: 150,)
],
),
const SizedBox(height: 92,),
Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Stack(
alignment: Alignment.bottomCenter,
children: [
Container(
width: 30,
height: 14,
decoration: BoxDecoration(
color:Colors.white,
borderRadius: const BorderRadius.only(
topLeft: Radius.circular(20),
topRight: Radius.circular(20)
),
boxShadow: [
BoxShadow(
color: Colors.white.withOpacity(1),
spreadRadius:0,
blurRadius: 5,
offset: const Offset(0, 1), 
),
],
),
),
Stack(
alignment: Alignment.bottomCenter,
children: [
Container(
width: 28,
height: 13.5,
decoration: BoxDecoration(
borderRadius: const BorderRadius.only(
topLeft: Radius.circular(50),
topRight: Radius.circular(50)
),
boxShadow: [
BoxShadow(
color: Colors.grey.withOpacity(1),
spreadRadius:1.5,
blurRadius: 1,
offset: const Offset(0, -1), 
),
],
),
),
Container(
width: 24,
height: 15,
decoration: BoxDecoration(
borderRadius: const BorderRadius.only(
topLeft: Radius.circular(50),
topRight: Radius.circular(50)
 ),
boxShadow: [
BoxShadow(
          color: Colors.white.withOpacity(1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 2), 
         ),
        ],
       ),
      ),
     ],
    )
   ],
  ),
    const SizedBox(width: 150,),
     ],
    ),
   ],
   ),
  ],
);
}
}