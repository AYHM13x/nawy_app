import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';

class CustomSaleAndRecent extends StatelessWidget {
  const CustomSaleAndRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "سعر البيع",
          style: FontStyles.textStyle14Reg,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffF5F4F8),
              borderRadius: BorderRadius.circular(25)),
          child: const CustomTextformfiled(
              hintText: "سعر المبيع",
              icon: Icons.attach_money,
              keyboardType: TextInputType.number),
        ),
        const Text(
          "سعر الاجار",
          style: FontStyles.textStyle14Reg,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffF5F4F8),
              borderRadius: BorderRadius.circular(25)),
          child: const CustomTextformfiled(
              hintText: "سعر الاجار",
              icon: Icons.attach_money,
              keyboardType: TextInputType.number),
        )
      ],
    );
  }
}
