import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/arrow_back.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  static const Color primaryColor = AppColors.primaryColor;
  static const Color fieldColor = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF20212D);

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _onNextPressed() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, RouteNames.createNewPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                ArrowBack(),

                SizedBox(height: 34.h),

                Center(
                  child: Text(
                    'Forgot Password',
                    style: TextStyles.headline2.copyWith(
                      fontWeight: .bold,
                      fontFamily: AppFonts.jost,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                Center(
                  child: Text(
                    'Recover your account password',
                    style: TextStyles.caption.copyWith(
                      fontFamily: AppFonts.jost,
                      fontSize: 16.sp,
                      color: Color(0xFF515663),
                    ),
                  ),
                ),

                SizedBox(height: 28.h),

                CustomTextField(
                  label: 'E-mail',
                  hintText: 'Enter your email',
                  controller: _emailController,
                ),

                SizedBox(height: 40.h),

                AppButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RouteNames.createNewPassword,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
