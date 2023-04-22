import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

import 'QR.dart';

class MessageWalletScreen extends StatelessWidget {
  const MessageWalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DefaultDialog(Child: const GetQR());
                      });
                },
                icon: const Icon(
                  Icons.close,
                  size: 35,
                ))
          ],
        ),
        const Icon(
          Icons.done,
          size: 70,
          color: Colors.black,
        ),
        const SizedBox(
          height: 30,
          width: double.infinity,
        ),
        const Text(
          'Done',
          style: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
