import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/core/shared/widgets/custom_search_bar.dart';
import 'package:grand_hotel_ui/features/home/data/dummy_hotels.dart';
import 'package:grand_hotel_ui/features/home/data/model/category_model.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/favourite/category_filter_list.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/favourite/favorite_grid_section.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedCategoryIndex = 0;

  final List<CategoryModel> categories = const [
    CategoryModel(title: 'All', icon: Icons.apps),
    CategoryModel(title: 'Villas', icon: Icons.villa_outlined),
    CategoryModel(title: 'Hotels', icon: Icons.hotel_outlined),
    CategoryModel(title: 'Apartments', icon: Icons.apartment_outlined),
  ];

  late List<HotelModel> favoriteHotels;

  @override
  void initState() {
    super.initState();
    favoriteHotels = List.from(recommendedHotels);
  }

  void removeFavorite(HotelModel hotel) {
    setState(() {
      favoriteHotels.remove(hotel);
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
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text(
          'My Favorite',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.sort, color: Colors.black),
            onPressed: () {
              // Open Sort / Filter Option
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap( 16),
              CustomSearchBar(
                controller: _searchController,
                onSubmitted: (query) {},
                onFilterTap: () {},
              ),
              const Gap( 16),
              CategoryFilterList(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategorySelected: (index) {
                  setState(() {
                    _selectedCategoryIndex = index;
                  });
                },
              ),
              const Gap( 20),

              FavoriteGridSection(
                favoriteHotels: favoriteHotels,
                onRemoveFavorite: removeFavorite,
              ),
              const Gap( 20),
            ],
          ),
        ),
      ),
    );
  }
}
