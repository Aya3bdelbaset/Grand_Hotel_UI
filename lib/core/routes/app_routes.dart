
import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/shared/main_screen.dart';

//   AUTH 
import 'package:grand_hotel_ui/features/auth/presentation/screens/onboarding/onboarding.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/createNewPasswordScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/forgetPassword.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/signInScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/signUpScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/register/verficationScreen.dart';
import 'package:grand_hotel_ui/features/auth/presentation/screens/splash/splash.dart';

//    HOME
import 'package:grand_hotel_ui/features/home/presentation/screens/search_screen.dart';
import 'package:grand_hotel_ui/features/home/presentation/screens/favorite_screen.dart';

//    HOTEL DETAILS 
import 'package:grand_hotel_ui/features/hotel_details/presentation/screens/hotel_details_screen.dart';

//      REVIEWS 
import 'package:grand_hotel_ui/features/reviews/presentation/screens/reviews_screen.dart';

// BOOKING 
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/request_to_book_screen.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/paymentMethod.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/bookingComplete.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/screens/my_booking_screen.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/screens/booking_details_screen.dart';

//  PROFILE
import 'package:grand_hotel_ui/features/profile/presentation/screens/profile_screen.dart';

//    MESSAGES 
import 'package:grand_hotel_ui/features/message/presentation/screens/messages_screen.dart';

abstract final class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //  AUTH 

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

      //  HOME 

      case RouteNames.home:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: settings,
        );
      case RouteNames.search:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
          settings: settings,
        );

      case RouteNames.favorite:
        return MaterialPageRoute(
          builder: (_) => const FavoriteScreen(),
          settings: settings,
        );

      //  HOTEL DETAILS 

      case RouteNames.details:
        return MaterialPageRoute(
          builder: (_) => const HotelDetailsScreen(),
          settings: settings,
        );

      case RouteNames.reviews:
        return MaterialPageRoute(
          builder: (_) => const ReviewsScreen(),
          settings: settings,
        );

      //  BOOKING 

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

      case RouteNames.myBooking:
        return MaterialPageRoute(
          builder: (_) => const MyBookingScreen(),
          settings: settings,
        );

      case RouteNames.bookingDetails:
        return MaterialPageRoute(
          builder: (_) => const BookingDetailsScreen(),
          settings: settings,
        );

      //  PROFILE 

      case RouteNames.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
          settings: settings,
        );

      //  MESSAGES 

      case RouteNames.messages:
        return MaterialPageRoute(
          builder: (_) => const MessagesScreen(),
          settings: settings,
        );

      //  NOT FOUND 

      default:
        return _placeholderRoute(
          settings,
          'Not Found',
        );
    }
  }

  static MaterialPageRoute<void> _placeholderRoute(
    RouteSettings settings,
    String title,
  ) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (_) => Scaffold(
        body: Center(
          child: Text(title),
        ),
      ),
    );
  }
}