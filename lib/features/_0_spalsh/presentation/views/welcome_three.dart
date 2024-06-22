import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/appbars/custom_app_bar.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/widgets/custom_row_elevated.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';

class WelcomeThree extends StatelessWidget {
  const WelcomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const CustomAppBar(),
              // SvgPicture.asset(AppImages.pana),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "يمكنك حجز رحلتك وتحديد الفندق بناء على وجهتك  \n ونطاق الأسعار المناسبة لك مع ناوي ",
                style: FontStyles.textStyle16Bold,
              ),
              const Expanded(flex: 2, child: SizedBox()),
              const CustomRowElevatedBottom(
                opacity2: 1,
                opacity: 1,
              ),
              Gap(15.h),
              SizedBox(
                width: 150.w,
                height: 60.h,
                child: CustomElevatedBotton(
                  data: "التالي ",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
                  },
                  AppColors.yellowColor,
                  backgroundtext: Colors.white,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: 97.w,
                height: 42.h,
                child: CustomElevatedBotton(
                  data: "تخطي ",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
                  },
                  AppColors.backgroundGrayColor,
                  backgroundtext: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
