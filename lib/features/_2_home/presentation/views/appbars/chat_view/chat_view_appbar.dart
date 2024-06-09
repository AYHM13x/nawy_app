import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 23.w,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 47.w,
            height: 47.h,
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
          Gap(8.w),
          Text(
            "مكتب الشاهين",
            style: FontStyles.textStyle14Reg.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Gap(8.w),
          SizedBox(
            width: 11.w,
            height: 11.h,
            child: const CircleAvatar(
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
