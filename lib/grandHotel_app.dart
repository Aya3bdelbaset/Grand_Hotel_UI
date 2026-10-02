import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/routes/app_routes.dart';
import 'package:grand_hotel_ui/core/theme/app_theme.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/request_to_book_screen.dart';

class GrandhotelApp extends StatelessWidget {
  const GrandhotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppThemes.lightTheme,
        debugShowCheckedModeBanner: false,
        home: RequestToBookScreen(),
      ),
    );
  }
}
