import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class ElevatedSetting extends StatelessWidget {
  const ElevatedSetting({super.key, required this.icon, required this.data});
  final IconData icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 353.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: AppColors.backgroundGrayColor,
            borderRadius: BorderRadius.all(Radius.circular(25.r))),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Text(
                    data,
                    style: FontStyles.textStyle12Reg,
                  )
                ],
              ),
              GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
            ],
          ),
        ));
  }
}
