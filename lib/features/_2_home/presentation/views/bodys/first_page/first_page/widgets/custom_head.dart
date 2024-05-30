import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_Row_Notafication_And_Image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_row_city.dart';

class CustomHead extends StatelessWidget {
  const CustomHead({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(ScreenUtil().setWidth(100)),
          bottomRight: Radius.circular(ScreenUtil().setWidth(100)),
        ),
        color: AppColors.pickColor,
      ),
      // width: 411,
      height: ScreenUtil().setHeight(150), // تحديد الارتفاع بوحدات متناsقة
      child: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil()
              .setHeight(50), // تحديد المسافة العلوية بوحدات متناسقة
          left:
              ScreenUtil().setWidth(30), // تحديد المسافة اليسرى بوحدات متناسقة
          right: ScreenUtil().setWidth(30),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customRowNotaficationAndImage(),
            CustomRowCity(),
          ],
        ),
      ),
    );
  }
}
