import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import '../../data/dummy_hotels.dart';
import 'popular_hotel_card.dart';
import 'section_header.dart';

class PopularHotelsSection extends StatelessWidget {
  const PopularHotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Most Popular', onSeeAll: () {}),

        const Gap( 12),

        SizedBox(
          height: 182,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: popularHotels.length,
            separatorBuilder: (_, _) => const Gap(10),
            itemBuilder: (_, index) {
              return PopularHotelCard(hotel: popularHotels[index]);
            },
          ),
        ),
      ],
    );
  }
}
