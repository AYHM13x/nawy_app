import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
<<<<<<< HEAD:lib/features/_0_spalsh/presentation/views/splash_view.dart
=======
import 'package:nawy_app/features/spalshe_and%20welcom_view/welcom_1_view.dart';
>>>>>>> f566b63da5cf201e168ba5cf6269d980d1c8528e:lib/features/spalshe_and welcom_view/spalshe_view.dart

import 'welcom_one_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            SvgPicture.asset(AppImages.splashLogo),
            const Expanded(flex: 1, child: SizedBox()),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomOneView(),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: Text(
                  "ابدأ الان",
                  style:
                      FontStyles.textStyle18Bold.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            Text(
              "Made with TMP",
              style: FontStyles.textStyle18Bold
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w200),
            ),
            Text(
              "v.1.0",
              style: FontStyles.textStyle18Bold.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
