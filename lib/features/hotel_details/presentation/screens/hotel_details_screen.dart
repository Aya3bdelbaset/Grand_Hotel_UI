import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/dummy_hotels.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';
import 'package:grand_hotel_ui/features/hotel_details/model/review_model.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/booking_bottom_bar.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/facilities_section.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/hotel_details_header.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/hotel_info_card.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/location_section.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/recommendations_section.dart';
import 'package:grand_hotel_ui/features/hotel_details/presentation/widgets/reviews_section.dart';
import 'package:grand_hotel_ui/features/reviews/presentation/screens/reviews_screen.dart';

class HotelDetailsScreen extends StatefulWidget {
  final HotelModel? hotel;

  const HotelDetailsScreen({super.key, this.hotel});

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  final List<FacilityItem> facilities = const [
    FacilityItem(title: 'Ac', icon: Icons.ac_unit),
    FacilityItem(title: 'Restaurant', icon: Icons.restaurant),
    FacilityItem(title: 'Swimming Pool', icon: Icons.pool),
    FacilityItem(title: '24-Hours Front Desk', icon: Icons.support_agent),
  ];

  final List<ReviewModel> dummyReviews = const [
    ReviewModel(
      userName: 'Kim Borrdy',
      userAvatar: 'https://i.pravatar.cc/150?img=12',
      comment: 'Amazing! The room is good from the picture. Thanks for amazing experience!',
      rating: 4.5,
    ),
    ReviewModel(
      userName: 'The service is on point...',
      userAvatar: 'https://i.pravatar.cc/150?img=32',
      comment: 'The service is on point, and I really like the facilities. Good job!',
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final currentHotel =
        widget.hotel ??
        const HotelModel(
          name: 'The Aston Vill Hotel',
          location: 'Veum Point, Michikoton',
          image: 'https://images.unsplash.com/photo-1540541338287-41700207dee6',
          price: 120,
          rating: 4.6,
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                HotelDetailsHeader(
                  imageUrl: currentHotel.image,
                  onBackPressed: () => Navigator.maybePop(context),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 270),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HotelInfoCard(hotel: currentHotel, on3DViewTap: () {}),
                      const Gap(24),

                      FacilitiesSection(
                        facilities: facilities,
                        onSeeAllTap: () {},
                      ),
                      const Gap(24),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const Gap(8),
                      Text(
                        'The ideal place for those looking for a luxurious and tranquil holiday experience with stunning sea views.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade500,
                          height: 1.5,
                        ),
                      ),
                      const Gap(24),
                      LocationSection(
                        address: '9175 Chestnut Street Rome, NY 13440',
                        onOpenMapTap: () {},
                      ),
                      const Gap(24),

                      ReviewsSection(
                        reviews: dummyReviews,
                        onSeeAllTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReviewsScreen(),
                            ),
                          );
                        },
                      ),
                      const Gap(24),
                      RecommendationsSection(
                        recommendedHotels: recommendedHotels,
                        onHotelTap: (selectedHotel) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HotelDetailsScreen(hotel: selectedHotel),
                            ),
                          );
                        },
                        onSeeAllTap: () {},
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BookingBottomBar(
        price: currentHotel.price.toDouble(),
        onBookingTap: () {},
      ),
    );
  }
}
