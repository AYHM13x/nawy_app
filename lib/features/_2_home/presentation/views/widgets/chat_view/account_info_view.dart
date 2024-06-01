import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/app_images.dart';

class AccountInfoView extends StatelessWidget {
  const AccountInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 112.w,
              height: 112.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.accountImageProfile),
                ),
              ),
            ),
            Gap(8.h),
            Text(
              "مكتب الشاهين",
              style: FontStyles.textStyle18Bold,
            ),
            Text(
              "للسياحة والسفر",
              style: FontStyles.textStyle14Reg,
            ),
          ],
        ),
        Positioned(
          top: 100.h,
          child: SizedBox(
            width: 16.w,
            height: 16.h,
            child: const CircleAvatar(
              backgroundColor: AppColors.greenColor,
            ),
          ),
        ),
      ],
    );
  }
}
