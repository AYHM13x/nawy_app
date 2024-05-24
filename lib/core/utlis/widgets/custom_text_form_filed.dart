import 'package:flutter/material.dart';

class CustomTextformfiled extends StatefulWidget {
  const CustomTextformfiled({
    super.key,
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    this.isPassword = false,
    this.suffixIcon,
  });
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget? suffixIcon;

  @override
  State<CustomTextformfiled> createState() => _CustomTextformfiledState();
}

class _CustomTextformfiledState extends State<CustomTextformfiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      validator: (value) {
        if (value!.isEmpty) {
          return "field is required";
        } else {
          return "";
        }
      },
      decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          focusColor: Colors.white,
          prefixIcon: Icon(widget.icon),
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
    );
  }
}
