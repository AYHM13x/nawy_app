import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class CustomRowElevatedBottom extends StatelessWidget {
  const CustomRowElevatedBottom(
      {super.key, required this.opacity, required this.opacity2});
  final double opacity;
  final double opacity2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: opacity2,
          child: Container(
            color: AppColors.darkPinkColor,
            height: 3,
            width: 31,
          ),
        ),
        Opacity(
          opacity: opacity,
          child: Container(
            color: AppColors.darkPinkColor,
            height: 3,
            width: 31,
          ),
        ),
      ],
    );
  }
}
