import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';

class CustomColumnTextFromFiledSignUp extends StatelessWidget {
  const CustomColumnTextFromFiledSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const customTextformfiled(
              hintText: "البريد الالكتروني",
              icon: Icons.email,
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const customTextformfiled(
              hintText: "رقم الهاتف",
              icon: Icons.phone,
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const customTextformfiled(
              hintText: "كلمة المرور",
              icon: Icons.lock,
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Color(0xffF5F4F8),
            width: 353,
            height: 48,
            child: const customTextformfiled(
              hintText: "تأكيد كلمة المرور",
              icon: Icons.lock,
            )),
      ],
    );
  }
}
