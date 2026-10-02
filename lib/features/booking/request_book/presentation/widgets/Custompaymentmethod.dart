import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/theme/app_theme.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customcheck.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customaddremove.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/widgets/Customrow.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
class Custompaymentmethod extends StatelessWidget {
  const Custompaymentmethod({
    super.key, required this.payment, required this.visa, required this.Check,
  });
final String payment;
final String visa;
final String Check;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bottomcl,
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        boxShadow: [
          BoxShadow(
            color: AppColors.blurcl,
            blurRadius: AppSizes.radiusXl,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.xl,horizontal: AppSizes.md),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                SvgPicture.asset(visa),
                SizedBox(width: AppSizes.md,),
                Text(payment,style:TextStyles.body.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily:  'Plus Jakarta Sans',
              ) ,),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(Check),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
