import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class AppBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabChanged;

  const AppBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      initialSelectedTab: const [
        'Home',
        'My Booking',
        'Message',
        'Profile',
      ][currentIndex],

      labels: const ['Home', 'My Booking', 'Message', 'Profile'],

      icons: const [
        Icons.home_outlined,
        Icons.receipt_long_outlined,
        Icons.chat_bubble_outline,
        Icons.person_outline,
      ],

      tabIconColor: Colors.grey,
      tabSelectedColor: const Color(0xff2856C7),
      tabBarColor: Colors.white,

      tabIconSize: 22,
      tabIconSelectedSize: 22,
      tabSize: 50,
      tabBarHeight: 60,

      textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),

      onTabItemSelected: onTabChanged,
    );
  }
}
