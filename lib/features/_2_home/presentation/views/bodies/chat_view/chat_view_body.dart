import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:image_picker/image_picker.dart';
import 'package:nawy_app/generated/l10n.dart';
import 'package:record/record.dart';

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
  late AudioRecorder audioRecord;
  bool isRecording = false;
  String? pathRecord;

  final ScrollController _listScrollController = ScrollController();
  // final ScrollController _textScrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  List<String> messages = ["mm", "mm", "mm"];
  bool isEmojiKeyBoardShow = false;

  @override
  void initState() {
    audioRecord = AudioRecorder();
    super.initState();
  }

  @override
  void dispose() {
    audioRecord.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: getPaddingKeyBoardBottom(
            isEmojiKeyBoardShow,
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
                    onTap: sendImageCameraMessage,
                    child: CustomSvgPicAsset(
                      image: AppImages.cameraIcon,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onLongPress: startRecording,
                    onLongPressCancel: stopRecording,
                    child: CustomSvgPicAsset(
                      image: AppImages.recordIcon,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onTap: sendImageGalleryMessage,
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
                          if (isEmojiKeyBoardShow) {
                            isEmojiKeyBoardShow = false;
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
                            if (!isEmojiKeyBoardShow) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {});
                              await Future.delayed(
                                  const Duration(milliseconds: 200), () {
                                isEmojiKeyBoardShow = !isEmojiKeyBoardShow;
                              });
                              setState(() {});
                            } else {
                              isEmojiKeyBoardShow = !isEmojiKeyBoardShow;
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
              emojiIsShow: isEmojiKeyBoardShow,
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

  void sendImageGalleryMessage() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      // final message = types.ImageMessage(
      //   author: _user,
      //   createdAt: DateTime.now().millisecondsSinceEpoch,
      //   height: image.height.toDouble(),
      //   id:" randomString()",
      //   name: result.name,
      //   size: bytes.length,
      //   uri: result.path,
      //   width: image.width.toDouble(),
      // );

      // _addMessage(message);
    }
  }

  void sendImageCameraMessage() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.camera,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      // final message = types.ImageMessage(
      //   author: _user,
      //   createdAt: DateTime.now().millisecondsSinceEpoch,
      //   height: image.height.toDouble(),
      //   id:" randomString()",
      //   name: result.name,
      //   size: bytes.length,
      //   uri: result.path,
      //   width: image.width.toDouble(),
      // );

      // _addMessage(message);
    }
  }

  Future<void> startRecording() async {
    try {
      if (await audioRecord.hasPermission()) {
        audioRecord.start(
          const RecordConfig(),
          path: "assets/records/my_record.mp3",
        );
        setState(() {
          isRecording = true;
        });
      }
    } catch (e) {
      debugPrint("error start recording: $e");
    }
  }

  Future<void> stopRecording() async {
    try {
      pathRecord = await audioRecord.stop();
      setState(() {
        isRecording = false;
      });
    } catch (e) {
      debugPrint("error stop recording: $e");
    }
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
      if (isEmojiKeyBoardShow) {
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