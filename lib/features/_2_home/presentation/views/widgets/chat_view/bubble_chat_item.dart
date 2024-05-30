import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
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
        BubbleSpecialTwo(
          text: text,
          isSender: isSender,
          color: AppColors.backgroundGrayColor,
          textStyle: FontStyles.textStyle14Reg,
          constraints: BoxConstraints(
            maxWidth: DimensionsOfScreen.dimensionsOfWidth(context, 70),
          ),
          // sent: true,
          // seen: true,
          // delivered: true,
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
