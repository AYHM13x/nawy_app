import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/widgets/custom_Row_Notafication_And_Image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/widgets/custom_row_city.dart';

class CustomHead extends StatelessWidget {
  const CustomHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100)),
        color: AppColors.pickColor,
      ),
      width: 411,
      height: 150,
      child: const Padding(
        padding: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customRowNotaficationAndImage(),
            SizedBox(
              width: 50,
            ),
            CustomRowCity(),
          ],
        ),
      ),
    );
  }
}
