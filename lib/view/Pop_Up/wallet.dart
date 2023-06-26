// ignore_for_file: must_be_immutable

import 'package:easy_ticket_app/view/Pop_Up/wallet_message.dart';
import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/cubit/app/app_state.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../network/remote/end_points.dart';
import '../../widget/Buttom.dart';
import '../../widget/constants.dart';
import '../../widget/dialog.dart';
import '../../widget/text_Form_Field.dart';

class WalletScreen extends StatelessWidget {
  var passwordController = TextEditingController();

  WalletScreen({super.key});
  static const String routeName = 'Wallet ';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Map<String, dynamic>? ticket;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is PayWalletSuccessState) {
            if (state.payWallet!.status != false) {
              print("valueScreen==${state.payWallet}");
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (context) {
                    return DefaultDialog(Child: const MessageWalletScreen());
                  });
              Navigator.pop(context);
              showToast(
                  text: state.payWallet!.message!, state: ToastStates.success);
            } else if (state.payWallet!.status == false) {
              showToast(
                  text: state.payWallet!.message!, state: ToastStates.error);
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
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Wallet',
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total : ',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20.sp),
                      ),
                      Text(
                        "${(ticketDetails!["totalprice"])} EL",
                        style: TextStyle(
                          color: PrimaryColour,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 50.h,
                    width: 250.w,
                    child: DefaultFormField(
                        radius: 15.r,
                        controller: passwordController,
                        label: 'Password',
                        validate: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter your Password';
                          }
                          return null;
                        }),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  DefaultButtom(
                    Child: Text(
                      'Pay with wallet',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16.sp),
                    ),
                    Height: 40.h,
                    Width: 220.w,
                    PaddingHorizontal: 15.w,
                    PaddingVertical: 10.h,
                    radius: 15.r,
                    OnTap: () {
                      ticket = ticketDetails;
                      if (formKey.currentState!.validate()) {
                        print("object");
                        print(ticketDetails);
                        print(ticket!['ticket_type']);
                        print(ticket!['id']);
                        print(passwordController.text);
                        print(ticket!['count']);
                        print(ticket!['totalprice']);
                        AppCubit.get(context).payWallet(
                          /*       bus_id: (ticket!['ticket_type'] == 'metro'
                              ? 0
                              : ticket!['id']),
                          count: ticket!['count'],
                          ticket_id: ticket!['ticket_type'] == 'metro'
                              ? ticket!['ticket_type']
                              : 0,
                          ticket_type: ticket!['ticket_type'],
                          totalprice: ticket!['totalprice'], */
                          bus_id: 0,
                          count: 2,
                          ticket_id: 1,
                          ticket_type: "metro",
                          totalprice: 10,
                          password: passwordController.text,
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
