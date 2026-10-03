import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  const new({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F6),
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

