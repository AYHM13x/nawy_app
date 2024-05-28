import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mime/mime.dart';
import 'package:uuid/uuid.dart';
import 'package:voice_message_package/voice_message_package.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../../core/utlis/functions/random_string.dart';
import 'profile_images_bubble_chat.dart';

class ChatViewTwo extends StatefulWidget {
  const ChatViewTwo({super.key});

  @override
  State<ChatViewTwo> createState() => _ChatViewTwoState();
}

class _ChatViewTwoState extends State<ChatViewTwo> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  // String cacheMessage = "";
  // late types.PartialText partialText;

  @override
  void initState() {
    super.initState();
    // partialText = PartialText(text: cacheMessage);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Chat(
      messages: _messages,
      onSendPressed: _handleSendPressed,
      onAttachmentPressed: _handleAttachmentPressed,
      bubbleBuilder: _bubbleBuilder,
      audioMessageBuilder: _audioMessageBuilder,
      user: _user,
      showUserAvatars: true,
      theme: DefaultChatTheme(
        backgroundColor: Colors.transparent,
        inputBackgroundColor: Colors.transparent,
        inputBorderRadius: BorderRadius.circular(20),
        inputContainerDecoration: BoxDecoration(
          border: Border.all(color: AppColors.blueColor),
          borderRadius: BorderRadius.circular(20),
        ),
        inputTextColor: Colors.black,
        inputTextStyle: FontStyles.textStyle14Reg,
        inputSurfaceTintColor: Colors.red,
        sentMessageBodyTextStyle: FontStyles.textStyle14Reg,
        receivedMessageBodyTextStyle: FontStyles.textStyle14Reg,
        inputPadding: const EdgeInsets.all(8),
        attachmentButtonIcon: SvgPicture.asset(AppImages.cameraIcon),
      ),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  Widget _bubbleBuilder(
    Widget child, {
    required message,
    required nextMessageInGroup,
  }) {
    return Bubble(
      style: const BubbleStyle(),
      color: AppColors.backgroundGrayColor,
      margin: nextMessageInGroup
          ? const BubbleEdges.only(
              bottom: 10,
            )
          : null,
      nip: nextMessageInGroup
          ? BubbleNip.no
          : _user.id != message.author.id
              ? BubbleNip.leftBottom
              : BubbleNip.rightBottom,
      radius: const Radius.circular(20),
      padding: const BubbleEdges.only(
        right: 16,
        left: 29,
        top: 4,
        bottom: 10,
      ),
      child: child,
    );
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: randomString(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  Widget _audioMessageBuilder(types.AudioMessage audioMessage,
      {required int messageWidth}) {
    final isMine =
        audioMessage.author.id == '82091008-a484-4a89-ae75-a22bf8d6f3ac';
    return VoiceMessageView(
      backgroundColor: isMine ? AppColors.goldColor : AppColors.greenColor,
      controller: VoiceController(
        audioSrc: audioMessage.uri,
        maxDuration: audioMessage.duration,
        onComplete: () {},
        onPause: () {},
        onPlaying: () {},
        isFile: false,
      ),
    );
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }
}
