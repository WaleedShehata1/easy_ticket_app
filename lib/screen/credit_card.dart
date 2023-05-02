

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
  
  bool addCredit=true;
  
  int itemCount=2;
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
      itemCount++;
      Navigator.pop(context);
       setState(() {
                  addCredit=!addCredit;
                  cardHolderName='';
              cardNumber='';
              expiryDate='';
              cvvCode='';
                });


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
              height: 80.h,
              decoration: BoxDecoration(
                color: PrimaryColour,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)).r,
              ),
              child: Column(
                children: [
                   SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:  Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size:25.w,
                        ),
                      ),
                       SizedBox(
                        width: 80.w,
                      ),
                       Text(
                        'Credit Card',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
            height: 30.h,
            ),
             Expanded(
               child: ListView.separated(
                itemCount: itemCount,
                itemBuilder: (ctx, index){
                  return  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: InkWell(
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
                                        icon:  Icon(
                                          Icons.close,
                                          size: 30.w,
                                        )),
                                        
                                        
                                  ],

                                ),SizedBox(height: 15.h,),
                                Container(
                                  width: double.infinity.w,
                                  height:150.h,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        color: Colors.grey,
                                        blurRadius: 5.r,
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
                                          children:  [
                                            Text('Bank',style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                         SizedBox(height: 10.h,),
                                         Text('4224 xxxx xxxx 7777',style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 20.h,),
                                         Align(alignment: Alignment.center,
                                          child: Text('Valid  MM/YY',style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.bold),)),
                                         SizedBox(height: 10.h,),
                                         Text('Waleed mohamed shehate',style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                      ]
                                      ),
                                  ),
                                ),
                                 SizedBox(height: 20.h,),
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
                        children: [
                          Icon(Icons.arrow_back,size: 30.w,color: Colors.white,),
                          SizedBox(width: 20,),
                          Text('4224 xxxx xxxx 7777',style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 20.w,),
                          SizedBox(width: 80.w, child: Text('Waleed Mohamed Shehata',textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.sp),))
                        ],
                      ),
                    ),
                                    ),
                  );
                } , separatorBuilder: (BuildContext context, int index) {
                  return  SizedBox(
                    height: 20.h,
                  );
                },
                         ),
             ),
          
           
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add,size: 35,),
          onPressed:() 
          {
           if(addCredit==true)
           { 
              setState(() {
              addCredit =!addCredit;
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
                              textStyle:  TextStyle(fontSize: 14.sp,color: Colors.white),
                                     height: 160.h,
                                     width: 280.w,
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
                                          labelStyle: TextStyle(fontSize: 16.sp),
                                           
                                           hintStyle: TextStyle(fontSize: 16.sp),
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
                                          
                                           
                                           hintStyle: TextStyle(fontSize: 16.sp),
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
                                            labelStyle: TextStyle(fontSize: 16.sp),
                                           
                                           hintStyle: TextStyle(fontSize: 16.sp),
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
                                             borderSide: BorderSide(width: 2.0.w, color: Colors.red),
                                           ),
                                           focusedBorder: border,
                                           enabledBorder: border,
                                            labelStyle: TextStyle(fontSize: 18.sp),
                                           
                                           hintStyle: TextStyle(fontSize: 18.sp),
                                           labelText: 'Card Holder',
                                         ),
                                         onCreditCardModelChange: onCreditCardModelChange,
                                       ),
                                       DefaultButtom(
                                         Child: Text(
                                           'Add Credit',
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'halter',
                                             fontSize: 16.sp,
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
                  addCredit=!addCredit;
                });
               Navigator.pop(context);
                
              }
      
              
            }
            ),
            ),);
          }
          
      
    
  }
