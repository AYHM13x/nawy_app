import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_botton.dart';
import 'package:nawy_app/generated/l10n.dart';

class coustomRowElevatedBottom extends StatelessWidget {
  const coustomRowElevatedBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Opacity(
              opacity: .1,
              child: Container(
                color: AppColors.pinkColor,
                height: 3,
                width: 31,
              ),
            ),
            Container(
              color: AppColors.pinkColor,
              height: 3,
              width: 31,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            height: 60,
            width: 150,
            child: customElevatedBotton(
                onPressed: () {}, data: "التالي", AppColors.yellowColor)),
        const SizedBox(
          height: 30,
        ),
        customElevatedBotton(onPressed: () {}, data: "تخطي", Colors.white),
        SizedBox(
          height: 60,
          width: 150,
          child: CustomTextBotton(
            data: S.of(context).next,
            color: AppColors.yellowColor,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextBotton(
          data: S.of(context).skip,
          color: Colors.white,
        ),
      ],
    );
  }
}
