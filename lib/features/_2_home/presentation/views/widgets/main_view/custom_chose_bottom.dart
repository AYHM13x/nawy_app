import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/widgets/custom_elevated_botton.dart';

class Customchosebotton extends StatefulWidget {
  const Customchosebotton({super.key});

  @override
  State<Customchosebotton> createState() => _CustomchosebottonState();
}

class _CustomchosebottonState extends State<Customchosebotton> {
  late int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomElevatedBotton(
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
        CustomElevatedBotton(
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
        CustomElevatedBotton(
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
        CustomElevatedBotton(
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