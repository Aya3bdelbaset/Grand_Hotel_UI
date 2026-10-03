import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class MapPreviewCard extends StatelessWidget {
  final VoidCallback? onOpenMap;

  const MapPreviewCard({super.key, this.onOpenMap});

  @override
  Widget build(BuildContext context) {
    return Column(
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

        const Gap(14),

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
