class HotelModel {
  final String name;
  final String location;
  final String image;
  final double price;
  final double rating;
  final int? reviews;
  final double? oldPrice;
  final bool isFavorite;
  final String? id;

  const HotelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.price,
    required this.rating,
    this.reviews,
    this.oldPrice,
    this.isFavorite = false,
    this.id,
  });
}
