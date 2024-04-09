import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:takatuf/screens/home.dart';
import 'package:takatuf/screens/profile.dart';
import 'package:takatuf/screens/settings.dart';
import 'package:takatuf/theme/colors.dart';
import 'package:takatuf/theme/fonts.dart';

class CustomBottomTabBar extends StatefulWidget {
  const CustomBottomTabBar({super.key});

  @override
  State<CustomBottomTabBar> createState() => _CustomBottomTabBarState();
}

class _CustomBottomTabBarState extends State<CustomBottomTabBar> {
  late int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          backgroundColor: AppColors.DarkBlue,
          items: [
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(Icons.home_outlined),
              label: 'الرئيسية',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(Icons.mail_outline_outlined),
              label: 'المحادثة',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(Icons.add_circle),
              label: 'اضافة',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(Icons.person),
              label: 'البروفايل',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(Icons.menu),
              label: 'خيارات',
            ),
          ],
          onTap: (index) {
            _selectedIndex = index;
            setState(() {});
          },
        ),
        body: _selectedIndex == 0
            ? const Home()
            : _selectedIndex == 1
                ? const Home()
                : _selectedIndex == 2
                    ? const Home()
                    : _selectedIndex == 3
                        ? const Profile()
                        : Settings());
  }
}
