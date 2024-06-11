import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomElevatedBotton extends StatelessWidget {
  const CustomElevatedBotton(
    this.colorelevated, {
    super.key,
    required this.data,
    required this.onPressed,
    this.backgroundtext,
  });
  final String data;
  final Color colorelevated;
  final VoidCallback? onPressed;
  final Color? backgroundtext;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colorelevated),
      ),
      onPressed: onPressed,
      child: Text(data,
          style: FontStyles.textStyle16Bold.copyWith(
            color: backgroundtext,
          )),
    );
  }
}
