import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';

const popularHotels = [
  HotelModel(
    name: 'The Horizon Retreat',
    location: 'Los Angeles, CA',
    image: 'https://images.unsplash.com/photo-1540541338287-41700207dee6',
    price: 480,
    rating: 4.5,
  ),
  HotelModel(
    name: 'Opal Grove Inn',
    location: 'San Diego, CA',
    image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    price: 190,
    rating: 4.5,
  ),
  HotelModel(
    name: 'Serenity Sands',
    location: 'Honolulu, HI',
    image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
    price: 270,
    rating: 4.0,
  ),
  HotelModel(
    name: 'Elysian Suites',
    location: 'San Diego, CA',
    image: 'https://images.unsplash.com/photo-1564501049412-61c2a3083791',
    price: 320,
    rating: 3.8,
  ),
];

const recommendedHotels = [
  HotelModel(
    name: 'Serenity Sands',
    location: 'Honolulu, HI',
    image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
    price: 270,
    rating: 4.0,
  ),
  HotelModel(
    name: 'Elysian Suites',
    location: 'San Diego, CA',
    image: 'https://images.unsplash.com/photo-1564501049412-61c2a3083791',
    price: 320,
    rating: 3.8,
  ),
  HotelModel(
    name: 'The Horizon Retreat',
    location: 'Los Angeles, CA',
    image: 'https://images.unsplash.com/photo-1540541338287-41700207dee6',
    price: 480,
    rating: 4.5,
  ),
  HotelModel(
    name: 'Opal Grove Inn',
    location: 'San Diego, CA',
    image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    price: 190,
    rating: 4.5,
  ),
  HotelModel(
    name: 'Elysian Suites',
    location: 'San Diego, CA',
    image: 'https://images.unsplash.com/photo-1564501049412-61c2a3083791',
    price: 320,
    rating: 3.8,
  ),
];

class DummyHotels {
  static const popularHotels = [
    HotelModel(
      name: 'Serenity Sands',
      location: 'Honolulu, HI',
      image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
      price: 270,
      rating: 4.0,
    ),
    HotelModel(
      name: 'Elysian Suites',
      location: 'San Diego, CA',
      image: 'https://images.unsplash.com/photo-1540541338287-41700207dee6',
      price: 320,
      rating: 3.8,
    ),
  ];

  static const bestTodayHotels = [
    HotelModel(
      name: 'Tranquil Shores',
      location: 'Santa Monica, CA',
      image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      price: 120,
      oldPrice: 199,
      rating: 4.4,
      reviews: 532,
    ),
    HotelModel(
      name: 'Ocean Breeze',
      location: 'Miami, FL',
      image: 'https://images.unsplash.com/photo-1505881502353-a1986add3762',
      price: 145,
      oldPrice: 210,
      rating: 4.6,
      reviews: 428,
    ),
  ];
}
