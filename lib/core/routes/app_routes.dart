import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/paymentMethod.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/request_to_book_screen.dart';
import 'package:grand_hotel_ui/features/booking/request_book/presentation/screens/bookingComplete.dart';



abstract final class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
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