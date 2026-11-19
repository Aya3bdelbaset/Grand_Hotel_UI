import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
          size: 22,
        ),
        padding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
