import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:voice_message_package/voice_message_package.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/enums/message_type.dart';

class ChildOfBubbleMessage extends StatefulWidget {
  const ChildOfBubbleMessage({
    super.key,
    required this.messageType,
    this.text,
    this.imagesUrl,
    this.voiceUrl,
  });

  final MessageType messageType;
  final String? text;
  final String? imagesUrl;
  final String? voiceUrl;

  @override
  State<ChildOfBubbleMessage> createState() => _ChildOfBubbleMessageState();
}

class _ChildOfBubbleMessageState extends State<ChildOfBubbleMessage> {
  @override
  @override
  Widget build(BuildContext context) {
    switch (widget.messageType) {
      case MessageType.voice:
        return VoiceMessageView(
          backgroundColor: AppColors.backgroundGrayColor,
          activeSliderColor: AppColors.yellowColor,
          circlesColor: AppColors.yellowColor,
          controller: VoiceController(
            audioSrc: widget.voiceUrl ??
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
        return Container(
          // key: textKey,
          // width: (widget.text!.length * 30),
          width: getWidthText(context, widget.text!),
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
          child: Text(
            widget.text ?? "",
          ),
        );
      case MessageType.image:
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            AppImages.dillon,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.medium,
          ),
        );
      default:
        return const SizedBox();
    }
  }

  double getWidthText(BuildContext context, String text) {
    double percent = 50.0;
    double numOfLetters = 30.0;
    debugPrint(text.length.toString());
    if (text.length >= numOfLetters ||
        text.length * numOfLetters >=
            DimensionsOfScreen.dimensionsOfWidth(context, percent)) {
      return DimensionsOfScreen.dimensionsOfWidth(context, percent);
    } else {
      return (text.length * numOfLetters) - 5;
    }
  }
}
