import 'package:easy_ticket_app/view/Pop_Up/visa.dart';
import 'package:easy_ticket_app/view/Pop_Up/wallet.dart';
import 'package:flutter/material.dart';

import '../../widget/Buttom.dart';
import '../../widget/dialog.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const String routeName = 'Payment Method ';

  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              DefaultButtom(
                  Child: const Icon(Icons.credit_card_outlined,
                      size: 80.0, color: Colors.white),
                  radius: 15,
                  OnTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return DefaultDialog(
                            Child: VisaScreen(
                              isWallet: false,
                            ),
                          );
                        });
                  },
                  Height: 120,
                  Width: 150,
                  PaddingHorizontal: 0,
                  PaddingVertical: 0),
              const SizedBox(height: 20),
              const Text(
                'Visa',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 70),
              DefaultButtom(
                  Child:
                      const Icon(Icons.wallet, size: 80.0, color: Colors.white),
                  radius: 15,
                  OnTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return DefaultDialog(
                              paddingHorizontal: 5, Child: WalletScreen());
                        });
                  },
                  Height: 120,
                  Width: 150,
                  PaddingHorizontal: 0,
                  PaddingVertical: 0),
              const SizedBox(height: 20),
              const Text(
                'Wallet',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
