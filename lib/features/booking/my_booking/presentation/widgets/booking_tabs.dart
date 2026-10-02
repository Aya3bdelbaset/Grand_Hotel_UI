import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';

class BookingTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const BookingTabs({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  static const _labels = ['Booked', 'History'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
      ),
      child: Row(
        children: List.generate(_labels.length, (i) {
          final selected = i == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selected ? AppColors.whiteColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: Text(
                  _labels[i],
                  style: TextStyles.caption.copyWith(
                    fontFamily: AppFonts.plusJakartaSans,
                    fontWeight: FontWeight.w600,
                    color:
                        selected ? AppColors.blackColor : AppColors.greyColor,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}