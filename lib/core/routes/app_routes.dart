

// ملاحظات للتيم
//
// كل Developer يلتزم باسم الـ Screen المكتوب في الـ Builder
// ومايغيرش الاسم. 
// الملف ده مسؤول عن الـ Navigation والـ Routes الخاصة بكل Screens.
//
//
// بعد ما تعمل الـ Screen الخاصة بيك:
// 1. استخدم نفس اسم الـ Screen المكتوب هنا بالضبط.
// 2. فك الـ Comment الخاص بالـ Route.
// 3. فك الـ Import الخاص بالـ Screen.
// 4. تأكد إن اسم الـ Class واسم الملف مطابقين.
//
// مثال:
// HomeScreen
// home_screen.dart
//
// ⚠️ مهم: أسماء الـ Screens مكتوبة هنا بشكل نهائي،
// استخدموا نفس الأسماء بدون تغيير.





// import 'package:flutter/material.dart';
// import 'package:grand_hotel_ui/core/routes/routes_name.dart';

// abstract final class AppRoutes {
//   static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case RouteNames.splash:
//         return MaterialPageRoute(
//           builder: (_) => const SplashScreen(),
//           settings: settings,
//         );

//       case RouteNames.onboarding:
//         return MaterialPageRoute(
//           builder: (_) => const OnboardingScreen(),
//           settings: settings,
//         );

//       case RouteNames.signIn:
//         return MaterialPageRoute(
//           builder: (_) => const SignInScreen(),
//           settings: settings,
//         );


//       case RouteNames.signUp:
//         return MaterialPageRoute(
//           builder: (_) => const SignUpScreen(),
//           settings: settings,
//         );
      
//       case RouteNames.enterOTP:
//         return MaterialPageRoute(
//           builder: (_) => const EnterOTPScreen(),
//           settings: settings,
//         );

//       case RouteNames.forgotPassword:
//         return MaterialPageRoute(
//           builder: (_) => const ForgotPasswordScreen(),
//           settings: settings,
//         );


//         case RouteNames.createNewPassword:
//         return MaterialPageRoute(
//           builder: (_) => const CreateNewPasswordScreen(),
//           settings: settings,
//         );






      
//          case RouteNames.home:
//         return MaterialPageRoute(
//           builder: (_) => const HomeScreen(),
//           settings: settings,
//         );

//           case RouteNames.search:
//         return MaterialPageRoute(
//           builder: (_) => const SearchScreen(),
//           settings: settings,
//         );

//       case RouteNames.favorite:
//         return MaterialPageRoute(
//           builder: (_) => const FavoriteScreen(),
//           settings: settings,
//         );

//       case RouteNames.details:
//         return MaterialPageRoute(
//           builder: (_) => const DetailsScreen(),
//           settings: settings,
//         );

//       case RouteNames.reviews:
//         return MaterialPageRoute(
//           builder: (_) => const ReviewsScreen(),
//           settings: settings,
//         );





//          case RouteNames.requestToBook:
//         return MaterialPageRoute(
//           builder: (_) => const RequestToBookScreen(),
//           settings: settings,
//         );

//       case RouteNames.selectDate:
//         return MaterialPageRoute(
//           builder: (_) => const SelectDateScreen(),
//           settings: settings,
//         );

//       case RouteNames.paymentMethod:
//         return MaterialPageRoute(
//           builder: (_) => const PaymentMethodScreen(),
//           settings: settings,
//         );

//       case RouteNames.checkOut:
//         return MaterialPageRoute(
//           builder: (_) => const CheckOutScreen(),
//           settings: settings,
//         );

//       case RouteNames.bookingComplete:
//         return MaterialPageRoute(
//           builder: (_) => const BookingCompleteScreen(),
//           settings: settings,
//         );



          
//      case RouteNames.myBooking:
//         return MaterialPageRoute(
//           builder: (_) => const MyBookingScreen(),
//           settings: settings,
//         );

//       case RouteNames.bookingDetails:
//         return MaterialPageRoute(
//           builder: (_) => const BookingDetailsScreen(),
//           settings: settings,
//         );

//       case RouteNames.profile:
//         return MaterialPageRoute(
//           builder: (_) => const ProfileScreen(),
//           settings: settings,
//         );

//       case RouteNames.messages:
//         return MaterialPageRoute(
//           builder: (_) => const MessagesScreen(),
//           settings: settings,
//         );

//       default:
//         return _placeholderRoute(settings, 'Not Found');
//     }
//   } 
// static MaterialPageRoute<void> _placeholderRoute(
//     RouteSettings settings,
//     String title,
//   ) {
//     return MaterialPageRoute(
//       settings: settings,
//       builder: (_) => Scaffold(
//         body: Center(
//           child: Text(title),
//         ),
//       ),
//     );
//   }
// }
      

