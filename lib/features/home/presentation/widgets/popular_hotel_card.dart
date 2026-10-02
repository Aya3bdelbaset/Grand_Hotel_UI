import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/data/model/hotel_model.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/action_button.dart';

class PopularHotelCard extends StatefulWidget {
  final HotelModel hotel;

  const PopularHotelCard({super.key, required this.hotel});

  @override
  State<PopularHotelCard> createState() => _PopularHotelCardState();
}

class _PopularHotelCardState extends State<PopularHotelCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 182,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: widget.hotel.image,
              fit: BoxFit.cover,
              color: Colors.black26,
              colorBlendMode: BlendMode.darken,
            ),
          ),

          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ActionButton(
                icon: isFavorite ? Icons.favorite : Icons.favorite_border,
                iconColor: isFavorite ? Colors.pink : Colors.black87,
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                size: 15,
              ),
            ),
          ),

          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.hotel.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const Gap(3),

                Text(
                  widget.hotel.location,
                  style: const TextStyle(color: Colors.white70, fontSize: 9),
                ),

                const Gap(5),

                Row(
                  children: [
                    Text(
                      '\$${widget.hotel.price.toInt()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      ' /night',
                      style: TextStyle(color: Colors.white70, fontSize: 9),
                    ),

                    const Spacer(),

                    const Icon(Icons.star, size: 13, color: Colors.amber),

                    const Gap(2),

                    Text(
                      widget.hotel.rating.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
