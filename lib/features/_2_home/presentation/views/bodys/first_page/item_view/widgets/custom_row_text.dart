import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "شقة للاجار(عمارة)",
            style: FontStyles.textStyle18Reg,
          ),
          Text(
            "منذ شهرين",
            style:
                FontStyles.textStyle14Reg.copyWith(color: AppColors.pickColor),
          )
        ],
      ),
    );
  }
}
