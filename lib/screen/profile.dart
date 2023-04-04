import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import './edit_profile.dart';

class UserSettingsScreen extends StatefulWidget {
  static const String routeName = 'profile';
  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
        body: Column(
          children: [
          Stack(
            alignment: Alignment.center,
            children:[
              Container(
                decoration: BoxDecoration(
                  color: PrimaryColour,
                  borderRadius: BorderRadius.only
                  (bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
                
                height: 150,
                width: double.infinity,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height:55,),
                  Text(
                    'Waleed Mohamed',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 140,),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                color: Colors.black,
                                blurRadius: 7,
                                spreadRadius: 0,
                              )
                            ]),
                            width: 65,
                            child: Text('\$70',
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
             SizedBox(width: 20,),
             InkWell(
              onTap: () {
                Navigator.pushNamed(context,  EditProfileScreen.routeName);
              },
               child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                     Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(Icons.account_circle,color: Colors.white,size: 110,),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                       border: Border.all(width: 5,color: PrimaryColour)
                      ),
                  ),
                  Container(
                   width: 35,
                   height: 35,
                    child: Icon(Icons.edit,size: 25,),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 1.5,color: Colors.black)
                     ),
                  )
                  
                ],
               ),
             )
              ],
            ),]
          ),
           Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            SizedBox(height: 16),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              leading: Icon(
                Icons.notifications,
                color: Colors.blue,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditCardScreen()),
                );
              },
              leading: Icon(
                Icons.credit_card,
                color: Colors.blue,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletScreen()),
                );
              },
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.blue,
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletScreen()),
                );
              },
              leading: Icon(
                Icons.dark_mode,
                color: Colors.blue,
              ),
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              trailing: Switch(
                value: isDarkMode,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
            ),
          ],
        ),
        ]),
    );
  }
}

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card'),
      ),
      body: Center(
        child: Text('View and edit your credit card information here'),
      ),
    );
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
      ),
      body: Center(
        child:
            Text('View and manage your wallet balance and transactions here'),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('No notifications'),
      ),
    );
  }
}
