import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class SplaseView extends StatelessWidget {
  const SplaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pinkColor,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          SvgPicture.asset(AppImages.splashLogo),
          const Expanded(child: SizedBox()),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(AppColors.yellowColor)),
            child: const Text("ابدأ الان"),
          ),
          SizedBox(
            height: 46,
          ),
          Text(
            "Made with 5llo",
            style: FontStyles.textStyle18Bold
                .copyWith(color: Colors.white, fontWeight: FontWeight.w200),
          ),
          Text(
            "v.1.0",
            style: FontStyles.textStyle18Bold.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
