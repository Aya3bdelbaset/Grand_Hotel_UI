import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/theme/app_theme.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Customrow extends StatelessWidget {
  const Customrow({
    super.key, required this.service, required this.price,
  });
  final String service;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(service,style: TextStyles.body.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: 'Plus Jakarta Sans',
          color: AppColors.greyColor,
        ),),
        Text(price,style: TextStyles.subtitle.copyWith(
         fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
        ),),
      ],
    );
  }
}