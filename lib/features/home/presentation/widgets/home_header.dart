import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:grand_hotel_ui/features/home/presentation/screens/favorite_screen.dart';
import 'package:grand_hotel_ui/features/home/presentation/screens/search_screen.dart';
import 'package:grand_hotel_ui/features/home/presentation/widgets/action_button.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 21,
          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
        ),

        const Gap(10),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Matr Kohler',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Gap(3),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14,
                    color: Colors.grey,
                  ),
                  Gap(2),
                  Text(
                    'San Diego, CA',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        ActionButton(
          icon: Icons.search,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          },
          size: 20,
        ),
        const Gap(8),
        ActionButton(
          icon: isFavorite ? Icons.favorite : Icons.favorite_border,
          iconColor: isFavorite ? Colors.pink : Colors.black87,
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
              );
            });
          },
          size: 20,
        ),
      ],
    );
  }
}
