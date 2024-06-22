import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/features/_1_auth/presentation/manger/cubit/auth_cubit.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/widgets/Custom_Row_Elevated_Google_And_apple.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/widgets/costum_row_text_login.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/widgets/custom_divider.dart';

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
    return SingleChildScrollView(
      child: SafeArea(
        child: Form(
          key: context.read<AuthCubit>().signUpFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SvgPicture.asset(AppImages.signUpImage),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "إنشاء حساب",
                  style: FontStyles.textStyle22Bold,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomColumnTextFromFiledSignUp(),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 278.w,
                  height: 60.h,
                  child: CustomElevatedBotton(
                      backgroundtext: Colors.white,
                      AppColors.yellowColor,
                      data: "إنشاء", onPressed: () {
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
                SizedBox(
                  height: 20.h,
                ),
                const CustomDivider(),
                SizedBox(
                  height: 20.h,
                ),
                CustomRowElevatedGoogleAndApple(),
                SizedBox(
                  height: 20.h,
                ),
                CustomRowtextlogin(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
                  },
                  data: "  لديك حساب؟",
                  datatext: "تسجيل الدخول",
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
