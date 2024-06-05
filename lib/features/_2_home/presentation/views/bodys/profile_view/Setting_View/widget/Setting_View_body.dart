import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Setting_View/widget/Custom_Elevated_Setting.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Setting_View/widget/Custom_Log_Out_Setting.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Image_Profil.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Sale_And_Push.dart';

class SettingViewbody extends StatelessWidget {
  const SettingViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(15.h),
            const CustomImageProfil(),
            Gap(10.h),
            Text(
              "محمد خليل",
              style: FontStyles.textStyle16Bold,
            ),
            Gap(10.h),
            Text(
              "5llo@email.com",
              style: FontStyles.textStyle9Reg,
            ),
            Gap(10.h),
            const CustomRowSaleAndPush(),
            Gap(10.h),
            const CustomElevatedSetting(),
            Gap(30.h),
            const CustomLogOutSetting()
          ],
        ),
      ),
    );
  }
}
