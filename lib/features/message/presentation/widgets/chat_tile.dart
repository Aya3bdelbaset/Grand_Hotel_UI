import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_fonts.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/core/theme/app_text_style.dart';
import 'package:grand_hotel_ui/features/message/data/models/chat_model.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;
  final VoidCallback? onTap;

  const ChatTile({super.key, required this.chat, this.onTap});

  @override
  Widget build(BuildContext context) {
    final avatarSize = 44.w;

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    chat.avatar,
                    width: avatarSize,
                    height: avatarSize,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      width: avatarSize,
                      height: avatarSize,
                      color: AppColors.accentColor,
                      child:
                          const Icon(Icons.person, color: AppColors.greyColor),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chat.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.caption.copyWith(
                          fontFamily: AppFonts.jost,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.caption2.copyWith(
                          fontFamily: AppFonts.plusJakartaSans,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      chat.time,
                      style: TextStyles.caption2.copyWith(
                        fontSize: 10.sp,
                        fontFamily: AppFonts.plusJakartaSans,
                        color: AppColors.greyColor,
                      ),
                    ),
                    if (chat.unread > 0) ...[
                      SizedBox(height: 4.h),
                      Container(
                        width: 18.w,
                        height: 18.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.redColor,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${chat.unread}',
                          style: TextStyles.caption2.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.accentColor),
        ],
      ),
    );
  }
}