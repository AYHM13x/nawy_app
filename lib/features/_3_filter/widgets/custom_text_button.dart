import 'package:flutter/material.dart';

import '../../../core/utlis/assets/app_colors.dart';
import '../../../core/utlis/assets/font_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.onPressed,
  });

  final double width, height;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(AppColors.goldColor),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(55.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: FontStyles.textStyle16Bold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
