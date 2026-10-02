import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';

class Customcheck extends StatelessWidget {
  const Customcheck({
    super.key, required this.text, required this.date,
  });
  final String text;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      height: 94.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        color: AppColors.accentColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppAssets.calenderIcon,width:AppSizes.iconMedium,height:AppSizes.iconMedium ,),
              Text(text,
              style: TextStyles.body.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Plus Jakarta Sans',
                color: AppColors.blackColor
              ),),
            ],
          ),
          Text(date,
           style: TextStyles.body.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: 'Plus Jakarta Sans',
                color: AppColors.greyColor
              ),
          ),
        ],
      ),
    );
  }
}