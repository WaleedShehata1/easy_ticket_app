import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: Column(children: [
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
                        size: 35.w,
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
           SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                           EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
                        color: const Color.fromARGB(255, 231, 230, 230),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '70 LE',
                              style: TextStyle(
                                
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Text(
                              'رصيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            )
                          ]),
                    ),
                     SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15).w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).r,
                        color: const Color.fromARGB(255, 231, 230, 230),
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                             Text(
                              'تفاصيل الشحن',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 22.sp),
                            ),
                             SizedBox(
                              height: 20.h,
                            ),
                        
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
                              radius: 15.r,
                              hint:  Text(
                                'اختر',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.sp,
                                    color: Colors.black),
                              ),
                              height: 50.h,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 50.h,
                              child: DefaultFormField(
                                colorBorder: Colors.white,
                                radius: 15,
                                controller: walletController,
                                label: "ادخل المبلغ",
                                validate: (p0) {},
                              ),
                            ),
                             SizedBox(
                              height: 30.h,
                            ),
                            DefaultButtom(
                              Child:  Text(
                                'تأكيد',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22.sp,
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
                                                    icon:  Icon(
                                                      Icons.close,
                                                      size: 30.w,
                                                    ))
                                              ],
                                            ),
                                            Text('ادخل الرقم السري',
                                                style: TextStyle(
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.w800,
                                                )),
                                            SizedBox(
                                              height: 40.h,
                                            ),
                                            SizedBox(
                                              height: 40.h,
                                              child: DefaultFormField(
                                                radius: 15,
                                                controller: PasswordController,
                                                label: null,
                                                validate: (p0) {},
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30.h,
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(
                                                  horizontal: 40.w),
                                              child: DefaultButtom(
                                                Child: Text(
                                                  'تاكيد',
                                                  style: TextStyle(
                                                      fontSize: 20.sp,
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
                                                                            Icon(
                                                                          Icons
                                                                              .close,
                                                                          size:
                                                                              30.w,
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
                                                                          30.w,
                                                                          color:Colors.black,
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
            ),
          ),
        ]),
      ),
    );
  }
}
