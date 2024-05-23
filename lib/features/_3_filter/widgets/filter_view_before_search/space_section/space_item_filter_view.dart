import 'package:flutter/material.dart';

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
      width: 76,
      height: 37,
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
