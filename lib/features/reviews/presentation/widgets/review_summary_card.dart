import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class ReviewSummaryCard extends StatelessWidget {
  final double rating;
  final int totalReviews;
  final Map<int, double> ratingPercentages;

  const ReviewSummaryCard({
    super.key,
    required this.rating,
    required this.totalReviews,
    required this.ratingPercentages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$rating',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.0,
                ),
              ),
              const Gap(8),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: 18,
                    color: index < rating.floor()
                        ? Colors.amber
                        : Colors.grey.shade300,
                  ),
                ),
              ),
              const Gap(8),
              Text(
                'Based on $totalReviews review',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
              ),
            ],
          ),
        ),

        const Gap(16),

        Expanded(
          flex: 5,
          child: Column(
            children: List.generate(5, (index) {
              final starNumber = index + 1;
              final progress = ratingPercentages[starNumber] ?? 0.0;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Row(
                  children: [
                    Text(
                      '$starNumber',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const Gap(12),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: Colors.grey.shade200,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xff2856C7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
