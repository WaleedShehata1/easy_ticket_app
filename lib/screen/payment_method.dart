import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
    static const String routeName = 'Payment Method ';

  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back,size: 40,color: Colors.black,),onPressed: () => Navigator.pop(context),
      ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          DefaultButtom(Child: const Icon(Icons.credit_card_outlined,
                  size: 80.0, color: Colors.white),
                  radius: 15,
                  OnTap: () {
                    
                  },
                   Height: 120, Width:150, PaddingHorizontal:0, PaddingVertical: 0),
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
          DefaultButtom(Child: const Icon(Icons.wallet, size: 80.0, color: Colors.white),
                  radius: 15,
                  OnTap: () {
                    
                  },
                   Height: 120, Width:150, PaddingHorizontal:0, PaddingVertical: 0),
        
          
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
    );
  }
}