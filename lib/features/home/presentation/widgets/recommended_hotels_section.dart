import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/dummy_hotels.dart';

import 'category_filter.dart';
import 'recommended_hotel_card.dart';
import 'section_header.dart';

class RecommendedHotelsSection extends StatefulWidget {
  const RecommendedHotelsSection({super.key});

  @override
  State<RecommendedHotelsSection> createState() =>
      _RecommendedHotelsSectionState();
}

class _RecommendedHotelsSectionState extends State<RecommendedHotelsSection> {
  int selectedCategory = 0;

  final categories = const [
    ('All', Icons.apps),
    ('Villas', Icons.villa_outlined),
    ('Hotels', Icons.hotel_outlined),
    ('Apartments', Icons.apartment_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Recommended for you', onSeeAll: () {}),

        const Gap(12),

        SizedBox(
          height: 38,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (error, index) => const Gap(7),
            itemBuilder: (error, index) {
              final category = categories[index];

              return CategoryFilter(
                title: category.$1,
                icon: category.$2,
                isSelected: selectedCategory == index,
                onTap: () {
                  setState(() {
                    selectedCategory = index;
                  });
                },
              );
            },
          ),
        ),

        const Gap(5),

        ...recommendedHotels.map((hotel) => RecommendedHotelCard(hotel: hotel)),
      ],
    );
  }
}
