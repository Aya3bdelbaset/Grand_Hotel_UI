import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
class Customtext extends StatelessWidget {
  const Customtext({
    super.key, required this.text2,
  });
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Text(text2,style: TextStyles.body.copyWith(
      color: AppColors.primaryColor,
      fontFamily:  'Plus Jakarta Sans',
    ),);
  }
}

