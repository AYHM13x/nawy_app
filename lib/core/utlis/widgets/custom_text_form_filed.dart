import 'package:flutter/material.dart';

class customTextformfiled extends StatelessWidget {
  const customTextformfiled(
      {super.key, required this.hintText, required this.icon});
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
    );
  }
}
