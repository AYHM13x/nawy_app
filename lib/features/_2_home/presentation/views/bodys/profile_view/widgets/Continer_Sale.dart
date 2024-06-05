import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class ContinerSale extends StatelessWidget {
  const ContinerSale({super.key, required this.dataInt, required this.dataTow});
  final String dataInt;
  final String dataTow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      height: 70.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.black),
              vertical: BorderSide(color: Colors.black))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dataInt,
            style: FontStyles.textStyle14Reg,
          ),
          Text(
            dataTow,
            style: FontStyles.textStyle9Reg,
          ),
        ],
      ),
    );
  }
}
