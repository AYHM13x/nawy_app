import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Custom_Text_Fild.dart';

class CustomRowTextField extends StatelessWidget {
  const CustomRowTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomTextFild(),
        CustomTextFild(),
        CustomTextFild(),
        CustomTextFild(),
      ],
    );
  }
}
