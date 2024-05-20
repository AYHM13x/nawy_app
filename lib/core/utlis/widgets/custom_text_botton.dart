import 'package:flutter/material.dart';

class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton({
    super.key,
    required this.data,
    required this.color,
    this.onPressed,
  });
  final String data;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color),
      ),
      onPressed: () {},
      child: Text(data),
    );
  }
}
