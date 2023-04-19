// ignore_for_file: library_private_types_in_public_api

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import './edit_profile.dart';

class UserSettingsScreen extends StatefulWidget {
  static const String routeName = 'profile';

  const UserSettingsScreen({super.key});
  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Column(children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            decoration: BoxDecoration(
                color: PrimaryColour,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: 170,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    'Abdulhamed Ashry',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 140,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 0),
                                color: Colors.black,
                                blurRadius: 7,
                                spreadRadius: 0,
                              )
                            ]),
                        width: 65,
                        child: const Text(
                          '\$70',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EditProfileScreen.routeName);
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(width: 5, color: PrimaryColour)),
                      child: const Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 110,
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1.5, color: Colors.black)),
                      child: const Icon(
                        Icons.edit,
                        size: 25,
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
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.notifications,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.credit_card,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Credit Card',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.account_balance_wallet,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.dark_mode,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              trailing: Switch(
                value: isDarkMode,
                activeTrackColor: Colors.white,
                activeColor: PrimaryColour,
                inactiveThumbColor:PrimaryColour ,
                inactiveTrackColor:Colors.black ,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                     firstTime.putData(key: 'isDarkMode', valu:value);
                  });
                },
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AboutusScreen()),
                // );
              },
              leading: Icon(
                Icons.contact_support_rounded,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'About us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => TeamMembersScreen()),
                // );
              },
              leading: Icon(
                Icons.person_3_rounded,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Team Members',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.logout,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}




