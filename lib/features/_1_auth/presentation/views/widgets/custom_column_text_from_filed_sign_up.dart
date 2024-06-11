import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/manger/cubit/auth_cubit.dart';

class CustomColumnTextFromFiledSignUp extends StatefulWidget {
  const CustomColumnTextFromFiledSignUp({super.key});

  @override
  State<CustomColumnTextFromFiledSignUp> createState() =>
      _CustomColumnTextFromFiledSignUpState();
}

class _CustomColumnTextFromFiledSignUpState
    extends State<CustomColumnTextFromFiledSignUp> {
  bool isShowPassword1 = false;
  bool isShowPassword2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.r),
              color: const Color(0xffF5F4F8),
            ),
            width: 353.w,
            height: 48.h,
            child: CustomTextformfiled(
              validator: (value) {
                return value != null && !EmailValidator.validate(value)
                    ? "Enter a valid email"
                    : null;
              },
              controlle: context.read<AuthCubit>().signUpEmail,
              keyboardType: TextInputType.text,
              hintText: "البريد الالكتروني",
              icon: Icons.email,
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.r),
              color: const Color(0xffF5F4F8),
            ),
            width: 353.w,
            height: 48.h,
            child: CustomTextformfiled(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controlle: context.read<AuthCubit>().signUpPhoneNumber,
              keyboardType: TextInputType.number,
              hintText: "رقم الهاتف",
              icon: Icons.phone,
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.r),
              color: const Color(0xffF5F4F8),
            ),
            width: 353.w,
            height: 48.h,
            child: CustomTextformfiled(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              controlle: context.read<AuthCubit>().signUpPassword,
              isPassword: !isShowPassword1,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword1 = !isShowPassword1;
                    });
                  },
                  icon: isShowPassword1
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
              keyboardType: TextInputType.text,
              hintText: "كلمة المرور",
              icon: Icons.lock,
            )),
        SizedBox(
          height: 10.h,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.r),
              color: const Color(0xffF5F4F8),
            ),
            width: 353.w,
            height: 48.h,
            child: CustomTextformfiled(
              validator: (value) {
                final password = context.read<AuthCubit>().signUpPassword.text;
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                if (value != password) {
                  return 'Password does not match';
                }
                return null;
              },
              isPassword: !isShowPassword2,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword2 = !isShowPassword2;
                    });
                  },
                  icon: isShowPassword2
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
              keyboardType: TextInputType.number,
              hintText: "تأكيد كلمة المرور",
              icon: Icons.lock,
            )),
      ],
    );
  }
}
