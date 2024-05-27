import 'package:flutter/material.dart';

class CustomIconBottom extends StatelessWidget {
  const CustomIconBottom(
      {super.key, required this.onPressed, required this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: IconButton(
          onPressed: () {
            onPressed;
          },
          icon: Icon(icon)),
    );
  }
}
