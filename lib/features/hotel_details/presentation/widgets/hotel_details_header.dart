import 'package:flutter/material.dart';

class HotelDetailsHeader extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onBackPressed;
  final VoidCallback? onMenuPressed;

  const HotelDetailsHeader({
    super.key,
    required this.imageUrl,
    required this.onBackPressed,
    this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          height: 320,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            height: 320,
            color: Colors.grey.shade300,
            child: const Icon(Icons.hotel, size: 50, color: Colors.grey),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          left: 12,
          right: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: onBackPressed,
              ),
              const Text(
                'Detail',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: onMenuPressed ?? () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
