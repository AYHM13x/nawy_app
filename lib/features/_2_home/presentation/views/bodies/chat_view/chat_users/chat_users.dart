import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'widget/list_chat_users.dart';
import 'widget/searchBar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatItem> chatItems = [
      ChatItem(
        avatar: AppImages.accountImageProfile,
        name: 'محمد خليل',
        message: 'Will head to the Help Center...',
        time: '2 min ago',
        badgeCount: 3,
      ),
      ChatItem(
        avatar: AppImages.accountImageProfile,
        name: 'علاء المرعي',
        message: 'great catching up over dinner!!',
        time: '2 min ago',
        badgeCount: 4,
      ),
      ChatItem(
        avatar: AppImages.accountImageProfile,
        name: 'هدى الهدى',
        message: 'great catching up over dinner!!',
        time: '2 min ago',
        badgeCount: 4,
      ),
      ChatItem(
        avatar: AppImages.accountImageProfile,
        name: 'شيرين العلي',
        message:
            "Jack needs to find a sitter for the dog and I don’t know who’s good",
        time: '',
        badgeCount: 0,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pickColor,
        centerTitle: true,
        title: const Text(
          'محاداثاتي',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBarChat(),
            Expanded(
              child: ChatList(chatItems: chatItems),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem {
  final String avatar;
  final String name;
  final String message;
  final String time;
  final int badgeCount;

  ChatItem({
    required this.avatar,
    required this.name,
    required this.message,
    required this.time,
    required this.badgeCount,
  });
}
