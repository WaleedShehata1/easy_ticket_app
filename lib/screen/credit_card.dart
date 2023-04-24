

import 'package:flutter/material.dart';

import '../widget/components.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});
  static const String routeName = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
                Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: PrimaryColour,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Text(
                        'Credit Card',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                         builder: (context){
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
                                          Icons.close,
                                          size: 30,
                                        ))
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height:150,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 0
                                      )
                                    ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('Bank',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Text('4224 xxxx xxxx 7777',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 20,),
                                        Align(alignment: Alignment.center,
                                          child: Text('Valid  MM/YY',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
                                        SizedBox(height: 10,),
                                        Text('Waleed mohamed shehate',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                      ]
                                      ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                TextButton(
                                  onPressed: (){}, child: Text('Remove',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),))

                              ],
                            ),
                            );
                         }
                         );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: PrimaryColour
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                          SizedBox(width: 20,),
                          Text('4224 xxxx xxxx 7777',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 20,),
                          SizedBox(width: 80, child: Text('Waleed Mohamed Shehata',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,size: 35,),
          onPressed:() {
            
          }
          ),
      ),
    );
  }
}