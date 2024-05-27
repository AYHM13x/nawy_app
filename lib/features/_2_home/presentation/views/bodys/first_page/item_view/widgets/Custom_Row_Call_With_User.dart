import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomRowCallWithUser extends StatelessWidget {
  const CustomRowCallWithUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedBotton(
            backgroundtext: Colors.white,
            AppColors.yellowColor,
            data: "تواصل معنا",
            onPressed: () {}),
        Column(
          children: [Text("الاسعر النهائي"), Text("350\$/شهر")],
        )
      ],
    );
  }
}
