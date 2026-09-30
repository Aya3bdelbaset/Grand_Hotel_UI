import 'package:grand_hotel_ui/core/constants/app_assets.dart';

class BookingModel {
  final String name;
  final String location;
  final String image;
  final double price;
  final double rating;
  final String dates;
  final String guests;

  const BookingModel({
    required this.name,
    required this.location,
    required this.image,
    required this.price,
    required this.rating,
    required this.dates,
    required this.guests,
  });

  static const List<BookingModel> sample = [
    BookingModel(
      name: 'The Aston Vill Hotel',
      location: 'Veum Point, Michikoton',
      image: AppAssets.astonVill,
      price: 120,
      rating: 4.7,
      dates: '12 - 14 Nov 2024',
      guests: '2 Guests (1 Room)',
    ),
    BookingModel(
      name: 'Mystic Palms',
      location: 'Palm Springs, CA',
      image: AppAssets.mysticPalms,
      price: 230,
      rating: 4.0,
      dates: '20 - 25 Nov 2024',
      guests: '1 Guest (1 Room)',
    ),
    BookingModel(
      name: 'Elysian Suites',
      location: 'San Diego, CA',
      image: AppAssets.elysianSuites,
      price: 180,
      rating: 3.8,
      dates: '1 - 3 Dec 2024',
      guests: '2 Guests (1 Room)',
    ),
  ];
}