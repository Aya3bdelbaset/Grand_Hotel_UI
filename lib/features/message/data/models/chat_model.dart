import 'package:grand_hotel_ui/core/constants/app_assets.dart';

class ChatModel {
  final String name;
  final String lastMessage;
  final String time;
  final String avatar;
  final int unread;

  const ChatModel({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatar,
    this.unread = 0,
  });

  static const List<ChatModel> sample = [
    ChatModel(
      name: 'Miss Dolores Schowalter',
      lastMessage: 'Thank you! 😊',
      time: '7:12 Am',
      avatar: AppAssets.avatar1,
      unread: 3,
    ),
    ChatModel(
      name: 'Lorena Farrell',
      lastMessage: 'Yes! please take a order',
      time: '9:28 Am',
      avatar: AppAssets.avatar2,
    ),
    ChatModel(
      name: 'Amos Hessel',
      lastMessage: 'I think this one is good',
      time: '4:35 Pm',
      avatar: AppAssets.avatar3,
    ),
    ChatModel(
      name: 'Ollie Haley',
      lastMessage: 'Wow, this is really epic',
      time: '8:12 Pm',
      avatar: AppAssets.avatar4,
    ),
    ChatModel(
      name: 'Traci Maggio',
      lastMessage: 'omg, this is amazing',
      time: '10:22 Pm',
      avatar: AppAssets.avatar5,
    ),
    ChatModel(
      name: 'Mathew Konopelski',
      lastMessage: 'woohoooo',
      time: 'yesterday',
      avatar: AppAssets.avatar6,
    ),
  ];
}