import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../core/utlis/assets/app_images.dart';
import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/custom_svg_pic_asset.dart';

class CustomEnabledSearchBarView extends StatelessWidget {
  const CustomEnabledSearchBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 60,
        right: 20,
        left: 20,
      ),
      child: CustomTextView(),
    );
  }
}

class CustomTextView extends StatelessWidget {
  const CustomTextView({
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
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const CustomSvgPicAsset(
                  image: AppImages.filterIcon,
                  color: AppColors.grayColor,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const CustomSvgPicAsset(
                  image: AppImages.cameraIcon,
                  color: AppColors.grayColor,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const CustomSvgPicAsset(
                  image: AppImages.micIcon,
                  color: AppColors.grayColor,
                ),
              ),
            ],
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
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: color),
    );
  }
}
