import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Row_Detail.dart';

class CustomDetailPush extends StatelessWidget {
  const CustomDetailPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 193.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowDetail(
              data: "Period time",
              textdate: "2 month",
            ),
            RowDetail(
              data: "Monthly payment ",
              textdate: r"$ 220",
            ),
            RowDetail(
              data: "Discount",
              textdate: r"-$ 88",
            ),
            Container(
              width: double.infinity,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Color(0xffF5F4F8),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    r"$ 31,250",
                    style: FontStyles.textStyle18Bold,
                  ),
                  Text(
                    "Total",
                    style: FontStyles.textStyle18Bold,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
