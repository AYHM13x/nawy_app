import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../core/utlis/assets/font_styles.dart';

class SpaceItemFilterView extends StatelessWidget {
  const SpaceItemFilterView({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 37.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isSelected ? AppColors.darkPinkColor : Colors.transparent,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: FontStyles.textStyle14Reg.copyWith(
          fontWeight: FontWeight.w700,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
