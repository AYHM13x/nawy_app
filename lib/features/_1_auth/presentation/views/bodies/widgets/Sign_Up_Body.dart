import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Custom_Column_Text_From_Filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Custom_Column_Text_From_Filed_Sign_Up.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Custom_Row_Divider.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/custom_Row_text_login.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SvgPicture.asset(AppImages.Sign_up),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  " تسجيل الان ",
                  style: FontStyles.textStyle22Bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomColumnTextFromFiledSignUp(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 278,
                  height: 60,
                  child: customElevatedBotton(AppColors.yellowColor,
                      data: "تسجيل الان", onPressed: () {}),
                ),
                const CustomRowDivider(),
                CustomSignUpGoogleAndAplle(),
                customRowtextlogin(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
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

class CustomSignUpGoogleAndAplle extends StatelessWidget {
  const CustomSignUpGoogleAndAplle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(AppImages.googleIcon))
      ],
    );
  }
}
