// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

import 'package:easy_ticket_app/Pop_Up/bus_detiles.dart';
import 'package:easy_ticket_app/widget/components.dart';

class BuyBusTicket extends StatelessWidget {
 
  late bool isBusTicket ;
   BuyBusTicket({
    Key? key,
     required this.isBusTicket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
                          children: [
                            isBusTicket?
                             Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                         IconButton(
                                            onPressed: () { 
                                              Navigator.pop(context);
                                            showDialog(context: context, builder: (context){
                                              return DefaultDialog(Child: DetilesbusTicket());
                                            });
                                            },
                                            icon: const Icon(
                                              Icons.arrow_back,
                                              size: 35,
                                            )),
                                        IconButton(
                                            onPressed: () {
                                               Navigator.pop(context);
                                             
                                            },
                                            icon: const Icon(
                                              Icons.close_outlined,
                                              size: 35,
                                            ))
                                      ],
                                    ):Row(
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
                                    Text(isBusTicket?'Bus 12':'Ticket 1'),
                                   Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                      child:isBusTicket? Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
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
                  Row(children: [
                     Container(
                      alignment: Alignment.center,
                        child: const Text('Now'),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('girls school')
                  ],),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                         width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)),
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
                                        ):Container(
                                          width: double.infinity,
                                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Metro'),
                                              SizedBox(height: 10,),
                                              Text('number'),
                                              Text('of stations'),
                                              SizedBox(height: 5,),
                                              Container(
                                                alignment: Alignment.center,
                                                  width: 70,
                                                                height: 40,
                                                                decoration: BoxDecoration(
                                                                    color: PrimaryColour,
                                                                    borderRadius: BorderRadius.circular(10)),
                                              child: Text('7'),
                                              )
                                            ],
                                          ),
                                        ),
                                    ),
                          Divider(height: 2, color: Colors.grey,endIndent: 10,indent: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('9:00 AM'),
                                    Text('9:00 AM'),
                                  ],
                                ),
                                Row(
                                  
                                  children: [
                                    Text('Price: '),
                                    Text('\$23'),
                                  ],
                                ),
                              ],
                            ),
                          )
                                    
                          ],
                         );
    
  }
}
