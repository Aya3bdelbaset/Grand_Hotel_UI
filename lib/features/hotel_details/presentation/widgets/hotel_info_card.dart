import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';

class HotelInfoCard extends StatelessWidget {
  final HotelModel hotel;
  final VoidCallback? on3DViewTap;

  const HotelInfoCard({super.key, required this.hotel, this.on3DViewTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hotel.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Gap(8),

              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 16,
                    color: Color(0xff2856C7),
                  ),
                  const Gap(4),
                  Text(
                    hotel.location,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                  ),
                  const Gap(12),
                  const Icon(Icons.star, size: 16, color: Colors.amber),
                  const Gap(4),
                  Text(
                    '${hotel.rating}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: on3DViewTap,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xffEBF2FF),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/3d-rotate.png',
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
