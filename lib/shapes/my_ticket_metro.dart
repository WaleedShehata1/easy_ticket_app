// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';

class myTicketMetro extends StatelessWidget {
  Function()? onTap;
  Function()? onTapDelete;
  Function()? onTapQR;

  myTicketMetro({
    Key? key,
    this.onTap,
    this.onTapDelete,
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
                      width: 155,
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
                      width: 26,
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
                      width: 89,
                    ),
                  ],
                ),
                Container(
                  width: 270,
                  height: 122,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
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
                        const SizedBox(
                          width:80,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 92,
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
                        const SizedBox(
                          width: 80,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Number",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Of Stations",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 40,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Text(
                            "7",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7), color: PrimaryColour),
                      width: 22,
                      child: const Padding(
                        padding: EdgeInsets.only(right: 3, left: 1, bottom: 2, top: 2),
                        child: Text(
                          'Me t r o',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    DottedBorder(
                        padding: const EdgeInsets.all(0),
                        dashPattern: const [5, 10],
                        child: const SizedBox(
                          height: 90,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                         Text(
                          'Ticket 2',
                          style: TextStyle(
                              color: textColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container( 
                          alignment: Alignment.center,
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)
                          ),
                           child: const Text(
                            'Metro',
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              color: Colors.white,
                               fontSize: 18,
                               fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                     const SizedBox(
                      width: 5,
                    ),
                  ],
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultButtom(
                  PaddingVerticalText: 0,
                  color: Colors.white,
                    Child: const Icon(Icons.delete_outlined,color: Colors.black,size: 35,),
                    OnTap: onTapDelete,
                     radius: 10,
                    Height: 50,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15),
               
                DefaultButtom(OnTap: onTapQR,color: Colors.white,
                   Child: const Icon(Icons.qr_code_2_rounded,color: Colors.black,size: 35,),
                      radius: 10,                    Height: 50,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15),
              ],
            )
          ],
        ),
      ),
    );
  }
}
