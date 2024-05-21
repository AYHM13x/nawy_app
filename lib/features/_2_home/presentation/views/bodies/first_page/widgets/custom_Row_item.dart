import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class customRowitem extends StatelessWidget {
  const customRowitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "شقة للايجار",
          style: FontStyles.textStyle14Reg,
        ),
        SizedBox(
          width: 40,
        ),
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