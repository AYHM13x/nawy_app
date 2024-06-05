import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class RowDrawer extends StatelessWidget {
  const RowDrawer({super.key, required this.icon, required this.data});
  final IconData? icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
              width: 43.w,
              height: 43.h,
              child: Icon(
                icon,
                color: Colors.black,
              )),
          Text(
            data,
            style: FontStyles.textStyle18Bold,
          ),
        ],
      ),
    );
  }
}
