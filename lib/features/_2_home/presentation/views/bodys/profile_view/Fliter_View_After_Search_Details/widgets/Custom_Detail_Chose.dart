import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Row_Detail.dart';

class CustomDetailChose extends StatelessWidget {
  const CustomDetailChose({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 149.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowDetail(
              data: "Check in ",
              textdate: "11/28/2021",
            ),
            RowDetail(
              data: "Check out ",
              textdate: "01/28/2022",
            ),
            RowDetail(
              data: "Owner name ",
              textdate: "Anderson",
            ),
            RowDetail(
              data: "Transaction type ",
              textdate: "Rent",
            ),
          ],
        ),
      ),
    );
  }
}
