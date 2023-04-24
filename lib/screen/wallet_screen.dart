import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WalletProfile extends StatelessWidget {
  var walletController = TextEditingController();

  var PasswordController = TextEditingController();

  WalletProfile({super.key});
  static const String routeName = 'Wallet Profile';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
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
                        width: 100,
                      ),
                      const Text(
                        'Wallet',
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
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 231, 230, 230),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '70 LE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            'رصيد',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 231, 230, 230),
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const Text(
                            'تفاصيل الشحن',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 22),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          /*  const Padding(
                            padding: EdgeInsetsDirectional.only(end: 10),
                            child: Align
                            (alignment: Alignment.centerRight,
                             child  :Text(
                                'اختر وسيلة الشحن',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),),
                          ), */
                          DefaultDropdown(
                            /*  items: const [
                              DropdownMenuItem(child: Text(
                              'اختر وسيلة الشحن',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            ),
                            ], */
                            colorBorder: Colors.white,
                            onChanged: (p0) {},
                            radius: 15,
                            hint: const Text(
                              'اختر',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            child: DefaultFormField(
                              colorBorder: Colors.white,
                              radius: 15,
                              controller: walletController,
                              label: "ادخل المبلغ",
                              validate: (p0) {},
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          DefaultButtom(
                            Child: const Text(
                              'تأكيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Height: 40,
                            Width: double.infinity,
                            PaddingHorizontal: 0,
                            PaddingVertical: 0,
                            OnTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(
                                      Child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                                          Text('ادخل الرقم السري',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800,
                                              )),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          SizedBox(
                                            height: 40,
                                            child: DefaultFormField(
                                              radius: 15,
                                              controller: PasswordController,
                                              label: null,
                                              validate: (p0) {},
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40),
                                            child: DefaultButtom(
                                              Child: Text(
                                                'تاكيد',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Height: 40,
                                              Width: double.infinity,
                                              PaddingHorizontal: 0,
                                              PaddingVertical: 0,
                                              OnTap: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return DefaultDialog(
                                                        Child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .close,
                                                                        size:
                                                                            30,
                                                                      ))
                                                                ],
                                                              ),
                                                              Text(
                                                                'تم شحن المحفظه بنجاحه',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ]),
                                                      );
                                                    });
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            radius: 15,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
