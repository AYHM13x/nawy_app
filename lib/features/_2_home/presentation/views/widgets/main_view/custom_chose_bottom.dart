import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class customchosebotton extends StatefulWidget {
  const customchosebotton({super.key});

  @override
  State<customchosebotton> createState() => _customchosebottonState();
}

class _customchosebottonState extends State<customchosebotton> {
  late int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customElevatedBotton(
          data: 'الكل',
          onPressed: () {
            setState(() {
              isSelected = 0;
            });
          },
          backgroundtext:
              isSelected == 0 ? Colors.white : AppColors.darkPinkColor,
          isSelected == 0 ? AppColors.darkPinkColor : Colors.white,
        ),
        customElevatedBotton(
          data: 'بيوت',
          onPressed: () {
            setState(() {
              isSelected = 1;
            });
          },
          backgroundtext:
              isSelected == 1 ? Colors.white : AppColors.darkPinkColor,
          isSelected == 1 ? AppColors.darkPinkColor : Colors.white,
        ),
        customElevatedBotton(
          data: 'فلل',
          onPressed: () {
            setState(() {
              isSelected = 2;
            });
          },
          isSelected == 2 ? AppColors.darkPinkColor : Colors.white,
          backgroundtext:
              isSelected == 2 ? Colors.white : AppColors.darkPinkColor,
        ),
        customElevatedBotton(
          data: 'شقق',
          onPressed: () {
            setState(() {
              isSelected = 3;
            });
          },
          isSelected == 3 ? AppColors.darkPinkColor : Colors.white,
          backgroundtext:
              isSelected == 3 ? Colors.white : AppColors.darkPinkColor,
        ),
      ],
    );
  }
}
