import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/splash_view.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Custom_Column_Text_From_Filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/custom_Row_text_login.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_uo.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class SignInBody extends StatefulWidget {
  SignInBody({
    super.key,
  });

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
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
                      child: customElevatedBotton(
                          backgroundtext: Colors.white,
                          AppColors.yellowColor,
                          data: "تسجيل الدخول", onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ),
                          );
                        }
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customRowtextlogin(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
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
        ),
      ),
    );
  }
}
