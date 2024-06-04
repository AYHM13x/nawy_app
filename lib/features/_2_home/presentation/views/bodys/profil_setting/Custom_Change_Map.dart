import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomChangeMap extends StatelessWidget {
  const CustomChangeMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289.25,
      height: 60,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(55))),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.yellowColor)),
        child: Text(
          "تغيير موقعي",
          style: FontStyles.textStyle16Bold,
        ),
        onPressed: () {},
      ),
    );
  }
}
