import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class CustomLogOutSetting extends StatelessWidget {
  const CustomLogOutSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      height: 60.h,
      decoration: BoxDecoration(
          color: AppColors.goldColor,
          borderRadius: BorderRadius.all(Radius.circular(55.r))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout),
          Text(
            "تسجيل الخروج",
          ),
        ],
      ),
    );
  }
}
