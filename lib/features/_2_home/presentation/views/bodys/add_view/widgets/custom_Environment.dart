import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class customEnvironment extends StatelessWidget {
  const customEnvironment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "البيئة/المرافق:",
          style: FontStyles.textStyle14Reg,
        )
      ],
    );
  }
}
