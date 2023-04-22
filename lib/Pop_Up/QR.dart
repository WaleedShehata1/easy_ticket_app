// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GetQR extends StatelessWidget {
  const GetQR({super.key});
  static const String routeName = 'Get QR';
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
                                          },
                                          icon: const Icon(
                                            Icons.close_outlined,
                                            size: 35,
                                          ))
                                    ],
                                  ),
                                  const Icon(
                                    Icons.qr_code_2_outlined,
                                    size: 200,
                                  ),
                                ],
                              );
  }
}