import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Custom_Text_Fild.dart';

class CustomRowTextField extends StatefulWidget {
  const CustomRowTextField({super.key});

  @override
  State<CustomRowTextField> createState() => _CustomRowTextFieldState();
}

class _CustomRowTextFieldState extends State<CustomRowTextField> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OtpInput(_fieldOne, true), // auto focus
        OtpInput(_fieldTwo, false),
        OtpInput(_fieldThree, false),
        OtpInput(_fieldFour, false),
      ],
    );
  }
}
