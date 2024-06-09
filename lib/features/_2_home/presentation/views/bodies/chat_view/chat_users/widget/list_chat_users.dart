import 'package:flutter/material.dart';

import '../chat_users.dart';
import 'item_chat.dart';

class ChatList extends StatelessWidget {
  final List<ChatItem> chatItems;

  const ChatList({required this.chatItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatItems.length,
      itemBuilder: (context, index) {
        final item = chatItems[index];
        return ChatListItem(item: item);
      },
    );
  }
}
