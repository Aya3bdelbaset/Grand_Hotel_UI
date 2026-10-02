import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_strings.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, RouteNames.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppAssets.splash,
              width: 89.7,
              height: 123.19,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            Text(
              AppStrings.appName,
              textAlign: TextAlign.center,
              style: TextStyles.logofont.copyWith(
                fontFamily: AppFonts.jost,
                color: Colors.white,
              ),
            ),
            Text(
              AppStrings.subtitle,
              textAlign: TextAlign.center,
              style: TextStyles.caption.copyWith(
                fontFamily: AppFonts.jost,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
