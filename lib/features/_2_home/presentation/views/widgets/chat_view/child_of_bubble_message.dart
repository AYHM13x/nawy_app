import 'package:flutter/material.dart';
import 'package:voice_message_package/voice_message_package.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/enums/message_type.dart';

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
