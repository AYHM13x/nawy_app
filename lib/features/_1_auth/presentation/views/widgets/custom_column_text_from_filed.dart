import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';

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
            child: const CustomTextformfiled(
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
