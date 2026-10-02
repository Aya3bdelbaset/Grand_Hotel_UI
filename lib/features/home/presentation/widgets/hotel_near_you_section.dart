import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class HotelNearYouSection extends StatelessWidget {
  final VoidCallback? onOpenMap;

  const HotelNearYouSection({super.key, this.onOpenMap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Hotel Near You',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            GestureDetector(
              onTap: onOpenMap,
              child: const Text(
                'Open Map',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff2856C7),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
         Gap(14),
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            'assets/images/hotel_map.png',
            width: double.infinity,
            height: 158,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
