import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class ContinerSlide extends StatelessWidget {
  const ContinerSlide({super.key, required this.opacity});
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        color: AppColors.lightBlueColor,
        width: 60,
        height: 5,
      ),
    );
  }
}
