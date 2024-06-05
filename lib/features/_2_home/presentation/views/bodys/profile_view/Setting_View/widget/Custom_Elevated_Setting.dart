import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Setting_View/widget/Elevated_Setting.dart';

class CustomElevatedSetting extends StatelessWidget {
  const CustomElevatedSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ElevatedSetting(
          data: "المعلومات الشخصية",
          icon: Icons.border_color_outlined,
        ),
        Gap(16.h),
        const ElevatedSetting(
          data: "الاعدادات",
          icon: Icons.lock,
        ),
        Gap(16.h),
        const ElevatedSetting(
          data: "تواصل معنا",
          icon: Icons.message,
        ),
        Gap(16.h),
        const ElevatedSetting(
          data: "تقييم التطبيق",
          icon: Icons.logout,
        ),
        Gap(16.h),
      ],
    );
  }
}
