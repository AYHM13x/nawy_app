import 'package:flutter/material.dart';

import 'bubble_chat_item.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.messages,
  });

  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // clipBehavior: Clip.none,
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
