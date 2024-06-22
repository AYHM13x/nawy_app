import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/welcome_three.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';

import 'appbars/custom_app_bar.dart';
import 'widgets/custom_row_elevated.dart';

class WelcometowView extends StatelessWidget {
  const WelcometowView({super.key});

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
              SvgPicture.asset(AppImages.pana),
              SizedBox(
                height: 40.h,
              ),
              Text(
                " قم ببيع وشراء او ايجار السياؤات والعقارات عبر تطبيقنا بكل سهولة بمساعدة المسوقين والمشاهير\r",
                style: FontStyles.textStyle18Bold,
              ),
              const Expanded(flex: 2, child: SizedBox()),
              const CustomRowElevatedBottom(
                opacity2: .1,
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
                        builder: (context) => const WelcomeThree(),
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
