import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class LocationSection extends StatelessWidget {
  final String address;
  final VoidCallback? onOpenMapTap;

  const LocationSection({super.key, required this.address, this.onOpenMapTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Location',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: onOpenMapTap,
              child: const Text(
                'Open Map',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff2856C7),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const Gap(10),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 130,
            width: double.infinity,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 130,
            ),
          ),
        ),
        const Gap(8),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 16,
              color: Color(0xff2856C7),
            ),
            const Gap(4),
            Expanded(
              child: Text(
                address,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
