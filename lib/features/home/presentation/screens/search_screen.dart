import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/core/shared/widgets/custom_search_bar.dart';
import 'package:grand_hotel_ui/features/home/data/dummy_hotels.dart';
import 'package:grand_hotel_ui/features/home/data/model/recent_search_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/search/recent_search_section.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/search/recent_view_section.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  List<RecentSearchModel> recentSearches = [
    RecentSearchModel(
      id: '1',
      title: 'Golden Sands Retreat',
      subtitle: 'Clearwater, FL',
    ),
    RecentSearchModel(
      id: '2',
      title: 'Crystal Peak Lodge',
      subtitle: 'Aspen, CO',
    ),
    RecentSearchModel(
      id: '3',
      title: 'Coral Bay Resort',
      subtitle: 'Miami Beach, FL',
    ),
  ];

  void addSearchItem(String query) {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) return;

    setState(() {
      recentSearches.removeWhere(
        (item) => item.title.toLowerCase() == trimmedQuery.toLowerCase(),
      );

      recentSearches.insert(
        0,
        RecentSearchModel(
          id: DateTime.now().toString(),
          title: trimmedQuery,
          subtitle: 'Recent Search',
        ),
      );

      _searchController.clear();
    });
  }

  void deleteSearchItem(String id) {
    setState(() {
      recentSearches.removeWhere((item) => item.id == id);
    });
  }

  void clearAllSearches() {
    setState(() {
      recentSearches.clear();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
          'Search',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(16),
              CustomSearchBar(
                controller: _searchController,
                onSubmitted: addSearchItem,
                onFilterTap: () {},
              ),
              const Gap(28),
              RecentSearchesSection(
                recentSearches: recentSearches,
                onClearAll: clearAllSearches,
                onDeleteItem: deleteSearchItem,
                onItemTap: (selectedTitle) {
                  _searchController.text = selectedTitle;
                },
              ),
              const Gap(20),
              RecentlyViewedSection(hotels: recommendedHotels, onSeeAll: () {}),
              const Gap(16),
            ],
          ),
        ),
      ),
    );
  }
}
