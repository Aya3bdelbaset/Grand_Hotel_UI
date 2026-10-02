import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';

class RecommendedHotelCard extends StatelessWidget {
  final HotelModel hotel;

  const RecommendedHotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: hotel.image,
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
          ),

          const Gap(10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotel.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const Gap(5),

                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 13,
                      color: Colors.grey.shade500,
                    ),
                    const Gap(2),
                    Text(
                      hotel.location,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),

                const Gap(7),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$${hotel.price.toInt()}',
                        style: const TextStyle(
                          color: Color(0xff2856C7),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const TextSpan(
                        text: ' /night',
                        style: TextStyle(color: Colors.black87, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              const Icon(Icons.star, size: 15, color: Colors.amber),
              const Gap(2),
              Text(
                hotel.rating.toString(),
                style: const TextStyle(fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
