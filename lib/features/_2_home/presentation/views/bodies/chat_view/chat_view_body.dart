import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nawy_app/features/_2_home/presentation/views/widgets/chat_view/account_info_view.dart';
import 'package:nawy_app/generated/l10n.dart';
import 'package:record/record.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/widgets/custom_svg_pic_asset.dart';
import '../../appbars/chat_view/chat_view_appbar.dart';
import '../../widgets/chat_view/chat_list_view.dart';
import '../../widgets/chat_view/emoji_picker_keyboard_view.dart';
import 'widget/audioPlayer/audioRecoder.dart';

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

  //path audio file
  String filePath = "";

  // bool isRecording = false;
  bool isRecordingCompleted = false;

  //widget audio Recording
  late AudioRecoder audioRecoder;

  //key widget audio Recording to can stop audio Recording when click btn send without stop Recording
  final GlobalKey<AudioRecoderState> audioRecorderKey = GlobalKey();

  @override
  void initState() {
    audioRecord = AudioRecorder();
    super.initState();
  }

  // @override
  // void dispose() {
  //   audioRecord.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            // bottom: getPaddingKeyBoardBottom(
            //   isEmojiKeyBoardShow,
            //   mediaQueryData.viewInsets.bottom,
            // ),
            ),
        child: Column(
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

  Widget _textEditForm() {
    return Expanded(
      child: TextField(
        controller: _textEditingController,
        // scrollController: _textScrollController,
        // onTap: eventOnTap,
        // onSubmitted: eventOnSubmitted,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: S.of(context).typeHere,
          // border: border(),
          // enabledBorder: border(),
          // focusedBorder: border(),
          // errorBorder: border(),
          constraints: BoxConstraints(maxHeight: 50),
          prefixIcon: _toolMessagePrefixIcon(),
          // suffixIcon: IconButton(
          //   onPressed: eventBtnEmoji,
          //   icon: SvgPicture.asset(AppImages.emojiIcon),
          // ),
        ),
      ),
    );
  }

//widget play audio after Recording
  Widget audioPlayerWidget() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
          child: audioRecoder,
        ),
      ),
    );
  }

  Widget _buidMessgageWidget() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: ChatListView(
          messages: messages,
          scrollController: _listScrollController,
        ),
      ),
    );
  }

  Widget _toolMessagePrefixIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Gap(8.w),
        GestureDetector(
          onTap: sendImageCameraMessage,
          child: CustomSvgPicAsset(
            image: AppImages.cameraIcon,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        Gap(8.w),
        if (isRecording == false && isRecordingCompleted == false) audioRecoder,
        Gap(8.w),
        GestureDetector(
          onTap: sendImageGalleryMessage,
          child: CustomSvgPicAsset(
            image: AppImages.paperClipIcon,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Gap(8.w),
      ],
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Column(
  //       children: [
  //         const ChatViewAppbar(),
  //         Gap(11.h),
  //         //const AccountInfoView(),
  //         _buidMessgageWidget(),
  //         // _textEditAndTool()
  //       ],
  //     ),
  //   );
  // }

  Future<void> closeRecorder() async {
    if (audioRecorderKey.currentState != null) {
      await audioRecorderKey.currentState!.stopRecorder();
      audioRecorderKey.currentState!.closeRecorder();
      setState(() {
        isRecording = false;
        isRecordingCompleted = false;
      });
    }
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
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
