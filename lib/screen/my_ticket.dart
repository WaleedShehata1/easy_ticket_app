// ignore_for_file: camel_case_types

import 'dart:ui';
import 'package:flutter/material.dart';
import '../Pop_Up/QR.dart';
import '../shapes/my_ticket_bus.dart';
import '../shapes/my_ticket_metro.dart';
import '../widget/components.dart';
import '../Pop_Up/ticket_modification.dart';

class myTicket extends StatefulWidget {
  const myTicket({super.key});
  @override
  State<myTicket> createState() => _myTicketState();
}

class _myTicketState extends State<myTicket> {
  bool selectBottom = true;
  int i = 10;
  late Widget list;
  late bool buyTicket;

  bool switshTicket = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "asset/images/unsplash_nG3q_mlv8yI.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 90,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "My Ticket",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DefaultButtom(
              Child: const Icon(
                Icons.directions_train_sharp,
                color: Colors.white,
                size: 30,
              ),
              Height: 50,
              Width: 45,
              radius: 12,
              PaddingHorizontal: 0,
              PaddingVertical: 15,
              OnTap: () {
                setState(() {
                  selectBottom = false;
                });
              },
              color: selectBottom ? Colors.grey : PrimaryColour,
            ),
            DefaultButtom(
              Child: const Icon(
                Icons.directions_bus_filled_rounded,
                color: Colors.white,
                size: 30,
              ),
              Height: 50,
              Width: 45,
              radius: 12,
              PaddingHorizontal: 0,
              PaddingVertical: 15,
              color: selectBottom ? PrimaryColour : Colors.grey,
              OnTap: () {
                setState(() {
                  selectBottom = true;
                });
              },
            ),
          ],
        ),
        Expanded(
          child: list = selectBottom
              ? ListView.separated(
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return myTicketBus(
                      onTap: () {},
                      onTapDelete: () {},
                      onTapEdit: () {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return DefaultDialog(
                                  Child: Column(
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
                                            Icons.close_outlined,
                                            size: 35,
                                          ))
                                    ],
                                  ),
                                  const TicketModificationScreen(),
                                ],
                              ));
                            });
                      },
                      onTapQR: () {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return DefaultDialog(
                                  Child:const GetQR() ,);
                            });
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                )
              : ListView.separated(
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return myTicketMetro(
                      onTap: () {},
                      onTapDelete: () {},
                      onTapQR: () {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return DefaultDialog(
                                  Child: Column(
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
                                            Icons.close_outlined,
                                            size: 35,
                                          ))
                                    ],
                                  ),
                                  const Icon(
                                    Icons.qr_code_2_outlined,
                                    size: 200,
                                  ),
                                ],
                              ));
                            });
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                ),
        )
      ]),
    );
  }
}
