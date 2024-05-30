import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:nawy_app/generated/intl/messages_ar.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/dimensions_of_screen.dart';
import '../../../../../../core/utlis/widgets/custom_svg_pic_asset.dart';
import 'account_info_view.dart';
import 'chat_list_view.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  List<String> messages = [];
  String text = "";

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Column(
      children: [
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 75) -
              mediaQueryData.viewInsets.bottom,
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const SliverToBoxAdapter(
                child: Center(
                  child: AccountInfoView(),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: ChatListView(
                        messages: messages,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  messages.add(text);
                  text = "";
                  _textEditingController.clear();
                  _scrollController
                      .jumpTo(_scrollController.position.maxScrollExtent + 50);
                });
              },
              icon: SvgPicture.asset(AppImages.sendIcon),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
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
                  SizedBox(
                    width: DimensionsOfScreen.dimensionsOfWidth(context, 67),
                    child: TextField(
                      controller: _textEditingController,
                      onChanged: (value) {
                        text = value;
                      },
                      onSubmitted: (value) {
                        setState(() {
                          text = value;
                          messages.add(value);
                          _textEditingController.clear();
                          _scrollController.jumpTo(
                              _scrollController.position.maxScrollExtent);
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
            ),
          ],
        )
      ],
    );
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

// class tt extends StatelessWidget {
//   const tt({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverFillRemaining(
//           child: Column(
//             children: [
//               const AccountInfoView(),
//               const Gap(8),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 21),
//                 child: SizedBox(
//                   height: DimensionsOfScreen.dimensionsOfHeight(context, 56),
//                   child: const ChatListView(),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

//new
// SizedBox(
//           height: 48,
//           width: DimensionsOfScreen.dimensionsOfWidth(context, 99),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: SvgPicture.asset(AppImages.sendIcon),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(

//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   prefixIcon: IconButton(
//                     onPressed: () {},
//                     icon: SvgPicture.asset(AppImages.emojiIcon),
//                   ),
//                   suffixIcon: SizedBox(
//                     width: 45,
//                     child: Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: SvgPicture.asset(AppImages.cameraIcon),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: SvgPicture.asset(AppImages.recordIcon),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: SvgPicture.asset(AppImages.paperClipIcon),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
