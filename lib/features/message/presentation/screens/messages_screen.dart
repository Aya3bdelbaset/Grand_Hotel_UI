import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grand_hotel_ui/core/constants/app_sizes.dart';
import 'package:grand_hotel_ui/core/theme/app_colors.dart';
import 'package:grand_hotel_ui/features/message/data/models/chat_model.dart';
import 'package:grand_hotel_ui/features/message/presentation/widgets/chat_tile.dart';
import 'package:grand_hotel_ui/shared/widgets/custom_search_bar.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = ChatModel.sample;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text('Message'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.screenHorizontalPadding.w,
        ),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            const CustomSearchBar(),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (_, i) => ChatTile(chat: chats[i]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}