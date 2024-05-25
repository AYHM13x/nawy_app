import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import '../../../../../../core/utlis/functions/random_string.dart';
import '../../appbars/chat_view/chat_view_appbar.dart';
import '../../widgets/chat_view/chat_view.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          ChatViewAppbar(),
          Gap(11),
          ChatView(),
        ],
      ),
    );
  }
}
