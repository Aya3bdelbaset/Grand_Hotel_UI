import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      // General
      fontFamily: AppFonts.jost,
      scaffoldBackgroundColor: AppColors.whiteColor,

      // Colors
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.light,
      ),

      // App Bar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: TextStyles.title2.copyWith(
          color: AppColors.blackColor,
          fontFamily: AppFonts.jost,
          fontWeight: FontWeight.w600,
        ),
      ),

      // Text
      textTheme: TextTheme(
        displayLarge: TextStyles.title1.copyWith(fontFamily: AppFonts.jost),
        displayMedium: TextStyles.title2.copyWith(fontFamily: AppFonts.jost),
        bodyLarge: TextStyles.body.copyWith(
          fontFamily: AppFonts.plusJakartaSans,
        ),
        bodyMedium: TextStyles.body.copyWith(
          fontFamily: AppFonts.plusJakartaSans,
        ),
      ),

      // Text Fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.accentColor,

        hintStyle: TextStyles.caption.copyWith(
          color: AppColors.greyColor,
          fontFamily: AppFonts.plusJakartaSans,
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyles.body.copyWith(
            fontFamily: AppFonts.jost,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Icons
      iconTheme: IconThemeData(color: AppColors.blackColor),

      // Splash / Highlight
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
