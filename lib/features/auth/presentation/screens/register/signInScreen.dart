
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/core/validators/validation.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/footer.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/socialButton.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

               
                GestureDetector(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 22.sp,
                    color: const Color(0xff20212B),
                  ),
                ),

                SizedBox(height: 34.h),

               
                Center(
                  child: Text(
                    'Let’s Sign you in',
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

                SizedBox(height: 25.h),

                
                CustomTextField(
                  label: 'Email Address',
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

                SizedBox(height: 16.h),

                
                Row(
                  children: [
                    SizedBox(
                      width: 23.w,
                      height: 23.h,
                      child: Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        },
                        activeColor: AppColors.primaryColor,
                        side: const BorderSide(
                          color: AppColors.greyColor,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),

                    SizedBox(width: 5.w),

                    Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: AppFonts.jost,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors.greyColor,
                      ),
                    ),

                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/forgot-password',
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontFamily: AppFonts.jost,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.redColor,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,
                  height: 46.h,
                  child: AppButton(
                    text: 'Sign In',
                    onPressed: (){
                            Navigator.pushReplacementNamed(context, '/home');

                    },
                  ),
                ),

                SizedBox(height: 24.h),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(
                          fontFamily: AppFonts.jost,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff7B858D),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: AppFonts.jost,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff2855B5),
                          ),
                        ),
                      ),
                    ],
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

