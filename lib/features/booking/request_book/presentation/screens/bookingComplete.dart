import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bookingcomplete extends StatelessWidget {
  const Bookingcomplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: AppSizes.iconXLarge),
        actions: [Icon(Icons.more_vert, size: AppSizes.iconXLarge)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.payment),
            SizedBox(height: AppSizes.huge),
            SizedBox(height: AppSizes.sm),
            Text(
              "Payment Completed",
              style: TextStyles.headline2.copyWith(
                fontWeight: FontWeight.w600,
                fontFamily: 'Jost',
              ),
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              "Etiam cras nec metus laoreet. Faucibus\n iaculis cras ut posuere",
              style: TextStyles.body.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor,
                fontFamily: 'plus Jakarta Sans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
