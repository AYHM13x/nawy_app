import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/welcom_1_view.dart';

class SplaseView extends StatelessWidget {
  const SplaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.pinkColor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            SvgPicture.asset(AppImages.splashLogo),
            const Expanded(flex: 1, child: SizedBox()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomOneView()),
                );
              },
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.yellowColor)),
              child: Text(
                "ابدأ الان",
                style: FontStyles.textStyle18Reg.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
