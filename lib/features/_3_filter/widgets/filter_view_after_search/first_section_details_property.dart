import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            fontSize: 12.sp,
            fontFamily: AppFontFamilies.poppinsFont,
            color: const Color(0xff8997A9),
          ),
        ),
        Gap(5.w),
        SvgPicture.asset(
          AppImages.starIcon,
          width: 13.87.w,
          height: 13.h,
        ),
        Gap(16.w),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffEBFCEA),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 6.w,
            vertical: 1.h,
          ),
          child: Text(
            S.of(context).licensed,
            style: FontStyles.textStyle14Reg.copyWith(
              color: AppColors.greenColor,
              fontSize: 11.sp,
            ),
          ),
        ),
      ],
    );
  }
}
