import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/constants/app_design.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_strings.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/shared/widgets/custom_button.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/dont_have_account.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.onboarding,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDesign.padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 499.h),
                Text(
                  AppStrings.onboardingCaption,
                  textAlign: TextAlign.center,

                  style: TextStyles.headline2.copyWith(
                    color: AppColors.whiteColor,
                    fontFamily: AppFonts.jost,
                  ),
                ),
                SizedBox(height: 8.h),

                Center(
                  child: Text(
                    AppStrings.onboardingCaption2,
                    textAlign: TextAlign.center,

                    style: TextStyles.caption.copyWith(
                      color: const Color.fromARGB(154, 255, 255, 255),
                      fontFamily: AppFonts.jost,
                    ),
                  ),
                ),

                SizedBox(height: 32.h),

                AppButton(
                  text: 'Get Started',

                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RouteNames.signIn);
                  },
                ),
                SizedBox(height: 24.h),

                DontHaveAccount(
                  onSignUpTap: () {
                    Navigator.pushReplacementNamed(context, RouteNames.signUp);
                  },
                  actionText: AppStrings.register,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
