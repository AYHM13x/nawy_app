import 'package:flutter/material.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(25)),
      height: 150,
      width: 300,
    );
  }
}
