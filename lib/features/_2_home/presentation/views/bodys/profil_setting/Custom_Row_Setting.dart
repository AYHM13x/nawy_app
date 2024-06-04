import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Row_Setting.dart';

class CustomRowSetting extends StatelessWidget {
  const CustomRowSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowSetting(
          data: 'محمد خليل',
          icon: Icons.person,
        ),
        Gap(24.h),
        RowSetting(
          data: '+62 112-3288-9111 ',
          icon: Icons.phone,
        ),
        Gap(24.h),
        RowSetting(
          data: 'Mathew@email.com',
          icon: Icons.email,
        ),
      ],
    );
  }
}
