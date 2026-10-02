import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/data/models/booking_model.dart';

class BookingDetailsScreen extends StatelessWidget {
  final BookingModel? booking;

  const BookingDetailsScreen({super.key, this.booking});

  static const String _roomType = 'Queen Room';
  static const String _phone = '0214345646';
  static const String _code = '06158310-5427-471d-af1f-bd9029b';

  @override
  Widget build(BuildContext context) {
    final b = booking ?? BookingModel.sample.first;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text('Booking Detail'),
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.screenHorizontalPadding.w),
        child: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            border: Border.all(color: AppColors.accentColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _SectionLabel('Your Hotel'),
              SizedBox(height: 8.h),
              _HotelRow(booking: b),
              SizedBox(height: 16.h),
              Row(
                children: [
                  const _SectionLabel('Location'),
                  const Spacer(),
                  Text(
                    'Open Map',
                    style: TextStyles.caption2.copyWith(
                      fontFamily: AppFonts.plusJakartaSans,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                child: Image.asset(
                  AppAssets.mapImage,
                  width: double.infinity,
                  height: 125.h,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: double.infinity,
                    height: 125.h,
                    color: AppColors.accentColor,
                    child: const Icon(
                      Icons.location_on,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              const _SectionLabel('Your Booking'),
              SizedBox(height: 4.h),
              _DetailRow(
                icon: Icons.calendar_today_outlined,
                label: 'Dates',
                value: b.dates,
              ),
              _DetailRow(
                icon: Icons.person_outline,
                label: 'Guest',
                value: b.guests,
              ),
              const _DetailRow(
                icon: Icons.bed_outlined,
                label: 'Room type',
                value: _roomType,
              ),
              const _DetailRow(
                icon: Icons.phone_outlined,
                label: 'Phone',
                value: _phone,
              ),
              SizedBox(height: 20.h),
              Center(
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: _code,
                  width: 260.w,
                  height: 70.h,
                  drawText: false,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  _code,
                  style: TextStyles.caption2.copyWith(
                    fontFamily: AppFonts.plusJakartaSans,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.caption2.copyWith(
        fontFamily: AppFonts.plusJakartaSans,
        color: AppColors.greyColor,
      ),
    );
  }
}

class _HotelRow extends StatelessWidget {
  final BookingModel booking;
  const _HotelRow({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
          child: Image.asset(
            booking.image,
            width: 64.w,
            height: 64.w,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              width: 64.w,
              height: 64.w,
              color: AppColors.accentColor,
              child: const Icon(Icons.hotel, color: AppColors.greyColor),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      booking.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.body.copyWith(
                        fontSize: 15.sp,
                        fontFamily: AppFonts.jost,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 16.sp,
                    color: AppColors.yellowColor,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    booking.rating.toStringAsFixed(1),
                    style: TextStyles.caption2.copyWith(
                      fontFamily: AppFonts.plusJakartaSans,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14.sp,
                    color: AppColors.greyColor,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      booking.location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.caption2.copyWith(
                        fontFamily: AppFonts.plusJakartaSans,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\$${booking.price.toStringAsFixed(0)}',
                      style: TextStyles.body.copyWith(
                        color: AppColors.primaryColor,
                        fontFamily: AppFonts.jost,
                      ),
                    ),
                    TextSpan(
                      text: ' /night',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.greyColor,
                        fontFamily: AppFonts.plusJakartaSans,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextStyles.caption2.copyWith(
      fontFamily: AppFonts.plusJakartaSans,
      color: AppColors.greyColor,
    );
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Row(
        children: [
          Icon(icon, size: 16.sp, color: AppColors.greyColor),
          SizedBox(width: 8.w),
          Text(label, style: style),
          const Spacer(),
          Text(
            value,
            style: style.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
