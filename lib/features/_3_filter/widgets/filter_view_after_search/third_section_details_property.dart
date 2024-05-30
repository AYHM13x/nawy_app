import 'package:flutter/material.dart';
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
        const Gap(4.5),
        Text(
          "3 ${S.of(context).rooms}",
          style: FontStyles.textStyle14Reg.copyWith(
            // fontSize: 10,
            fontWeight: FontWeight.w100,
            color: const Color(0xff000929).withOpacity(0.7),
          ),
        ),
        const Gap(9),
        SvgPicture.asset(
          AppImages.bathIcon,
        ),
        const Gap(4.5),
        Text(
          "2 ${S.of(context).bath}",
          style: FontStyles.textStyle14Reg.copyWith(
            // fontSize: 10,
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
