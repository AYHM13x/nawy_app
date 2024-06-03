import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_message_package/voice_message_package.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../../core/utlis/enums/message_type.dart';
import 'child_of_bubble_message.dart';
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
          margin: BubbleEdges.only(
            bottom: 10.h,
          ),
          padding: const BubbleEdges.all(0),
          nip: isSender ? BubbleNip.rightBottom : BubbleNip.leftBottom,
          radius: const Radius.circular(20),
          child: ChildOfBubbleMessage(
            messageType: MessageType.text,
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