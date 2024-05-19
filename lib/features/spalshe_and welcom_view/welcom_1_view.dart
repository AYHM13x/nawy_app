import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/spalshe_view.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/wodgets/coustom_app_bar.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/wodgets/custom_row_elevated.dart';

class WelcomOneView extends StatelessWidget {
  const WelcomOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const coustomAppar(),
              SvgPicture.asset(AppImages.pana),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "ابحث عن افضل السيارات وارقامها للشراء او للايجار او كوسيط",
                style: FontStyles.textStyle16Bold,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "شارك ممتلكاتك وروج لها عن طريق تطبيقنا وعن طريق المسوقين",
                style: FontStyles.textStyle14Reg,
              ),
              const SizedBox(
                height: 40,
              ),
              coustomRowElevatedBottom()
            ],
          ),
        ),
      ),
    );
  }
}
