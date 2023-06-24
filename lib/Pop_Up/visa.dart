// ignore_for_file: avoid_print, must_be_immutable

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:easy_ticket_app/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/app/app_state.dart';
import '../widget/Buttom.dart';

class VisaScreen extends StatefulWidget {
  VisaScreen({super.key, this.cost, required this.isWallet});
  dynamic cost = 0.0;
  bool isWallet = false;
  @override
  State<VisaScreen> createState() => _VisaScreenState();
}

class _VisaScreenState extends State<VisaScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  Map<String, dynamic>? ticket;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is chargeWalletSuccessState) {
            if (state.chargeWallet!.status != false) {
              print("valueScreen==${state.chargeWallet}");
              CacheHelper.saveData(
                  key: 'wallet', value: state.chargeWallet!.wallet);
              print('wallet${CacheHelper.getData(key: 'wallet')}');
              Navigator.pop(context);
              showToast(
                  text: state.chargeWallet!.message!,
                  state: ToastStates.success);
            } else if (state.chargeWallet!.status == false) {
              showToast(
                  text: state.chargeWallet!.message!, state: ToastStates.error);
            } else {
              showToast(
                  text:
                      'There is a problem connecting to the server or the Internet',
                  state: ToastStates.warning);
            }
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close,
                          size: 30.w,
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(15.w),
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.all(3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: PrimaryColour,
                  ),
                  child: Text(
                      "Total : ${widget.isWallet ? widget.cost : (ticketDetails!["totalprice"])} EL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
                CreditCardWidget(
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
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: const <CustomCardTypeIcon>[],
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
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide: BorderSide(
                            color: PrimaryColour.withOpacity(0.7),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide: BorderSide(
                            color: PrimaryColour.withOpacity(0.7),
                            width: 2.0,
                          ),
                        ),
                      ),
                      expiryDateDecoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 16.sp),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide: BorderSide(
                              color: PrimaryColour.withOpacity(0.7),
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide: BorderSide(
                              color: PrimaryColour.withOpacity(0.7),
                              width: 2.0,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.red),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.red),
                          ),
                          labelText: 'Expire Date',
                          hintText: 'XX/XX',
                          errorMaxLines: 2),
                      cvvCodeDecoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.red),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide: BorderSide(
                              color: PrimaryColour.withOpacity(0.7),
                              width: 2.0,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.red),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15).r,
                            borderSide: BorderSide(
                              color: PrimaryColour.withOpacity(0.7),
                              width: 2.0,
                            ),
                          ),
                          labelText: 'CVV',
                          hintText: 'XXX',
                          errorMaxLines: 2),
                      cardHolderDecoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide: BorderSide(
                            color: PrimaryColour.withOpacity(0.7),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r,
                          borderSide: BorderSide(
                            color: PrimaryColour.withOpacity(0.7),
                            width: 2.0,
                          ),
                        ),
                        labelText: 'Card Holder',
                      ),
                      onCreditCardModelChange: (creditCardModel) {
                        setState(() {
                          cardNumber = creditCardModel.cardNumber;
                          expiryDate = creditCardModel.expiryDate;
                          cardHolderName = creditCardModel.cardHolderName;
                          cvvCode = creditCardModel.cvvCode;
                          isCvvFocused = creditCardModel.isCvvFocused;
                        });
                      },
                    ),
                    DefaultButtom(
                      Child: Text(
                        'Validate',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'halter',
                          fontSize: 14.sp,
                          package: 'flutter_credit_card',
                        ),
                      ),
                      Height: 40,
                      Width: 220,
                      PaddingHorizontal: 15,
                      PaddingVertical: 15,
                      OnTap: () {
                        if (formKey.currentState!.validate()) {
                          AppCubit.get(context).ChargeWallet(
                            visa_number: cardNumber,
                            The_owner_of_the_visa: cardHolderName,
                            cost: widget.cost,
                            cvv: int.parse(cvvCode),
                            expire: expiryDate,
                          );
                          print('valid!');
                        } else {
                          print('invalid!');
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
