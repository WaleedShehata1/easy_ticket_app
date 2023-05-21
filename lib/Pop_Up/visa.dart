// ignore_for_file: avoid_print

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';

class VisaScreen extends StatefulWidget {
  const VisaScreen({super.key});

  @override
  State<VisaScreen> createState() => _VisaScreenState();
}

class _VisaScreenState extends State<VisaScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
      borderRadius: BorderRadius.circular(15).r,
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
            onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
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
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
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
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  labelText: 'Expire Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  focusedBorder: border,
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  enabledBorder: border,
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: InputDecoration(
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                  labelText: 'Card Holder',
                ),
                onCreditCardModelChange: onCreditCardModelChange,
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
                OnTap: _onValidate,
              )
            ],
          ),
        ],
      ),
    );
  }
}
