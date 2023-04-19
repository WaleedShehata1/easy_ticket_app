// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, sized_box_for_whitespace

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:easy_ticket_app/Pop_Up/bus_detiles.dart';
import 'package:easy_ticket_app/widget/components.dart';

class BuyBusTicket extends StatelessWidget {
  late bool isBusTicket;
  Function()? ontapMinus;
  Function()? ontapAdd;
  int numberTicket ;
   BuyBusTicket({
    Key? key,
    required this.isBusTicket,
    this.ontapAdd,
    this.ontapMinus,
    required this.numberTicket
     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        isBusTicket
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return DefaultDialog(
                                  Child:  DetilesbusTicket(
                                    numberTicket: numberTicket,
                                    ontapAdd: ontapAdd,
                                    ontapMinus: ontapMinus,
                                  ));
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
              )
            : Row(
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
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: Text(
            isBusTicket ? 'Bus 12' : 'Ticket 1',
            style: TextStyle(
                color: textColour, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: isBusTicket
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 40,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(13)),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "15-Dec-2022",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16,fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 40,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(13)),
                          child: const Text('Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                         Text('girls school',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: PrimaryColour),)
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 40,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(13)),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "15-Dec-2022",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16,fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              : Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('Metro',style: TextStyle(color: PrimaryColour, fontWeight: FontWeight.bold,fontSize: 22),),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('number of stations',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text('7',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
        ),
         Center(
           child: DottedBorder(
            color: Colors.grey,
                          padding: const EdgeInsets.all(0),
                          dashPattern: const [2, 8],
                          child: const SizedBox(
                            width: 250,
                          )),
         ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text('9:00 AM',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: textColour),),
                  const SizedBox(height: 3,),
                  Text('9:00 AM',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: textColour),),
                  
                ],
              ),
              Row(
                children: [
                  const Text('Price: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.grey),),
                  Text('\$23',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:PrimaryColour),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultButtom(
              color: Colors.white,
              Child:Container(color: Colors.black,width: 20,height: 3,),
               Height: 40, radius: 13,Width: 30, PaddingHorizontal:20, PaddingVertical: 0,
               OnTap:ontapMinus,),
  Container(
    alignment: Alignment.center,
    width: 55,
    height: 50,
    decoration: BoxDecoration(
      color: PrimaryColour,
      borderRadius: BorderRadius.circular(13)
    ),
    child: Text("$numberTicket",
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 26,fontWeight: FontWeight.bold),),
  ),
            DefaultButtom(
              color: Colors.white,
              Child:const Icon(Icons.add,color: Colors.black,size: 30,),
               Height: 40, radius: 13,Width: 30, PaddingHorizontal: 20, PaddingVertical: 0,
               OnTap: ontapAdd,)
          ],
        )
      ],
    );
  }
}
