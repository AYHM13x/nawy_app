import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:nawy_app/features/_2_home/presentation/views/widgets/chat_view/chat_list_view.dart';

import 'account_info_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const AccountInfoView(),
              const Gap(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: DimensionsOfScreen.dimensionsOfHeight(context, 62),
                  child: const ChatListView(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
