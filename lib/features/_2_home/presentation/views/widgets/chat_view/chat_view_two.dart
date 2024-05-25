import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:bubble/bubble.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../../../../../../core/utlis/functions/random_string.dart';
import 'profile_images_bubble_chat.dart';

class ChatViewTwo extends StatefulWidget {
  const ChatViewTwo({super.key});

  @override
  State<ChatViewTwo> createState() => _ChatViewTwoState();
}

class _ChatViewTwoState extends State<ChatViewTwo> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  // String cacheMessage = "";
  // late types.PartialText partialText;

  @override
  void initState() {
    super.initState();
    // partialText = PartialText(text: cacheMessage);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Chat(
      messages: _messages,
      onSendPressed: _handleSendPressed,
      user: _user,
      bubbleBuilder: _bubbleBuilder,
      theme: const DefaultChatTheme(
        backgroundColor: Colors.transparent,
        inputBackgroundColor: Colors.transparent,
        inputTextColor: Colors.black,
        sentMessageBodyTextStyle: FontStyles.textStyle14Reg,
        receivedMessageBodyTextStyle: FontStyles.textStyle14Reg,
      ),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  Widget _bubbleBuilder(
    Widget child, {
    required message,
    required nextMessageInGroup,
  }) =>
      Bubble(
        style: const BubbleStyle(),
        color: AppColors.backgroundGrayColor,
        margin: nextMessageInGroup
            ? const BubbleEdges.only(
                right: 16,
                top: 4,
                bottom: 10,
                left: 29,
              )
            : null,
        nip: nextMessageInGroup
            ? BubbleNip.no
            : _user.id != message.author.id
                ? BubbleNip.leftBottom
                : BubbleNip.rightBottom,
        radius: const Radius.circular(20),
        child: child,
      );
}
