// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  bool isOptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF48265),
        title: const Text('About Us'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'FAQ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'FAQ');
            },
          ),
          ExpansionTile(
            title: const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            initiallyExpanded: isOptionExpanded,
            onExpansionChanged: (expanded) {
              setState(() {
                isOptionExpanded = expanded;
              });
            },
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Option 2 screen content',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text(
              'Option 3',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            initiallyExpanded: isOptionExpanded,
            onExpansionChanged: (expanded) {
              setState(() {
                isOptionExpanded = expanded;
              });
            },
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Option 3 screen content',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
