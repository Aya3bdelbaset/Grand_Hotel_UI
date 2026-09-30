import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/arrow_back.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';

class EnterOTPScreen extends StatefulWidget {
  const EnterOTPScreen({super.key});

  @override
  State<EnterOTPScreen> createState() => _EnterOTPScreenState();
}

class _EnterOTPScreenState extends State<EnterOTPScreen> {
  final TextEditingController otpController = TextEditingController();

  int seconds = 23;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void resendOtp() {
    setState(() {
      seconds = 23;
      otpController.clear();
    });

    timer?.cancel();
    startTimer();
  }

  void confirmOtp() {
    final otp = otpController.text;

    if (otp.length == 4) {
      debugPrint('OTP: $otp');

      Navigator.pushReplacementNamed(context, RouteNames.forgotPassword);
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyle(
        fontFamily: AppFonts.jost,
        fontSize: 18.sp,
        fontWeight: .bold,
        color: AppColors.greyColor,
      ),
      decoration: BoxDecoration(
        color: theme.inputDecorationTheme.fillColor ?? AppColors.accentColor,
        borderRadius: BorderRadius.circular(24.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: theme.inputDecorationTheme.fillColor ?? AppColors.accentColor,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(color: theme.colorScheme.primary, width: 1.5.w),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: theme.inputDecorationTheme.fillColor ?? AppColors.accentColor,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(color: theme.colorScheme.primary, width: 1.w),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              ArrowBack(),

              SizedBox(height: 34.h),

              Center(
                child: Text(
                  'Enter OTP',
                  style: TextStyles.headline2.copyWith(
                    fontFamily: AppFonts.jost,
                    color: AppColors.blackColor,
                  ),
                ),
              ),

              SizedBox(height: 7.h),

              Column(
                children: [
                  Center(
                    child: Text(
                      'We have just sent you 4 digit code via your email',
                      textAlign: TextAlign.center,
                      style: TextStyles.caption.copyWith(
                        fontFamily: AppFonts.jost,
                        fontSize: 14.sp,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  Text(
                    'example@gmail.com',
                    style: TextStyles.caption.copyWith(
                      fontFamily: AppFonts.jost,
                      fontSize: 14.sp,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32.h),

              Center(
                child: Pinput(
                  controller: otpController,
                  length: 4,
                  keyboardType: TextInputType.number,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,
                  separatorBuilder: (index) {
                    return SizedBox(width: 16.w);
                  },
                  cursor: Container(
                    width: 1.5.w,
                    height: 22.h,

                    color: theme.colorScheme.primary,
                  ),
                  onCompleted: (value) {
                    debugPrint('OTP: $value');
                  },
                ),
              ),

              SizedBox(height: 40.h),

              AppButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RouteNames.forgotPassword,
                  );
                },
              ),

              SizedBox(height: 24.h),

              Center(
                child: seconds > 0
                    ? Text(
                        'Resend confirmation code '
                        '(0:${seconds.toString().padLeft(2, '0')})',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppFonts.jost,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor,
                        ),
                      )
                    : RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Didn’t receive code? ',
                              style: TextStyle(
                                fontFamily: AppFonts.jost,
                                fontSize: 16.sp,
                                fontWeight: .bold,
                                color: AppColors.greyColor,
                              ),
                            ),
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: resendOtp,
                                child: Text(
                                  'Resend Code',
                                  style: TextStyle(
                                    fontFamily: AppFonts.jost,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
