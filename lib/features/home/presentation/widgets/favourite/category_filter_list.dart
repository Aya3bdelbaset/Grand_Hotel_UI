import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/model/category_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/category_filter.dart'; 

class CategoryFilterList extends StatelessWidget {
  final List<CategoryModel> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CategoryFilterList({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const Gap(8),
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryFilter(
            title: category.title,
            icon: category.icon,
            isSelected: selectedIndex == index,
            onTap: () => onCategorySelected(index),
          );
        },
      ),
    );
  }
}
