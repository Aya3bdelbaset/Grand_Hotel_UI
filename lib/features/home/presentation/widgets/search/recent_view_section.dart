import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/recommended_hotel_card.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/section_header.dart';

class RecentlyViewedSection extends StatelessWidget {
  final List<dynamic> hotels;
  final VoidCallback? onSeeAll;

  const RecentlyViewedSection({super.key, required this.hotels, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Recently Viewed', onSeeAll: onSeeAll ?? () {}),
        const Gap(12),
        ...hotels.map(
          (hotel) => Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: RecommendedHotelCard(hotel: hotel),
          ),
        ),
      ],
    );
  }
}
