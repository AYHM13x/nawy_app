import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowStreet extends StatelessWidget {
  const CustomRowStreet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 7.h, // تحديد الارتفاع بوحدات متناسقة
          width: 6.w, // تحديد العرض بوحدات متناسقة
          child: Icon(
            Icons.location_off,
            size: 6.w, // ضبط الحجم ليكون متناسقاً مع العرض المحدد
          ),
        ),
        Gap(8.w),
        Text(
          "الرياض-شارع الملك سلمان",
          style: FontStyles.textStyle9Reg,
        )
      ],
    );
  }
}
