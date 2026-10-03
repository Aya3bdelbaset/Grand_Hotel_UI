import 'package:flutter/material.dart';
class RecentSearchesHeader extends StatelessWidget {
  final VoidCallback onClearAll;
  final bool isVisible;

  const RecentSearchesHeader({
    super.key,
    required this.onClearAll,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Recent Searches',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        if (isVisible)
          GestureDetector(
            onTap: onClearAll,
            child: const Text(
              'Clear All',
              style: TextStyle(
                fontSize: 14,
                color: Colors.pink,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}
