import 'package:flutter/material.dart';

class UserSettingsScreen extends StatefulWidget {
  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Abdulhamed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ListTile(
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '\$100.00',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: isDarkMode ? Colors.black : Colors.deepOrangeAccent,
        elevation: 0,
        toolbarHeight: 200,
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      radius: 48,
                      child: Icon(Icons.account_circle,
                          size: 90, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => EditProfileScreen(),
                            ),
                          );
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          width: 50,
                          height: 50,
                          child: Icon(Icons.edit, color: Colors.white),
                        ),
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
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
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit your profile here'),
      ),
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
