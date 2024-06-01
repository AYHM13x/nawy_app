import 'package:flutter/material.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;

class EmojiPickerKeyboardView extends StatelessWidget {
  const EmojiPickerKeyboardView({
    super.key,
    required this.emojiIsShow,
    required this.controller,
    this.onEmojiSelected,
    this.onBackspacePressed,
  });

  final bool emojiIsShow;
  final TextEditingController controller;
  final Function(Category?, Emoji)? onEmojiSelected;
  final Function()? onBackspacePressed;
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !emojiIsShow,
      child: EmojiPicker(
        textEditingController: controller,
        // scrollController: scrollController,
        onEmojiSelected: onEmojiSelected,
        onBackspacePressed: onBackspacePressed,
        config: Config(
          height: 256,
          checkPlatformCompatibility: true,
          emojiViewConfig: EmojiViewConfig(
            // Issue: https://github.com/flutter/flutter/issues/28894
            emojiSizeMax: 28 *
                (foundation.defaultTargetPlatform == TargetPlatform.iOS
                    ? 1.2
                    : 1.0),
          ),
          swapCategoryAndBottomBar: true,
          skinToneConfig: const SkinToneConfig(),
          categoryViewConfig: const CategoryViewConfig(),
          bottomActionBarConfig: const BottomActionBarConfig(
            backgroundColor: Colors.transparent,
            buttonIconColor: Colors.blue,
            buttonColor: Colors.transparent,
          ),
          searchViewConfig: const SearchViewConfig(),
        ),
      ),
    );
  }
}