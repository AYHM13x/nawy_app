import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              width: 112,
              height: 112,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.accountImageProfile),
                ),
              ),
            ),
            const Gap(8),
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
        const Positioned(
          top: 100,
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircleAvatar(
              backgroundColor: AppColors.greenColor,
            ),
          ),
        ),
      ],
    );
  }
}
