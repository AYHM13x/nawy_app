import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../../../../core/utlis/assets/app_images.dart';

class ThirdSectionDetailsProperty extends StatelessWidget {
  const ThirdSectionDetailsProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          AppImages.bedIcon,
        ),
        Gap(4.5.w),
        Text(
          "3 ${S.of(context).rooms}",
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w100,
            color: const Color(0xff000929).withOpacity(0.7),
          ),
        ),
        Gap(9.w),
        SvgPicture.asset(
          AppImages.bathIcon,
        ),
        Gap(4.5.w),
        Text(
          "2 ${S.of(context).bath}",
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w100,
            color: const Color(0xff000929).withOpacity(0.7),
          ),
        ),
        const Expanded(child: SizedBox()),
        Text(
          " 3500ريال/شهر",
          style: FontStyles.textStyle14Reg.copyWith(
            color: const Color(0xff0066FF),
          ),
        )
      ],
    );
  }
}
