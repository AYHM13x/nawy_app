import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utlis/assets/app_images.dart';
import '../../../../core/utlis/assets/font_styles.dart';

class SecondSectionDetailsProperty extends StatelessWidget {
  const SecondSectionDetailsProperty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "شقة سكنية للبيع",
          style: FontStyles.textStyle14Reg.copyWith(
            fontSize: 15,
            color: const Color(0xff122D4D),
          ),
        ),
        const Gap(3),
        Row(
          children: [
            Text(
              "شارع الملك سلمان-الرياض",
              style: FontStyles.textStyle14Reg.copyWith(
                fontSize: 11,
                color: const Color(0xff415770),
              ),
            ),
            const Gap(4.5),
            SvgPicture.asset(
              AppImages.pinIcon,
            )
          ],
        ),
      ],
    );
  }
}
