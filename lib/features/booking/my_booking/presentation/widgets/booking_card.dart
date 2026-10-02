import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/booking/my_booking/data/models/booking_model.dart';

class BookingCard extends StatelessWidget {
  final BookingModel booking;
  final VoidCallback? onTap;

  const BookingCard({super.key, required this.booking, this.onTap});

  @override
  Widget build(BuildContext context) {
    final imgW = 92.w;
    final imgH = 150.h;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          border: Border.all(color: AppColors.accentColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
              child: Image.asset(
                booking.image,
                width: imgW,
                height: imgH,
                fit: BoxFit.cover,
                // لحد ما الصور تنزل من Figma
                errorBuilder: (_, __, ___) => Container(
                  width: imgW,
                  height: imgH,
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
                      Icon(Icons.star_rounded,
                          size: 16.sp, color: AppColors.yellowColor),
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
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          size: 14.sp, color: AppColors.greyColor),
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
                  SizedBox(height: 8.h),
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
                  SizedBox(height: 4.h),
                  _InfoRow(
                    icon: Icons.calendar_today_outlined,
                    label: 'Dates',
                    value: booking.dates,
                  ),
                  _InfoRow(
                    icon: Icons.person_outline,
                    label: 'Guest',
                    value: booking.guests,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
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
      padding: EdgeInsets.only(top: 8.h),
      child: Row(
        children: [
          Icon(icon, size: 16.sp, color: AppColors.greyColor),
          SizedBox(width: 6.w),
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