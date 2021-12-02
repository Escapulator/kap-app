import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Screens/Chats/Tutor/performace.dart';
import 'package:kap/Screens/Home/Tutor/tutor_landing.dart';
import 'package:kap/Screens/LiveStreams/Tutor/communication.dart';
import 'package:kap/Screens/Settings/Tutor/tutor_settings.dart';

class TutorNavBar extends StatefulWidget {
  static const routeName = '/TutorNavBar';
  const TutorNavBar({Key? key}) : super(key: key);

  @override
  State<TutorNavBar> createState() => _TutorNavBarState();
}

class _TutorNavBarState extends State<TutorNavBar> {
  int currentIndex = 0;
  final screens = const [
    TutorLanding(),
    Communication(),
    Performance(),
    TutorSettings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.backgroundColor,
            selectedItemColor: AppColors.orange,
            unselectedItemColor: AppColors.someText,
            showSelectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.homes),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.chat),
                  ),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.perfs),
                  ),
                  label: 'Live Stream'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.settings),
                  ),
                  label: 'Settings'),
            ]));
  }
}
