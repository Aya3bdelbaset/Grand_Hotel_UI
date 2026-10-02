import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';

import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/paymentMethod.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/request_to_book_screen.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/bookingComplete.dart';

import 'package:grand_hotel_ui/features/auth/presentation/screens/onboarding/onboarding.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/createNewPasswordScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/forgetPassword.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/signInScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/signUpScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/verficationScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/splash/splash.dart';

abstract final class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );

      case RouteNames.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
          settings: settings,
        );

      case RouteNames.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
          settings: settings,
        );

      case RouteNames.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
          settings: settings,
        );

      case RouteNames.enterOTP:
        return MaterialPageRoute(
          builder: (_) => const EnterOTPScreen(),
          settings: settings,
        );

      case RouteNames.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
          settings: settings,
        );

      case RouteNames.createNewPassword:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordScreen(),
          settings: settings,
        );

      case RouteNames.requestToBook:
        return MaterialPageRoute(
          builder: (_) => const RequestToBookScreen(),
          settings: settings,
        );

      case RouteNames.paymentMethod:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodScreen(),
          settings: settings,
        );

      case RouteNames.bookingComplete:
        return MaterialPageRoute(
          builder: (_) => const Bookingcomplete(),
          settings: settings,
        );

      default:
        return _placeholderRoute(settings, 'Not Found');
    }
  }

  static MaterialPageRoute<void> _placeholderRoute(
    RouteSettings settings,
    String title,
  ) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => Scaffold(
        body: Center(
          child: Text(title),
        ),
      ),
    );
  }
}