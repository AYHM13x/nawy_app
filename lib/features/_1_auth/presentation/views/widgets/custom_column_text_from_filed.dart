import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_1_auth/presentation/manger/cubit/auth_cubit.dart';

class CustomColumnTextFromFiled extends StatefulWidget {
  const CustomColumnTextFromFiled({super.key});

  @override
  State<CustomColumnTextFromFiled> createState() =>
      _CustomColumnTextFromFiledState();
}

class _CustomColumnTextFromFiledState extends State<CustomColumnTextFromFiled> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: const Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(25)),
            width: 353,
            height: 48,
            child: CustomTextformfiled(
              validator: (value) {
                return value != null && !EmailValidator.validate(value)
                    ? "Enter a valid email"
                    : null;
              },
              controlle: context.read<AuthCubit>().signInEmail,
              keyboardType: TextInputType.text,
              hintText: "البريد الالكتروني",
              icon: Icons.email,
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            decoration: BoxDecoration(
                color: const Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(25)),
            width: 353,
            height: 48,
            child: CustomTextformfiled(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                },
                controlle: context.read<AuthCubit>().signInPassword,
                isPassword: isShowPassword ? false : true,
                keyboardType: TextInputType.number,
                hintText: " كلمة السر",
                icon: Icons.phone,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    icon: isShowPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off))))
      ],
    );
  }
}
