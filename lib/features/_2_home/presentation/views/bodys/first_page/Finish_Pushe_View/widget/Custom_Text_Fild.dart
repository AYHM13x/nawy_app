import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 64,
        decoration: BoxDecoration(
            color: const Color(0xffF5F4F8),
            borderRadius: BorderRadius.circular(10)),
        child: const TextField(
          decoration: InputDecoration(border: UnderlineInputBorder()),
        ));
  }
}
