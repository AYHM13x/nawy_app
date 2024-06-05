import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Continer_Sale.dart';

class CustomRowSaleAndPush extends StatelessWidget {
  const CustomRowSaleAndPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 70.h,
      child: Row(
        children: [
          const Expanded(
            child: ContinerSale(
              dataInt: "30",
              dataTow: "شراء",
            ),
          ),
          Gap(10.w),
          const Expanded(
            child: ContinerSale(
              dataInt: "12",
              dataTow: "شراء",
            ),
          ),
          Gap(10.w),
          const Expanded(
            child: ContinerSale(
              dataInt: "28",
              dataTow: "شراء",
            ),
          ),
        ],
      ),
    );
  }
}
