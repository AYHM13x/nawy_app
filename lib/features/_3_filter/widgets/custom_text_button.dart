import 'package:flutter/material.dart';

import '../../../core/utlis/assets/font_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.text,
    required this.color,
    this.onPressed,
  });

  final double width, height, radius;
  final String text;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () {},
        style: const ButtonStyle(
            // backgroundColor: WidgetStatePropertyAll(color),
            // shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            //   RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(radius),
            //   ),
            // ),
            ),
        child: Text(
          text,
          style: FontStyles.textStyle16Bold.copyWith(
            color: color == Colors.white ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
