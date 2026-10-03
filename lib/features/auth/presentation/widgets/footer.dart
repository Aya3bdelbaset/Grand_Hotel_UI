import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/features/auth/presentation/widgets/socialButton.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: const Color(0xffE8E9EC),
                        thickness: 1,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Or Sign In with',
                        style: TextStyle(
                          fontFamily: AppFonts.jost,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff929BA5),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        color: const Color(0xffE8E9EC),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButton(child: SvgPicture.asset(
                            'assets/icons/Icon - Google.svg',
                          )),
        
                        SocialButton(child: Icon(
                            Icons.apple,
                            size: 34.sp,
                            color: const Color(0xff171722),
                          )),
        
                        SocialButton(child: Icon(
                            Icons.facebook,
                            size: 34.sp,
                            color: const Color(0xff4267B2),
                          )),
                      ],
                    ),
                                  SizedBox(height: 46.h),

                // Terms and conditions
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: AppFonts.jost,
                        fontSize: 16.sp,
                        height: 1.5,
                        color: const Color(0xff8B949D),
                      ),
                      children: const [
                        TextSpan(
                          text: 'By signing up you agree to our ',
                        ),
                        TextSpan(
                          text: 'Terms\n',
                          style: TextStyle(
                            color: Color(0xff20212B),
                          ),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Conditions of Use',
                          style: TextStyle(
                            color: Color(0xff20212B),
                           ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
