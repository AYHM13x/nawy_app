import 'package:flutter/material.dart';

import 'bubble_chat_item.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  final List<String> messages;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 30,
          ),
          child: BubbleChatItem(
            text: messages[index],
            isSender: index % 2 == 0 ? false : true,
          ),
        );
      },
    );
  }
}
