import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/reviews/data/dummy_review_list.dart';
import 'package:grand_hotel_ui/features/reviews/presentation/widgets/review_item_card.dart';
import 'package:grand_hotel_ui/features/reviews/presentation/widgets/review_summary_card.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Reviews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.sort, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReviewSummaryCard(
              rating: 4.4,
              totalReviews: 532,
              ratingPercentages: {1: 0.15, 2: 0.25, 3: 0.35, 4: 0.60, 5: 0.85},
            ),

            const Gap(32),
            Text(
              'Reviews (${dummyReviewsList.length > 500 ? 532 : dummyReviewsList.length})',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dummyReviewsList.length,
              itemBuilder: (context, index) {
                return ReviewItemCard(review: dummyReviewsList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
