import 'package:flutter/material.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/favourite/favorite_hotel_card.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/screens/hotel_details_screen.dart';

class FavoriteGridSection extends StatelessWidget {
  final List<HotelModel> favoriteHotels;
  final ValueChanged<HotelModel> onRemoveFavorite;

  const FavoriteGridSection({
    super.key,
    required this.favoriteHotels,
    required this.onRemoveFavorite,
  });

  @override
  Widget build(BuildContext context) {
    if (favoriteHotels.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Text(
            'No favorites added yet',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
          ),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: favoriteHotels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 16,
        childAspectRatio: 0.68,
      ),
      itemBuilder: (context, index) {
        final hotel = favoriteHotels[index];
        return FavoriteHotelCard(
          hotel: hotel,
          isFavorite: true,
          onFavoriteTap: () => onRemoveFavorite(hotel),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HotelDetailsScreen(hotel: hotel),
              ),
            );
          },
        );
      },
    );
  }
}
