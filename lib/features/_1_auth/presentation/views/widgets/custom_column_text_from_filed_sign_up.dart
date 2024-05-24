import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';

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
            color: const Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const CustomTextformfiled(
              keyboardType: TextInputType.emailAddress,
              hintText: "البريد الالكتروني",
              icon: Icons.email,
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: const Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const CustomTextformfiled(
              keyboardType: TextInputType.number,
              hintText: "رقم الهاتف",
              icon: Icons.phone,
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: const Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: CustomTextformfiled(
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
        const SizedBox(
          height: 10,
        ),
        Container(
            color: const Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: CustomTextformfiled(
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
