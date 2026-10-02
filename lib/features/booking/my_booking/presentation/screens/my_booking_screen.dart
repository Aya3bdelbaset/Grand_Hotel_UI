import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/data/models/booking_model.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/screens/booking_details_screen.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/widgets/booking_card.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/presentation/widgets/booking_tabs.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_search_bar.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final bookings = _tab == 0 ? BookingModel.sample : <BookingModel>[];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text('My Booking'),
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.screenHorizontalPadding.w,
        ),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            const CustomSearchBar(),
            SizedBox(height: 16.h),
            BookingTabs(
              selectedIndex: _tab,
              onChanged: (i) => setState(() => _tab = i),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: bookings.isEmpty
                  ? const Center(
                      child: Text(
                        'No bookings yet',
                        style: TextStyle(color: AppColors.greyColor),
                      ),
                    )
                  : ListView.separated(
                      itemCount: bookings.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.h),
                      itemBuilder: (context, i) => BookingCard(
                        booking: bookings[i],
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                BookingDetailsScreen(booking: bookings[i]),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}