import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowCode extends StatelessWidget {
  const CustomRowCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "لم تتلقى الكود؟",
          style: FontStyles.textStyle14Reg,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "اعد الأرسال",
            style: FontStyles.textStyle14Reg.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
