// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:flutter/material.dart';

import 'package:easy_ticket_app/widget/components.dart';

import '../shapes/ticket_bus_detiles.dart';
import 'buy_bus_ticket.dart';

class DetilesbusTicket extends StatelessWidget {
    static const String routeName = 'Detiles bus Ticket';
   int numberTicket  ;
   Function()? ontapAdd;
   Function()? ontapMinus;
   DetilesbusTicket({
    Key? key,
    required this.numberTicket,
    this.ontapAdd,
    this.ontapMinus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column(

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
                               
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: 10,
                                    itemBuilder: (ctx, index) {
                                      return busTicketDetiles(
                ontap: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (ctx) {
                        return DefaultDialog(
                          Child: BuyBusTicket(
                            ontapAdd: ontapAdd,
                            ontapMinus: ontapMinus,
                            numberTicket: numberTicket,
                            isBusTicket: true,
                          ),
                        );
                      });
                },
              );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(
                                        height: 20,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 5,),
                              ],
                            );
  }
}
