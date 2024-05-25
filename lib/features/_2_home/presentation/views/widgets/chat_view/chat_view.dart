import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/dimensions_of_screen.dart';
import 'account_info_view.dart';
import 'chat_view_two.dart';

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
                  child: const ChatViewTwo(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
