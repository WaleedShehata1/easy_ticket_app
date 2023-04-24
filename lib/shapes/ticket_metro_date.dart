// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';

class dateMetroTicket extends StatelessWidget {
  const dateMetroTicket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 170,
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
                width: 77,
              ),
            ],
          ),
          Container(
            width: 270,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      height: 120,
                      width: 167,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 35,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.near_me_outlined,color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'Elshuhada',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: DottedBorder(
                                  padding: const EdgeInsets.all(0),
                                  dashPattern: const [2, 1],
                                  child: const SizedBox(
                                    height: 10,
                                  )),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 35,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text('Now',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                                ),
                                Text(
                                  'girls school',
                                  style: TextStyle(
                                    color: PrimaryColour,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: DottedBorder(
                                  padding: const EdgeInsets.all(0),
                                  dashPattern: const [2, 1],
                                  child: const SizedBox(
                                    height: 10,
                                  )),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 35,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                                ),
                                const Text(
                                  'Adly Mansour',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Text('waiting : one minute',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 12),),
                            )
                          ]),
                    ),
                    Column(
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
                                            offset: const Offset(0,
                                                -0.1), // changes position of shadow
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
                        DottedBorder(
                          color: Colors.grey,
                            padding: const EdgeInsets.all(0),
                            dashPattern: const [8, 9],
                            child: const SizedBox(
                              height: 90,
                            )),
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
                    Container(
                      margin: const EdgeInsets.only(left: 3),
                      height: 125,
                      width: 70,
                      decoration: BoxDecoration(
                          color: PrimaryColour,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(height: 10,),
                                  Text('Metro',
                                  style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20) ,),
                                  Text('1258',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20) ,),
                                  SizedBox(height: 25,),
                                  Text('9:55pm',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16) ,),
                                 SizedBox(height:15,),
                                ]
                                ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
