import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/routes/app_routes.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grand_hotel_ui/features/auth/presentation/cubit/auth_cubit.dart';

class GrandHotelApp extends StatelessWidget {
  const GrandHotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
      create: (context) => AuthCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RouteNames.splash,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          ),
        );
      },
    );
  }
}
