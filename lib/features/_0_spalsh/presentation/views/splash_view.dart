import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_font_families.dart';

import '../../../../core/utlis/assets/app_colors.dart';
import '../../../../core/utlis/assets/app_images.dart';
import '../../../../core/utlis/assets/font_styles.dart';

import '../../../../generated/l10n.dart';
import 'welcome_one_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPinkColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(flex: 6, child: SizedBox()),
            SvgPicture.asset(AppImages.splashLogo),
            const Expanded(flex: 3, child: SizedBox()),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeOneView(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(AppColors.yellowColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              child: SizedBox(
                width: 190,
                height: 40,
                child: Center(
                  child: Text(
                    S.of(context).startNow,
                    style: FontStyles.textStyle18Bold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            const Text(
              "Made with TMP",
              style: TextStyle(
                fontFamily: AppFontFamilies.ralewayFont,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            const Text(
              "v.1.0",
              style: TextStyle(
                fontFamily: AppFontFamilies.ralewayFont,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
