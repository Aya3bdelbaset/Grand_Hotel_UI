import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';

class DontHaveAccount extends StatelessWidget {
  final VoidCallback onSignUpTap;
  final String actionText;

  const DontHaveAccount({
    super.key,
    required this.onSignUpTap, required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.whiteColor,
          ),
        ),
        GestureDetector(
          onTap: onSignUpTap,
          child: Text(
            actionText,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}