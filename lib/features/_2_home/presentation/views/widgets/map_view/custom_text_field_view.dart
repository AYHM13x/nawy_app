import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';

import '../../../../../../generated/l10n.dart';
import 'custom_svg_pic_asset.dart';

class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: TextField(
        maxLines: 1,
        style: FontStyles.textStyle14Reg,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: S.of(context).searchLocation,
          hintStyle: FontStyles.textStyle14Reg.copyWith(
            color: AppColors.grayColor,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grayColor,
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(child: SizedBox()),
                GestureDetector(
                  child: const CustomSvgPicAsset(
                    image: AppImages.filterIcon,
                    color: AppColors.grayColor,
                  ),
                ),
                const Gap(10),
                GestureDetector(
                  child: const CustomSvgPicAsset(
                    image: AppImages.cameraIcon,
                    color: AppColors.grayColor,
                  ),
                ),
                const Gap(10),
                GestureDetector(
                  child: const CustomSvgPicAsset(
                    image: AppImages.micIcon,
                    color: AppColors.grayColor,
                  ),
                ),
                const Gap(10),
              ],
            ),
          ),
          border: rounderBorder(color: Colors.transparent),
          enabledBorder: rounderBorder(color: Colors.transparent),
          focusedBorder: rounderBorder(color: Colors.transparent),
        ),
      ),
    );
  }

  OutlineInputBorder rounderBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide(color: color),
    );
  }
}
