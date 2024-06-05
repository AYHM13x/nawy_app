import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowitem extends StatelessWidget {
  const CustomRowitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("شقة للايجار",
            style:
                // TextStyle(fontSize: 14)
                FontStyles.textStyle14Reg),
        Gap(20.w),
        Row(
          children: [
            Text(
              "25000/",
              style: FontStyles.textStyle18Bold
                  .copyWith(color: AppColors.pickColor),
            ),
            Text(
              "شهر",
              style: FontStyles.textStyle14Reg,
            ),
          ],
        ),
      ],
    );
  }
}
