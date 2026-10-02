import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class FacilityItem {
  final String title;
  final IconData icon;

  const FacilityItem({required this.title, required this.icon});
}

class FacilitiesSection extends StatelessWidget {
  final List<FacilityItem> facilities;
  final VoidCallback? onSeeAllTap;

  const FacilitiesSection({
    super.key,
    required this.facilities,
    this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Common Facilities',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: onSeeAllTap,
              child: const Text(
                'See All',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff2856C7),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: facilities.map((facility) {
            return Column(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xffF0F4FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(facility.icon, size: 24),
                ),
                const Gap(6),
                SizedBox(
                  width: 65,
                  child: Text(
                    facility.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey.shade600,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
