import 'package:flutter/material.dart';

class CustomRowTime extends StatelessWidget {
  const CustomRowTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF5F4F8), borderRadius: BorderRadius.circular(100)),
      width: 100,
      height: 52,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("00.21"),
          Icon(Icons.alarm),
        ],
      ),
    );
  }
}
