import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/functions/random_string.dart';
import '../../../../../../core/utlis/widgets/custom_svg_pic_asset.dart';
import '../../appbars/chat_view/chat_view_appbar.dart';
import '../../widgets/chat_view/account_info_view.dart';
import '../../widgets/chat_view/chat_list_view.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  List<String> messages = [];
  String text = "";

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: mediaQueryData.viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ChatViewAppbar(),
            const Gap(11),
            const AccountInfoView(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: ChatListView(
                  messages: messages,
                  scrollController: _scrollController,
                ),
              ),
            ),
            // to here
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (text.isNotEmpty) {
                          sendTextMessage(text);
                        }
                      });
                    },
                    icon: SvgPicture.asset(AppImages.sendIcon),
                  ),
                  const Gap(8),
                  GestureDetector(
                    onTap: () {},
                    child: CustomSvgPicAsset(
                      image: AppImages.cameraIcon,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const Gap(8),
                  GestureDetector(
                    child: CustomSvgPicAsset(
                      image: AppImages.recordIcon,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const Gap(8),
                  GestureDetector(
                    child: CustomSvgPicAsset(
                      image: AppImages.paperClipIcon,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const Gap(8),
                  Expanded(
                    // width: DimensionsOfScreen.dimensionsOfWidth(context, 67),
                    child: TextField(
                      controller: _textEditingController,
                      onChanged: (value) {
                        text = value;
                      },
                      onSubmitted: (value) {
                        setState(() {
                          if (text.isNotEmpty) {
                            text = value;
                            sendTextMessage(value);
                          }
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: border(),
                        enabledBorder: border(),
                        focusedBorder: border(),
                        disabledBorder: border(),
                        errorBorder: border(),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppImages.emojiIcon),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendTextMessage(String value) {
    messages.add(value);
    _textEditingController.clear();
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent + 50);
    text = "";
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
