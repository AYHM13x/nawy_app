import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class RowSetting extends StatelessWidget {
  const RowSetting({super.key, required this.data, required this.icon});
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352.w,
      height: 48.h,
      decoration: BoxDecoration(
          color: Color(0xffF5F4F8), borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          Text(
            data,
            style: FontStyles.textStyle14Reg,
          ),
        ],
      ),
    );
  }
}
