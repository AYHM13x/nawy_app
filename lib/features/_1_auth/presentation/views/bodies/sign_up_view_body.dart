import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/features/_1_auth/presentation/manger/cubit/auth_cubit.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/widgets/costum_row_text_login.dart';

import '../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../core/utlis/assets/app_images.dart';
import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../core/utlis/widgets/custom_elevated_botton.dart';
import '../../../../_2_home/presentation/views/home_view.dart';
import '../sign_in_view.dart';
import '../widgets/custom_column_text_from_filed_sign_up.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: context.read<AuthCubit>().signUpFormKey,
              child: Column(
                children: [
                  SvgPicture.asset(AppImages.signUpImage),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "تسجيل الدخول ",
                    style: FontStyles.textStyle22Bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomColumnTextFromFiledSignUp(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 278,
                    height: 60,
                    child: CustomElevatedBotton(
                        backgroundtext: Colors.white,
                        AppColors.yellowColor,
                        data: "تسجيل الان", onPressed: () {
                      if (context
                          .read<AuthCubit>()
                          .signUpFormKey
                          .currentState!
                          .validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInView(),
                          ),
                        );
                      }
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomRowtextlogin(
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
      ),
    );
  }
}
