import 'package:flutter/material.dart';

class customTextformfiled extends StatelessWidget {
  const customTextformfiled(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.keyboardType});
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: (value) {
        if (value!.isEmpty) {
          return "field is required";
        }
      },
      decoration: InputDecoration(
          focusColor: Colors.white,
          prefixIcon: Icon(icon),
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
    );
  }
}
