import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Image_Profil.dart';

class ConnectwithUsBody extends StatelessWidget {
  const ConnectwithUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Gap(38.h),
        Text(
          "تواصل معنا وقم بارسال ملاحضاتك وشكواتك عبر البريد الالكتروني من خلال ملئ الحقل ادناه",
          style: FontStyles.textStyle12Reg,
        ),
        Gap(48.h),
        Container(
          height: 209.h,
          width: 303.w,
          decoration: BoxDecoration(
              color: AppColors.backgroundGrayColor,
              borderRadius: BorderRadius.circular(25)),
        ),
        Expanded(flex: 1, child: SizedBox()),
        CustomBackAndSure(),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}

class CustomBackAndSure extends StatelessWidget {
  const CustomBackAndSure({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 135.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
          ),
          child: CustomElevatedBotton(
              backgroundtext: Colors.white,
              AppColors.yellowColor,
              data: "تأكيد",
              onPressed: () {}),
        ),
        Container(
          width: 135.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
          ),
          child: CustomElevatedBotton(AppColors.backgroundGrayColor,
              data: "عودة", onPressed: () {
            Navigator.pop(context);
          }),
        ),
      ],
    );
  }
}
