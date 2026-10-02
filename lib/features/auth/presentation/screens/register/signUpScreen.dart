import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/shared/widgets/custom_button.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/validators/validation.dart';

import 'package:grand_hotel_ui/features/auth/presentation/widgets/arrow_back.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/footer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, RouteNames.enterOTP);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
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
                    'Create Account',
                    style: TextStyles.headline2.copyWith(
                      fontFamily: AppFonts.jost,
                    ),
                  ),
                ),

                SizedBox(height: 5.h),

                Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur',
                    textAlign: TextAlign.center,
                    style: TextStyles.caption.copyWith(
                      fontFamily: AppFonts.jost,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),

                SizedBox(height: 32.h),

                CustomTextField(
                  label: 'Full Name',
                  hintText: 'Enter your full name',
                  controller: nameController,
                  keyboardType: TextInputType.name,
                ),

                SizedBox(height: 16.h),

                CustomTextField(
                  label: 'Email',
                  hintText: 'Enter your email address',
                  controller: emailController,
                  validator: AppValidators.email,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 16.h),

                CustomTextField(
                  label: 'Password',
                  hintText: 'Enter your password',
                  controller: passwordController,
                  validator: AppValidators.password,
                  obscureText: !isPasswordVisible,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: const Color(0xff20212B),
                      size: 18.sp,
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                SizedBox(
                  width: double.infinity,
                  height: 46.h,
                  child: AppButton(
                    text: 'Create An Account',
                    onPressed: _signUp,
                  ),
                ),

                SizedBox(height: 24.h),

                Footer(),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
