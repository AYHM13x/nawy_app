import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Custom_Column_Text_From_Filed.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SvgPicture.asset(AppImages.signin),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "تسجيل الدخول ",
                  style: FontStyles.textStyle22Bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomColumnTextFromFiled(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 278,
                  height: 60,
                  child: customElevatedBotton(AppColors.yellowColor,
                      data: "تسجيل الدخول", onPressed: () {}),
                ),
                const SizedBox(
                  height: 20,
                ),
                customRowtextlogin(
                  data: "اليس لديك حساب؟ ",
                  datatext: "سجل الان",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
