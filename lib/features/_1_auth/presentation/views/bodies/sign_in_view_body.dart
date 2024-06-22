import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/features/_1_auth/presentation/manger/cubit/auth_cubit.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:nawy_app/features/_1_auth/presentation/views/widgets/costum_row_text_login.dart';
import '../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../core/utlis/assets/app_images.dart';
import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../core/utlis/widgets/custom_elevated_botton.dart';
import '../../../../_2_home/presentation/views/home_view.dart';
import '../sign_up_view.dart';
import '../widgets/custom_column_text_from_filed.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({
    super.key,
  });

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().signInFormKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SvgPicture.asset(AppImages.signin),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "تسجيل الدخول ",
                      style: FontStyles.textStyle22Bold,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomColumnTextFromFiled(),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 278.w,
                      height: 60.h,
                      child: CustomElevatedBotton(
                          backgroundtext: Colors.white,
                          AppColors.yellowColor,
                          data: "تسجيل الدخول", onPressed: () {
                        if (context
                            .read<AuthCubit>()
                            .signInFormKey
                            .currentState!
                            .validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ),
                          );
                        }
                      }),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomRowtextlogin(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ),
                        );
                      },
                      data: "اليس لديك حساب؟ ",
                      datatext: "سجل الان",
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
