import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_assets.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/profile/presentation/widgets/settings_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.screenHorizontalPadding.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            const _ProfileHeader(),
            SizedBox(height: 24.h),
            Text(
              'Setting',
              style: TextStyles.caption.copyWith(
                fontFamily: AppFonts.plusJakartaSans,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 4.h),
            const SettingsTile(
              icon: Icons.account_balance_wallet_outlined,
              title: 'Your Card',
            ),
            const SettingsTile(
              icon: Icons.shield_outlined,
              title: 'Security',
            ),
            const SettingsTile(
              icon: Icons.notifications_none_outlined,
              title: 'Notification',
            ),
            const SettingsTile(
              icon: Icons.language_outlined,
              title: 'Languages',
            ),
            const SettingsTile(
              icon: Icons.info_outline,
              title: 'Help and Support',
            ),
            SizedBox(height: 24.h),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Logout',
                  style: TextStyles.caption.copyWith(
                    fontFamily: AppFonts.plusJakartaSans,
                    fontWeight: FontWeight.w700,
                    color: AppColors.redColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
      // TODO: bottomNavigationBar بعد ما زميلك يرفع الـ bottom nav
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    final avatarSize = 48.w;

    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            AppAssets.profileAvatar,
            width: avatarSize,
            height: avatarSize,
            fit: BoxFit.cover,

          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brooklyn Simmons',
                style: TextStyles.body.copyWith(
                  fontSize: 15.sp,
                  fontFamily: AppFonts.jost,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                '@Broklyn',
                style: TextStyles.caption2.copyWith(
                  fontFamily: AppFonts.plusJakartaSans,
                  color: AppColors.greyColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 36.w,
          height: 36.w,
          decoration: const BoxDecoration(
            color: AppColors.accentColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.edit_outlined, size: 18.sp),
        ),
      ],
    );
  }
}