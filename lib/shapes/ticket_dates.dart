// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';

class metroDate extends StatelessWidget {
  Function()? ontap;
   metroDate({
    Key? key,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 167,
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
              height: 90,
              width: 77,
            ),
          ],
        ),
        Container(
          width: 270,
          height: 92,
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
                  width: 135,
                )
              ],
            ),
            const SizedBox(
              height: 62,
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
                  width: 135,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 92,
              width: 147,
              decoration: BoxDecoration(
                color: PrimaryColour,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'First Line',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            DottedBorder(
                padding: const EdgeInsets.all(0),
                dashPattern: const [5, 9],
                child: const SizedBox(
                  height: 60,
                )),
            const SizedBox(
              width: 5,
            ),
            DefaultButtom(
              OnTap: ontap,
              Child: const Text(
                'Show',
                maxLines: 1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1,
                    fontWeight: FontWeight.w900),
              ),
              Height: 35,
              Width: 50,
              radius: 10,
              PaddingHorizontal: 10,
              PaddingVertical: 0,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}
