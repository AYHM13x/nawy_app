import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class CoustomRowElevatedBottom extends StatelessWidget {
  const CoustomRowElevatedBottom(
      {super.key, required this.opacity, required this.opacity2});
  final double opacity;
  final double opacity2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
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
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
