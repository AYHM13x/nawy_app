import 'package:flutter/material.dart';

class CustomTextformfiled extends StatefulWidget {
  const CustomTextformfiled({
    super.key,
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    this.isPassword = false,
    this.suffixIcon,
    this.controlle,
    this.validator,
  });
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextEditingController? controlle;
  final String? Function(String?)? validator;
  @override
  State<CustomTextformfiled> createState() => _CustomTextformfiledState();
}

class _CustomTextformfiledState extends State<CustomTextformfiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controlle,
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
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
