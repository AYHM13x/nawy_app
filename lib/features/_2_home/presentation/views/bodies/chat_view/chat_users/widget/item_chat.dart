import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/chat_view/chat_view_body.dart';

import '../chat_users.dart';

class ChatListItem extends StatelessWidget {
  final ChatItem item;
  const ChatListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatViewBody(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(item.avatar),
              radius: 32,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(item.message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.grey[600],
                          overflow: TextOverflow.ellipsis)),
                ],
              ),
            ),
            Column(
              children: [
                Text(item.time,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                if (item.badgeCount > 0)
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 12,
                    child: Text('${item.badgeCount}',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
