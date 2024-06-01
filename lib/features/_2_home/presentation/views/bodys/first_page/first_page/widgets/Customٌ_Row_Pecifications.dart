import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class Customspecifications extends StatelessWidget {
  const Customspecifications({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowWidgetItem(
            data: "5x7 m²",
            icon: Icons.square,
          ),
          RowWidgetItem(
            data: "2 حمام",
            icon: Icons.bathroom,
          ),
          RowWidgetItem(
            data: "3 غرف",
            icon: Icons.bed,
          ),
        ],
      ),
    );
  }
}

class RowWidgetItem extends StatelessWidget {
  const RowWidgetItem({super.key, required this.data, required this.icon});
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));
    return Row(
      children: [
        Text(
          data,
          style: FontStyles.textStyle14Reg,
        ),
        SizedBox(
          height: 12.h, // تحديد الارتفاع بوحدات متناسقة
          width: 12.w,
          child: Icon(
            icon,
            color: Colors.amber,
            size: 12.sp,
          ),
        )
      ],
    );
  }
}
