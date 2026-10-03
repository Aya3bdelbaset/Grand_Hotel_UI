import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

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