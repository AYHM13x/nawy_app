import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:voice_message_package/voice_message_package.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../../core/utlis/enums/message_type.dart';
import 'profile_images_bubble_chat.dart';

class BubbleChatItem extends StatelessWidget {
  const BubbleChatItem({
    super.key,
    required this.text,
    required this.isSender,
  });

  final String text;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        isSender
            ? ProfileImageBubbleChat(
                isSender: isSender,
              )
            : const SizedBox(),
        Bubble(
          style: const BubbleStyle(),
          color: AppColors.backgroundGrayColor,
          margin: const BubbleEdges.only(
            bottom: 10,
          ),
          nip: isSender ? BubbleNip.rightBottom : BubbleNip.leftBottom,
          radius: const Radius.circular(20),
          padding: const BubbleEdges.only(
            right: 16,
            left: 29,
            top: 4,
            bottom: 8,
          ),
          child: ChildOfBubbleMessage(
            messageType: MessageType.voice,
            text: text,
          ),
        ),
        isSender
            ? const SizedBox()
            : ProfileImageBubbleChat(
                isSender: isSender,
              )
      ],
    );
  }
}

class ChildOfBubbleMessage extends StatelessWidget {
  const ChildOfBubbleMessage({
    super.key,
    required this.messageType,
    this.text,
    this.voiceUrl,
  });

  final MessageType messageType;
  final String? text;
  final String? voiceUrl;

  @override
  Widget build(BuildContext context) {
    switch (messageType) {
      case MessageType.voice:
        return VoiceMessageView(
          backgroundColor: AppColors.backgroundGrayColor,
          activeSliderColor: AppColors.yellowColor,
          circlesColor: AppColors.yellowColor,
          controller: VoiceController(
            audioSrc: voiceUrl ??
                'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
            onComplete: () {},
            onPause: () {},
            onPlaying: () {},
            onError: (err) {},
            maxDuration: const Duration(minutes: 30),
            isFile: false,
          ),
          innerPadding: 8,
          // cornerRadius: 20,
        );
      case MessageType.text:
        return Text(text ?? "");

      default:
        return const SizedBox();
    }
  }
}
// BubbleSpecialTwo(
//           text: text,
//           isSender: isSender,
//           color: AppColors.backgroundGrayColor,
//           textStyle: FontStyles.textStyle14Reg,
//           constraints: BoxConstraints(
//             maxWidth: DimensionsOfScreen.dimensionsOfWidth(context, 70),
//           ),
//           // sent: true,
//           // seen: true,
//           // delivered: true,
//         )