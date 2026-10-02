import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/best_today_section.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/home_header.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/hotel_near_you_section.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/popular_hotels_section.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/recommended_hotels_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeHeader(),

              Gap(25),

              PopularHotelsSection(),

              Gap(25),

              RecommendedHotelsSection(),

              Gap(28),

              HotelNearYouSection(),

              Gap(28),

              BestTodaySection(),

              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
