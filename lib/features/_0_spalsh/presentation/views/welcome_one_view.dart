import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/welcome_tow_view.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';

import 'appbars/custom_app_bar.dart';
import 'widgets/custom_row_elevated.dart';

class WelcomeOneView extends StatelessWidget {
  const WelcomeOneView({super.key});

  @override
  Widget build(BuildContext context) {
// Size(width, height)
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            SvgPicture.asset(AppImages.welcomOneImage),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "اهلا بك",
              style: FontStyles.textStyle18Bold,
            ),
            Text(
                ("ناوي , منصة متكاملة توفر لكم مجموعة واسعة من المنتجات والخدمات"),
                style: FontStyles.textStyle18Bold),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 40.h,
              ),
            ),
            const CustomRowElevatedBottom(
              opacity2: .1,
              opacity: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 150.w,
              height: 60.h,
              child: CustomElevatedBotton(
                data: "التالي ",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcometowView(),
                    ),
                  );
                },
                AppColors.yellowColor,
                backgroundtext: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 97.w,
              height: 42.h,
              child: CustomElevatedBotton(
                  backgroundtext: Colors.black, data: "تخطي ", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInView()));
              }, AppColors.backgroundGrayColor),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
