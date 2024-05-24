import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

import '../../../../../../core/utlis/assets/app_images.dart';

class ChatViewAppbar extends StatelessWidget {
  const ChatViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.pickColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 23,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 47,
            height: 47,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.accountImageProfile),
                ),
              ),
            ),
          ),
          const Gap(8),
          Text(
            "مكتب الشاهين",
            style: FontStyles.textStyle14Reg.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const Gap(8),
          const SizedBox(
            width: 11,
            height: 11,
            child: CircleAvatar(
              backgroundColor: AppColors.greenColor,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.phoneIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.infoIconChat),
          )
        ],
      ),
    );
  }
}
