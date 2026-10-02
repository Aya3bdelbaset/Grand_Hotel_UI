import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class CategoryFilter extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryFilter({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xff2856C7)
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? const Color(0xff2856C7)
                : Colors.grey.shade200,
          ),
        ),
        child: Row(
          children: [
            if (!isSelected) ...[
              Icon(
                icon,
                size: 14,
                color: Colors.grey,
              ),
              const Gap(5),
            ],
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                color: isSelected
                    ? Colors.white
                    : Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}