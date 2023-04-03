import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

import '../shapes/ticket.dart';

Widget? listBuild ( {var switshBus ,var switshTicket}){
  Widget? build ;
   if(switshBus == true)
            {
       build= ListView.separated(
         itemCount: 10,
         itemBuilder: (ctx,index){
           return busTicket();
         },
          separatorBuilder: (BuildContext context, int index)
           { return const SizedBox(
           height: 20,
         ); },
         ); 
            }else
            {
              if(switshTicket==false){
              build =  Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultButtom(
                        Child: Transform.rotate(
                                  angle: -44.75,
                                  child: 
                                  const Icon(
                      Icons.confirmation_num_outlined,
                      color: Colors.white,
                      size: 30,),),
                         Height: 35,
                          Width: 50,
                          OnTap: () {
                            
                          },
                           PaddingHorizontal: 5,
                            PaddingVertical: 5,),
                      DefaultButtom(
                        Child: Text('Dates'),
                         Height: 35,
                          Width: 50,
                          OnTap: () {
                            
                          },
                           PaddingHorizontal: 5,
                            PaddingVertical: 5,),
                    ],
                  ),
                   Expanded(
                     child: ListView.separated(
                            itemCount: 10,
                            itemBuilder: (ctx,index){
                              return busTicket();
                            },
                             separatorBuilder: (BuildContext context, int index)
                              { return const SizedBox(
                              height: 20,
                            ); },
                            ),
                   ),
                ],
              ) ;
              }
            }
            return build;
}