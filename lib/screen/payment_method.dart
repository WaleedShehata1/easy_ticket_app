// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable
// ignore_for_file: deprecated_member_use

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';
@override
class myTicketBus extends StatelessWidget {
  Function()? onTap;
    Function()? onTapDelete;
  Function()? onTapEdit;
  Function()? onTapQR;
   myTicketBus({
    Key? key,
    this.onTap,
    this.onTapDelete,
    this.onTapEdit,
    this.onTapQR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
         boxShadow: [
            BoxShadow(
                    offset: const Offset(0, 0),
                     color: Colors.grey.withOpacity(1),
                      spreadRadius: 0,
                       blurRadius: 2),
         ]
        ),
        child: Column(
          children: [
            Stack(
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
                      bottomLeft: Radius.circular(10)),
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(-0.5, 3),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
                  ]),
            ),
            const SizedBox(
              width: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0.5, 3),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
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
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text(
                    "Bus 12",
                    style: TextStyle(
                        color: textColour,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.near_me_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Cairo",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "15-Dec-2022",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Qena",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "15-Dec-2022",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
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
                                  bottomRight: Radius.circular(50)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(1),
                                  spreadRadius: 0,
                                  blurRadius: 0.5,
                                  offset: const Offset(
                                      0, -0.1), // changes position of shadow
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
                                  bottomRight: Radius.circular(50)),
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
                  
                ],
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 3),
                 child: Row(
                   children: [
                    const SizedBox(
                      width: 15,
                    ),
                     DottedBorder(
                        padding: const EdgeInsets.all(0),
                        dashPattern: const [5, 8],
                        child: const SizedBox(
                          height: 86,
                        )),
                   ],
                 ),
               ),
             
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
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(1),
                              spreadRadius: 0,
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
                                  topRight: Radius.circular(50)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(1),
                                  spreadRadius: 1.5,
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
                                  topRight: Radius.circular(50)),
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
                  
                ],
              ),
            ],
                  ),
             
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                          '10:10 AM',
                          style: TextStyle(
                              color: textColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(height: 10,),
                  DefaultButtom(
                    OnTap: onTap,
                    Child: const Text(
                      'Tracking',
                      style: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Height: 30,
                    Width: 70,
                    PaddingHorizontal: 0,
                    PaddingVertical: 0,
                    radius: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Price: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$70",
                        style: TextStyle(
                            color: PrimaryColour, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
                  ),
          ),
        ),
       
      ],
    ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultButtom(color: Colors.white,
                    Child: const Icon(Icons.delete_outlined,color: Colors.black,size: 35,),
                    OnTap: onTapDelete,
                     radius: 10,
                    Height: 50,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 5),
                DefaultButtom( color: Colors.white,
                  Child: const Icon(Icons.edit,color: Colors.black,size: 35,),
                    radius: 10,
                    Height: 50,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15,OnTap:onTapEdit,),
                DefaultButtom(OnTap: onTapQR,color: Colors.white,
                   Child: const Icon(Icons.qr_code_2_rounded,color: Colors.black,size: 35,),
                      radius: 10,
                    Height: 50,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 5),
              ],
            )
          ],
        ),
      ),
    );
  }
}