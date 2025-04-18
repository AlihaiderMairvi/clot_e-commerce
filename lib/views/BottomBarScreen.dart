
import 'package:ecommerce_project/views/Frame.dart';
import 'package:ecommerce_project/views/NotificationHomeScreen.dart';
import 'package:ecommerce_project/views/OrdersScreen.dart';
import 'package:flutter/material.dart';

import 'Settings_Profile.dart';

class BottomBarView extends StatefulWidget {
  BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;

  List<Widget> screenList = [FrameView(), NotificationhomescreenView(), OrdersscreenView(),SettingsProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Image.asset("assets/images/home_icon.png"), label: '',),
            BottomNavigationBarItem(icon: Image.asset("assets/images/bell_icon.png"), label: ''),
            BottomNavigationBarItem(icon: Image.asset("assets/images/task_icon.png"), label: ''),
            BottomNavigationBarItem(icon: Image.asset("assets/images/per_icon.png"), label: ''),
          ]),
    );
  }
}