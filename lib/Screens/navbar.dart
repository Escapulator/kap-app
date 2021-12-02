import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Screens/Chats/Student/community_home.dart';
import 'package:kap/Screens/Home/Student/student_landing.dart';
import 'package:kap/Screens/LiveStreams/Student/class.dart';
import 'package:kap/Screens/Settings/Student/settings.dart';

class NavBar extends StatefulWidget {
  static const routeName = '/NavBar';
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = const [StudentLanding(), Community(), Class(), Settings()];
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
                    AssetImage(AppAssets.liveStream),
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
