import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';



 class metroTicket extends StatelessWidget{

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

   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      Text("Bus 12",style: TextStyle(
        color:Color(0xff3E548D),
        fontSize:18,fontWeight: FontWeight.bold  ),),
      SizedBox(height: 10,),
      Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: PrimaryColour,
              borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.near_me_outlined,color: Colors.white,),
          ),
          SizedBox(width: 10,),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cairo",style: TextStyle(color: Colors.black,
              fontSize: 14),),
              SizedBox(height: 2,),
              Text("15-Dec-2022",style: TextStyle(color: Colors.grey,
              fontSize: 13),)
            ],
          )
        ],
      ),
      SizedBox(height: 5,),
      Row(children: [
        Container(
          child: Icon(Icons.location_pin,color: Colors.white, ),
             width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: PrimaryColour,
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(width: 10,),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Qena",style: TextStyle(color: Colors.black,
              fontSize: 14),),
              SizedBox(height: 2,),
              Text("15-Dec-2022",style: TextStyle(color: Colors.grey,
              fontSize: 13),)
            ],
          )
      ],)
      ],),
      SizedBox(width: 40,),
      DottedBorder(
        padding: EdgeInsets.all(0),
dashPattern: [5,10],
        child: SizedBox(height: 90,)),
        SizedBox(width: 10,),
      Column(
        children: [
          DefaultButtom(
            OnTap: (){},
            Child: Text(
              'Detiles',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16),
                ),
                
                 Height: 30,
                  Width: 50,
                   PaddingHorizontal: 0,
                    PaddingVertical: 0,
                    radius: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Price: ",style: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.bold
                        ),),
                        Text("\$70",style: TextStyle(
                          color: PrimaryColour,fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    )
        ],
      ),
    ],
   )
  ],
);
}
}