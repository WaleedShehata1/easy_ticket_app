// ignore_for_file: unused_field, avoid_unnecessary_containers

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:easy_ticket_app/screen/home.dart';
import 'package:easy_ticket_app/screen/my_ticket.dart';
import 'package:easy_ticket_app/screen/profile.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  static const String routeName = 'bottom nav bar';

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 1);

  int maxCount = 3;

  /// widget list
  final List<Widget> bottomBarPages = [
    const myTicket(),
    const HomeScreen(),
    const UserSettingsScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  static const String routeName = 'bottom nav bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? Container(
              child: AnimatedNotchBottomBar(
              blurFilterX: 5.0,
              blurFilterY: 5.0,
              pageController: _pageController,
              color: PrimaryColour,
              notchColor: Colors.white,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: SizedBox(
                    width: 35,
                    height: 35,
                    child: Transform.rotate(
                      angle: -44.75,
                      child: const Icon(
                        Icons.confirmation_num_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  activeItem: Transform.rotate(
                    angle: -44.75,
                    child: Icon(
                      Icons.confirmation_num_outlined,
                      color: PrimaryColour,
                      size: 25,
                    ),
                  ),
                ),
                BottomBarItem(
                  inActiveItem: const SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  activeItem: Icon(
                    Icons.home,
                    color: PrimaryColour,
                    size: 25,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: const SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  activeItem: SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.person,
                      color: PrimaryColour,
                      size: 25,
                    ),
                  ),
                ),
              ],
              onTap: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 450),
                  curve: Curves.easeInOut,
                );
              },
            ))
          : null,
    );
  }
}
