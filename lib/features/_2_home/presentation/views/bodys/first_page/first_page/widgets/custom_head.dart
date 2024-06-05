import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_Row_Notafication_And_Image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_row_city.dart';

class CustomHead extends StatelessWidget {
  const CustomHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.r),
          bottomRight: Radius.circular(100.r),
        ),
        color: AppColors.pickColor,
      ),

      height: 150.h, // تحديد الارتفاع بوحدات متناsقة
      child: Padding(
        padding: EdgeInsets.only(
          top: 50.h,
          left: 40.w,
          right: 40.w,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customRowNotaficationAndImage(),
            CustomRowCity(),
          ],
        ),
      ),
    );
  }
}
