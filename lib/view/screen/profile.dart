// ignore_for_file: library_private_types_in_public_api, avoid_print, prefer_if_null_operators

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/cubit/app/app_state.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/view/screen/sign_in.dart';
import 'package:easy_ticket_app/view/screen/team_members.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:easy_ticket_app/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/theme/theme_cubit.dart';
import '../../widget/Buttom.dart';
import '../../widget/dialog.dart';
import './edit_profile.dart';
import './notifications.dart';
import 'wallet_screen.dart';
import './Aboutus.dart';

class UserSettingsScreen extends StatefulWidget {
  static const String routeName = 'profile';

  const UserSettingsScreen({super.key});
  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return BlocProvider(
      create: (context) => AppCubit()..getUserData(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          user = BlocProvider.of<AppCubit>(context, listen: true);
          CacheHelper.saveData(
              key: 'wallet',
              value: user.userModel?.data!.wallet != null
                  ? user.userModel?.data!.wallet
                  : 0);
          return Scaffold(
            backgroundColor: theme.isDark ? DarkColour : Colors.white,
            body: Column(children: [
              Stack(alignment: Alignment.center, children: [
                Container(
                  decoration: BoxDecoration(
                      color: PrimaryColour,
                      borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))
                          .r),
                  height: 100.h,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          '${CacheHelper.getData(key: 'userName')}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80.w,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(3).w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8).r,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 0),
                                      color: Colors.black,
                                      blurRadius: 5.r,
                                      spreadRadius: 0,
                                    )
                                  ]),
                              width: 60.w,
                              child: Text(
                                '${CacheHelper.getData(key: 'wallet')} EL',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, EditProfileScreen.routeName);
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5).w,
                            width: 70.w,
                            height: 70.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45).r,
                                border: Border.all(
                                    width: 5.w, color: PrimaryColour)),
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 75.w,
                            ),
                          ),
                          Container(
                            width: 28.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(width: 1.w, color: Colors.grey)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                              size: 20.w,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),
                  ListTile(
                    minVerticalPadding: 15.h,
                    onTap: () {
                      Navigator.pushNamed(
                          context, NotificationsScreen.routeName);
                    },
                    leading: Icon(
                      Icons.notifications,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: 15.h,
                    onTap: () {
                      Navigator.pushNamed(context, WalletProfile.routeName);
                    },
                    leading: Icon(
                      Icons.account_balance_wallet,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => setState(() {
                      theme.changeTheme();
                      CacheHelper.putData(
                          key: 'isDarkMode', value: theme.isDark);
                    }),
                    minVerticalPadding: 15.h,
                    leading: Icon(
                      Icons.dark_mode,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'Dark Mode',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    trailing: Switch(
                      value: theme.isDark,
                      activeTrackColor: Colors.white,
                      activeColor: PrimaryColour,
                      inactiveThumbColor: PrimaryColour,
                      inactiveTrackColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          theme.changeTheme();
                          CacheHelper.putData(
                              key: 'isDarkMode', value: theme.isDark);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: 15.h,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUsScreen()),
                      );
                    },
                    leading: Icon(
                      Icons.contact_support_rounded,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: 15.h,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TeamMembersScreen()),
                      );
                    },
                    leading: Icon(
                      Icons.person_3_rounded,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'Team Members',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: 20.h,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return DefaultDialog(
                                //  backgroundColor: PrimaryColour,
                                Child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 200.w,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      'Do you want to Log out ?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          wordSpacing: 1,
                                          //  color: Colors.white,
                                          color: PrimaryColour,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DefaultButtom(
                                          Child: Text(
                                            'Yes',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Height: 30,
                                          Width: 50,
                                          PaddingHorizontal: 5,
                                          PaddingVertical: 0,
                                          OnTap: () {
                                            DioHelper.postData(
                                              url: logout,
                                              token: CacheHelper.getData(
                                                  key: 'token'),
                                              data: {
                                                'token': CacheHelper.getData(
                                                    key: 'token')
                                              },
                                            ).then((value) {
                                              print("value = ${value.data}");
                                              CacheHelper.clearData(
                                                      key: 'token')
                                                  .then((value) {
                                                if (value!) {
                                                  CacheHelper.clearData(
                                                      key: 'uid');
                                                  CacheHelper.clearData(
                                                      key: 'userName');
                                                  CacheHelper.clearData(
                                                      key: 'token');
                                                  CacheHelper.clearData(
                                                      key: 'email');
                                                  CacheHelper.clearData(
                                                      key: 'loginModel');
                                                  navigateAndFinish(
                                                      context, Sign_In());
                                                }
                                                showToast(
                                                    text: 'succeeded',
                                                    state: ToastStates.success);
                                              });
                                            }).catchError((error) {
                                              print(
                                                  "error= ${error.toString()}");
                                            });
                                          },
                                        ),
                                        DefaultButtom(
                                          Child: Text(
                                            'No',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Height: 30,
                                          Width: 50,
                                          PaddingHorizontal: 5,
                                          PaddingVertical: 0,
                                          OnTap: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ));
                          });
                    },
                    leading: Icon(
                      Icons.logout,
                      size: 35.w,
                      color: theme.isDark ? Colors.white : Colors.black,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          );
        },
      ),
    );
  }
}
