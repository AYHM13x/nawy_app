import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Opacity(
          opacity: .1,
          child: Container(
            height: 2.h,
            color: Colors.black,
          ),
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: const Text("أو"),
        ),
        Expanded(
            child: Opacity(
          opacity: .1,
          child: Container(
            height: 2.h,
            color: Colors.black,
          ),
        )),
      ],
    );
  }
}
