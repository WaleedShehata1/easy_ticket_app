

import 'package:easy_ticket_app/Pop_Up/visa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/components.dart';

class CreditCard extends StatefulWidget {
   CreditCard({super.key});
  static const String routeName = 'Credit Card';

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
 var ScaffoldKey = GlobalKey<ScaffoldState>();
 String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  bool addCredit=false;
  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  void initState() {
    border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: PrimaryColour.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  void _onValidate() {
    if (formKey.currentState!.validate()) {
      print('valid!');
    } else {
      print('invalid!');
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: ScaffoldKey,
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
                                    boxShadow: const [
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
                                          children: const [
                                            Text('Bank',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        const SizedBox(height: 10,),
                                        const Text('4224 xxxx xxxx 7777',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 20,),
                                        const Align(alignment: Alignment.center,
                                          child: Text('Valid  MM/YY',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
                                        const SizedBox(height: 10,),
                                        const Text('Waleed mohamed shehate',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                      ]
                                      ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                TextButton(
                                  onPressed: (){}, child: const Text('Remove',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),))

                              ],
                            ),
                            );
                         }
                         );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: PrimaryColour
                      ),
                      child: Row(
                        children: const [
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
          child: const Icon(Icons.add,size: 35,),
          onPressed:() 
          {
           if(addCredit==true)
           { 
              setState(() {
              addCredit =false;
            });
            ScaffoldKey.currentState?.showBottomSheet((context) {
              return Container(
                height: MediaQuery.of(context).size.height *0.70,
                width: double.infinity,
                decoration:  const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -3),
                      color: Colors.grey,
                      blurRadius: 5
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(25),
                    topRight:Radius.circular(25),
                     ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Center(
                         child: SingleChildScrollView(
                           child: Column(children: [
                            CreditCardWidget(
                                     height: 160,
                                     width: 280,
                                     cardNumber: cardNumber,
                                     expiryDate: expiryDate,
                                     cardHolderName: cardHolderName,
                                     cvvCode: cvvCode,
                                     bankName: 'Axis Bank',
                                     showBackView: isCvvFocused,
                                     obscureCardNumber: true,
                                     obscureCardCvv: true,
                                     isHolderNameVisible: true,
                                     cardBgColor: Colors.black38,
                                     isSwipeGestureEnabled: true,
                                     onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                                     customCardTypeIcons: <CustomCardTypeIcon>[],
                                   ),
                                   Column(
                                     mainAxisSize: MainAxisSize.min,
                                     children: <Widget>[
                                       CreditCardForm(
                                         formKey: formKey,
                                         obscureCvv: true,
                                         obscureNumber: true,
                                         cardNumber: cardNumber,
                                         cvvCode: cvvCode,
                                         isHolderNameVisible: true,
                                         isCardNumberVisible: true,
                                         isExpiryDateVisible: true,
                                         cardHolderName: cardHolderName,
                                         expiryDate: expiryDate,
                                         themeColor: Colors.blue,
                                         cardNumberDecoration: InputDecoration(
                                           labelText: 'Number',
                                           hintText: 'XXXX XXXX XXXX XXXX',
                                            focusedErrorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           errorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           focusedBorder: border,
                                           enabledBorder: border,
                                         ),
                                         expiryDateDecoration: InputDecoration(
                                           labelStyle: TextStyle(fontSize: 16.sp),
                                           focusedBorder: border,
                                           enabledBorder: border,
                                            focusedErrorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           errorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           labelText: 'Expired Date',
                                           hintText: 'XX/XX',
                                         ),
                                         cvvCodeDecoration: InputDecoration(
                         
                                           errorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           focusedBorder: border,
                                           focusedErrorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           enabledBorder: border,
                                           labelText: 'CVV',
                                           hintText: 'XXX',
                                         ),
                                         cardHolderDecoration: InputDecoration(
                                            focusedErrorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           errorBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(15),
                                             borderSide: const BorderSide(width: 2.0, color: Colors.red),
                                           ),
                                           focusedBorder: border,
                                           enabledBorder: border,
                                           labelText: 'Card Holder',
                                         ),
                                         onCreditCardModelChange: onCreditCardModelChange,
                                       ),
                                       DefaultButtom(
                                         Child: const Text(
                                           'Add Credit',
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'halter',
                                             fontSize: 16,
                                             package: 'flutter_credit_card',
                                           ),
                                         ),
                                         Height: 40,
                                         Width: 220,
                                         PaddingHorizontal: 15,
                                         PaddingVertical: 15,
                                         OnTap: _onValidate,
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                         ),
                       ),
                        
                        )
                     );

                     }
              );
              }else{
                setState(() {
                  addCredit=true;
                });
                Navigator.pop(context);
                
              }
      
              
            }
            ),
            ),);
          }
          
      
    
  }
