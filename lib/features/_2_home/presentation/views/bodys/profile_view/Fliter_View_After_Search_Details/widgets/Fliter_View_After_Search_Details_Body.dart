import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Custom_Detail_Chose.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Custom_Detail_Push.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Custom_Payment_Method.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Fliter_View_After_Search_Copy.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Row_Detail.dart';

class FliterViewAfterSearchDetailsBody extends StatelessWidget {
  const FliterViewAfterSearchDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FliterViewAfterSearchCopy(),
          Gap(32.h),
          Text(
            "تفاصيل المناقلة",
            style: FontStyles.textStyle16Bold,
          ),
          Gap(16.h),
          CustomDetailChose(),
          Gap(32.h),
          Text(
            "تفاصيل الدفع",
            style: FontStyles.textStyle16Bold,
          ),
          Gap(16.h),
          CustomDetailPush(),
          Gap(16.h),
          Text(
            "طريقة الدفع",
            style: FontStyles.textStyle16Bold,
          ),
          Gap(16.h),
          CustomPaymentMethod()
        ],
      ),
    );
  }
}
