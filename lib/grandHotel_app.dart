import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/theme/app_theme.dart';

class GrandhotelApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        theme: AppThemes.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const Placeholder(),
      ),
    );
  }
}
