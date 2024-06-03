import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:nawy_app/generated/l10n.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/widgets/custom_svg_pic_asset.dart';
import '../../appbars/chat_view/chat_view_appbar.dart';
import '../../widgets/chat_view/account_info_view.dart';
import '../../widgets/chat_view/chat_list_view.dart';
import '../../widgets/chat_view/emoji_picker_keyboard_view.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  final ScrollController _listScrollController = ScrollController();
  // final ScrollController _textScrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  List<String> messages = ["mm", "mm", "mm"];
  // String text = "";
  bool emojiIsShow = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: getPaddingKeyBoardBottom(
            emojiIsShow,
            mediaQueryData.viewInsets.bottom,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ChatViewAppbar(),
            Gap(11.h),
            const AccountInfoView(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: ChatListView(
                  messages: messages,
                  scrollController: _listScrollController,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (_textEditingController.text.isNotEmpty) {
                          sendTextMessage(_textEditingController.text);
                        }
                      });
                    },
                    icon: SvgPicture.asset(AppImages.sendIcon),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onTap: () {},
                    child: CustomSvgPicAsset(
                      image: AppImages.cameraIcon,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onLongPress: () {},
                    onLongPressCancel: () {},
                    child: CustomSvgPicAsset(
                      image: AppImages.recordIcon,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    child: CustomSvgPicAsset(
                      image: AppImages.paperClipIcon,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Gap(8.w),
                  Expanded(
                    // width: DimensionsOfScreen.dimensionsOfWidth(context, 67),
                    child: TextField(
                      controller: _textEditingController,
                      // scrollController: _textScrollController,
                      onTap: () {
                        setState(() {
                          if (emojiIsShow) {
                            emojiIsShow = false;
                          }
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          if (_textEditingController.text.isNotEmpty) {
                            sendTextMessage(_textEditingController.text);
                          }
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: S.of(context).typeHere,
                        border: border(),
                        enabledBorder: border(),
                        focusedBorder: border(),
                        disabledBorder: border(),
                        errorBorder: border(),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            if (!emojiIsShow) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {});
                              await Future.delayed(
                                  const Duration(milliseconds: 200), () {
                                emojiIsShow = !emojiIsShow;
                              });
                              setState(() {});
                            } else {
                              emojiIsShow = !emojiIsShow;
                              setState(() {});
                            }
                          },
                          icon: SvgPicture.asset(AppImages.emojiIcon),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            EmojiPickerKeyboardView(
              emojiIsShow: emojiIsShow,
              controller: _textEditingController,
              // onEmojiSelected: _onEmojiSelected(emoji),
              // onBackspacePressed: _onBackspacePressed,
              // scrollController: _textScrollController,
            ),
          ],
        ),
      ),
    );
  }

  void sendTextMessage(String value) {
    messages.add(value);
    _textEditingController.clear();
    _listScrollController
        .jumpTo(_listScrollController.position.maxScrollExtent.h + 80);
    // text = "";
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  double getPaddingKeyBoardBottom(
    bool emojiKeyBoard,
    double keyBoardBottom,
  ) {
    if (keyBoardBottom != 0) {
      if (emojiIsShow) {
        return keyBoardBottom;
      } else {
        return keyBoardBottom;
      }
    } else {
      return 0;
    }
  }
}



// TextField(
//                       controller: _textEditingController,
//                       onChanged: (value) {
//                         text = value;
//                       },
//                       onSubmitted: (value) {
//                         setState(() {
//                           if (text.isNotEmpty) {
//                             text = value;
//                             sendTextMessage(value);
//                           }
//                         });
//                       },
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: border(),
//                         enabledBorder: border(),
//                         focusedBorder: border(),
//                         disabledBorder: border(),
//                         errorBorder: border(),
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               emojiIsShow = !emojiIsShow;
//                             });
//                           },
//                           icon: SvgPicture.asset(AppImages.emojiIcon),
//                         ),
//                       ),
//                     )