import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/model/recent_search_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/search/recent_search_header.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/search/recent_search_tile.dart';

class RecentSearchesSection extends StatelessWidget {
  final List<RecentSearchModel> recentSearches;
  final VoidCallback onClearAll;
  final ValueChanged<String> onDeleteItem;
  final ValueChanged<String> onItemTap;

  const RecentSearchesSection({
    super.key,
    required this.recentSearches,
    required this.onClearAll,
    required this.onDeleteItem,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecentSearchesHeader(
          isVisible: recentSearches.isNotEmpty,
          onClearAll: onClearAll,
        ),
        const Gap(12),
        if (recentSearches.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'No recent searches',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
              ),
            ),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recentSearches.length,
            separatorBuilder: (context, index) => const Gap(4),
            itemBuilder: (context, index) {
              final item = recentSearches[index];
              return RecentSearchTile(
                title: item.title,
                subtitle: item.subtitle,
                onDelete: () => onDeleteItem(item.id),
                onTap: () => onItemTap(item.title),
              );
            },
          ),
      ],
    );
  }
}
