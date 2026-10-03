import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
class Customaddremove extends StatelessWidget {
  const Customaddremove({
    super.key, required this.Containercl, required this.iconcolor, required this.icon,
  });
  final Color Containercl;
  final Color iconcolor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusXxl),
       color: Containercl,
      ),
      child: Center(
        child: Icon( icon ,color: iconcolor,),
      ),
    );
  }
}
