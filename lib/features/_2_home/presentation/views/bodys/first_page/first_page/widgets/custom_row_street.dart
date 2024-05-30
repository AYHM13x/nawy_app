import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowStreet extends StatelessWidget {
  const CustomRowStreet({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));
    return Row(
      children: [
        Icon(Icons.location_off),
        SizedBox(
          width: ScreenUtil().setWidth(8), // تحديد العرض بوحدات متناسقة
        ),
        Text(
          "الرياض-شارع الملك سلمان",
          style: FontStyles.textStyle9Reg,
        )
      ],
    );
  }
}
