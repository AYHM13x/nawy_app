import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomRowChoseYearAndMonth extends StatefulWidget {
  const CustomRowChoseYearAndMonth({super.key});

  @override
  State<CustomRowChoseYearAndMonth> createState() =>
      _CustomRowChoseYearAndMonth();
}

class _CustomRowChoseYearAndMonth extends State<CustomRowChoseYearAndMonth> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 247,
        height: 138,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedBotton(
              backgroundtext: isSelected == 0 ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  isSelected = 0;
                });
              },
              isSelected == 0 ? AppColors.pickColor : Colors.white,
              data: "سنة",
            ),
            Gap(5),
            CustomElevatedBotton(
              backgroundtext: isSelected == 1 ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  isSelected = 1;
                });
              },
              isSelected == 1 ? AppColors.pickColor : Colors.white,
              data: "شهر",
            ),
          ],
        ));
  }
}
