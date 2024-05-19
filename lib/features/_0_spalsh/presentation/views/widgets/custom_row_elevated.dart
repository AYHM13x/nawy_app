import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

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
            child: const customElevatedBotton(
                data: "التالي", AppColors.yellowColor)),
        const SizedBox(
          height: 30,
        ),
        customElevatedBotton(data: "تخطي", Colors.white)
      ],
    );
  }
}
