import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utlis/assets/app_colors.dart';
import '../../../../core/utlis/assets/app_font_families.dart';
import '../../../../core/utlis/assets/app_images.dart';
import '../../../../core/utlis/assets/font_styles.dart';
import '../../../../generated/l10n.dart';

class FirstSectionDetailsProperty extends StatelessWidget {
  const FirstSectionDetailsProperty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // const Expanded(child: SizedBox()),
        Text(
          "4.33",
          style: FontStyles.textStyle14Reg.copyWith(
            fontSize: 12,
            fontFamily: AppFontFamilies.poppinsFont,
            color: const Color(0xff8997A9),
          ),
        ),
        const Gap(5),
        SvgPicture.asset(
          AppImages.starIcon,
          width: 13.87,
          height: 13,
        ),
        const Gap(16),
        Container(
          decoration: BoxDecoration(
            // color: Colors.red,
            color: const Color(0xffEBFCEA),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 1,
          ),
          child: Text(
            S.of(context).licensed,
            style: FontStyles.textStyle14Reg.copyWith(
              color: AppColors.greenColor,
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}
