import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

import 'appbars/coustom_app_bar.dart';
import 'widgets/custom_row_elevated.dart';

class WelcomeOneView extends StatelessWidget {
  const WelcomeOneView({super.key});

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
                SvgPicture.asset("assets/images/pana.svg"),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "ابحث عن افضل السيارات وارقامها للشراء او للايجار او كوسيط بافضل الاسعار",
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
                coustomRowElevatedBottom(),
                Container(
                  width: 150,
                  height: 60,
                  child: customElevatedBotton(
                      data: "التالي ", onPressed: () {}, AppColors.yellowColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 97,
                  height: 42,
                  child: customElevatedBotton(
                      data: "تخطي ", onPressed: () {}, Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
