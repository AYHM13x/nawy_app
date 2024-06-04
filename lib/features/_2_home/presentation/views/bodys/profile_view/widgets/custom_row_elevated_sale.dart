import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomRowElevatedSale extends StatefulWidget {
  const CustomRowElevatedSale({super.key});

  @override
  State<CustomRowElevatedSale> createState() => _CustomRowElevatedSaleState();
}

class _CustomRowElevatedSaleState extends State<CustomRowElevatedSale> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Color(0xffF5F4F8),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: CustomElevatedBotton(
              data: 'المناقلات',
              onPressed: () {
                setState(() {
                  isSelected = 0;
                });
              },
              backgroundtext:
                  // isSelected == 0 ? Colors.white : AppColors.darkPinkColor,
                  Colors.black,
              isSelected == 0 ? Colors.white : Color(0xffF5F4F8),
            ),
          ),
          Expanded(
            child: CustomElevatedBotton(
              data: 'الشراء',
              onPressed: () {
                setState(() {
                  isSelected = 1;
                });
              },
              backgroundtext: Colors.black,
              isSelected == 1 ? Colors.white : Color(0xffF5F4F8),
            ),
          ),
          Expanded(
            child: CustomElevatedBotton(
              data: 'البيع',
              onPressed: () {
                setState(() {
                  isSelected = 2;
                });
              },
              isSelected == 2 ? Colors.white : Color(0xffF5F4F8),
              backgroundtext: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
