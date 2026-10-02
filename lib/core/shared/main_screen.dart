import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/screens/my_booking_screen.dart';
import 'package:grand_hotel_ui/features/home/presentation/screens/home_screen.dart';
import 'package:grand_hotel_ui/core/shared/widgets/app_bottom_navigation.dart';
import 'package:grand_hotel_ui/features/message/presentation/screens/messages_screen.dart';
import 'package:grand_hotel_ui/features/profile/presentation/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(),
    MyBookingScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: AppBottomNavigation(
        currentIndex: currentIndex,
        onTabChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
