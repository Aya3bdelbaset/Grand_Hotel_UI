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
class Custombooking extends StatelessWidget {
  const Custombooking({
    super.key, required this.text1, required this.date1, required this.asset,
  });
  final String text1;
  final String date1;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        Row(
          children: [
         SvgPicture.asset(asset,width: 20,height: 20,),
        SizedBox(width: AppSizes.md),
        Text(text1,style: TextStyles.body.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily:  'Plus Jakarta Sans',
        ),),
          ],
        ),
       
        Row(
          children: [
            Text(date1,style: TextStyles.body.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily:  'Plus Jakarta Sans',
        ),),
          ],
        ),
      ],
    );
  }
}