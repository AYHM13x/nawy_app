// ignore_for_file: unused_local_variable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nawy_app/generated/l10n.dart';
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
  final ScrollController _listScrollController = ScrollController();
  // final ScrollController _textScrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  List<String> messages = ["mm", "mm", "mm"];
  bool isEmojiKeyBoardShow = false;
  //path audio file
  String filePath = "";
  bool isRecording = false;
  bool isRecordingCompleted = false;
  //widget audio Recording
  late AudioRecoder audioRecoder;
  //key widget audio Recording to can stop audio Recording when click btn send without stop Recording
  final GlobalKey<AudioRecoderState> audioRecorderKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    //initlized widget
    audioRecoder = AudioRecoder(
      key: audioRecorderKey,
      willRecording: true,
      checkMic: (isRecordingCompleted1, isRecording1, filePath1) {
        setState(() {
          isRecordingCompleted = isRecordingCompleted1;
          isRecording = isRecording1;
          filePath = filePath1;
        });
      },
    );
  }

  Widget _textEditAndTool() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: eventBtnSend,
                  icon: SvgPicture.asset(AppImages.sendIcon),
                ),
                Gap(3.w),
                isRecording || isRecordingCompleted
                    ? audioPlayerWidget()
                    : _textEditForm()
              ],
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
        onTap: eventOnTap,
        onSubmitted: eventOnSubmitted,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: S.of(context).typeHere,
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),
          errorBorder: border(),
          constraints: BoxConstraints(maxHeight: 50),
          prefixIcon: _toolMessagePrefixIcon(),
          suffixIcon: IconButton(
            onPressed: eventBtnEmoji,
            icon: SvgPicture.asset(AppImages.emojiIcon),
          ),
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

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChatViewAppbar(),
            Gap(11.h),
            //const AccountInfoView(),
            _buidMessgageWidget(),
            _textEditAndTool()
          ],
        ),
      ),
    );
  }

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

  void eventBtnSend() {
    closeRecorder();
    setState(() {
      if (_textEditingController.text.isNotEmpty) {
        sendTextMessage(_textEditingController.text);
      }
    });
  }

  void eventOnTap() {
    setState(() {
      if (isEmojiKeyBoardShow) {
        isEmojiKeyBoardShow = false;
      }
    });
  }

  void eventOnSubmitted(String txt) {
    setState(() {
      if (_textEditingController.text.isNotEmpty) {
        sendTextMessage(_textEditingController.text);
      }
    });
  }

  void eventBtnEmoji() async {
    if (!isEmojiKeyBoardShow) {
      FocusManager.instance.primaryFocus?.unfocus();
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 200), () {
        isEmojiKeyBoardShow = !isEmojiKeyBoardShow;
      });
      setState(() {});
    } else {
      isEmojiKeyBoardShow = !isEmojiKeyBoardShow;
      setState(() {});
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
