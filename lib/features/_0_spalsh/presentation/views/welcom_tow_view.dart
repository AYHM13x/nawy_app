import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';

import 'appbars/coustom_app_bar.dart';
import 'widgets/custom_row_elevated.dart';

class WelcometowView extends StatelessWidget {
  const WelcometowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                SvgPicture.asset(AppImages.WelcomTow),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "ابحث عن اهم الاماكن للاقامة او للايجار او كوسيط بافضل الاسعار",
                  style: FontStyles.textStyle16Bold,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "شارك ممتلكاتك وروج لها عن طريق تطبيقنا وعن طريق المسوقين",
                  style: FontStyles.textStyle14Reg,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CoustomRowElevatedBottom(
                  opacity2: 1,
                  opacity: 1,
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: customElevatedBotton(
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
                    background: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 97,
                  height: 42,
                  child: customElevatedBotton(
                    data: "تخطي ",
                    onPressed: () {},
                    Colors.white,
                    background: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
