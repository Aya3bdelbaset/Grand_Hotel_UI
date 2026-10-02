import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/dummy_hotels.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/best_today_hotel_card.dart';

class BestTodaySection extends StatelessWidget {
  const BestTodaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Best Today 🔥',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: const Text(
                'See All',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff2856C7),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),

        const Gap(14),

        SizedBox(
          height: 92,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: DummyHotels.bestTodayHotels.length,
            separatorBuilder: (_, _) => const Gap(14),
            itemBuilder: (context, index) {
              return BestTodayHotelCard(
                hotel: DummyHotels.bestTodayHotels[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
