import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/welcom_tow_view.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppBar(),
                SvgPicture.asset("assets/images/pana.svg"),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            " ابحث عن افضل السيارات وارقامها للشراءاو للايجار او كوسيط",
                        style: FontStyles.textStyle18Reg
                            .copyWith(color: Colors.black),
                      ),
                      TextSpan(
                          text: ("   بأفضل الأسعار    "),
                          style: FontStyles.textStyle14Reg
                              .copyWith(color: Colors.blue))
                    ],
                  ),
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
                const coustomRowElevatedBottom(
                  opacity2: .1,
                  opacity: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 60,
                  child: customElevatedBotton(
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 97,
                  height: 42,
                  child: customElevatedBotton(data: "تخطي ", onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInView()));
                  }, Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
