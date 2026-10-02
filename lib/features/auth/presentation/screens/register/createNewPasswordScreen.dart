import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/routes/routes_name.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/arrow_back.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:grand_hotel_ui/core/shared/widgets/custom_button.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void onNextPressed() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password validated successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 19.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                const ArrowBack(),

                SizedBox(height: 34.h),

                Center(
                  child: Text(
                    'Create a\nNew Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppFonts.jost,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      height: 1.25,
                      color: const Color(0xff20212B),
                    ),
                  ),
                ),

                SizedBox(height: 12.h),

                Center(
                  child: Text(
                    'Enter your new password',
                    style: TextStyles.body.copyWith(
                      fontFamily: AppFonts.jost,

                      fontWeight: .normal,
                      color: const Color(0xff515663),
                    ),
                  ),
                ),

                SizedBox(height: 34.h),

                CustomTextField(
                  label: 'New Password',
                  hintText: 'Enter new password',
                  controller: newPasswordController,
                  obscureText: !isPasswordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                      size: 18.sp,
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                CustomTextField(
                  label: 'Confirm Password',
                  hintText: 'Confirm your password',
                  controller: confirmPasswordController,
                  obscureText: !isConfirmPasswordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                      size: 18.sp,
                    ),
                  ),
                ),

                SizedBox(height: 40.h),

                AppButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RouteNames.signIn);
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
