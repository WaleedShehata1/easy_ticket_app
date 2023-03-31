// ignore: implementation_imports

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../shapes/ticket.dart';
import '../widget/components.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 bool selectBottom =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        foregroundDecoration: const BoxDecoration(),
        decoration: const BoxDecoration(
          
        ),
      ),

    );
  }
}
