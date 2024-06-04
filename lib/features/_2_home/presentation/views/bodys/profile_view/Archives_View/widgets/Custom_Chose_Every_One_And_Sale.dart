import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomChoseEveryOneAndSale extends StatefulWidget {
  const CustomChoseEveryOneAndSale({super.key});

  @override
  State<CustomChoseEveryOneAndSale> createState() =>
      _CustomChoseEveryOneAndSaleState();
}

class _CustomChoseEveryOneAndSaleState
    extends State<CustomChoseEveryOneAndSale> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomElevatedBotton(
          data: 'الكل',
          onPressed: () {
            setState(() {
              isSelected = 0;
            });
          },
          backgroundtext: isSelected == 0 ? Colors.white : Colors.black,
          isSelected == 0 ? AppColors.darkPinkColor : Colors.white,
        ),
        CustomElevatedBotton(
          data: 'شراء',
          onPressed: () {
            setState(() {
              isSelected = 1;
            });
          },
          backgroundtext: isSelected == 1 ? Colors.white : Colors.black,
          isSelected == 1 ? AppColors.darkPinkColor : Colors.white,
        ),
        CustomElevatedBotton(
          data: 'بيع',
          onPressed: () {
            setState(() {
              isSelected = 2;
            });
          },
          isSelected == 2 ? AppColors.darkPinkColor : Colors.white,
          backgroundtext: isSelected == 2 ? Colors.white : Colors.black,
        ),
        CustomElevatedBotton(
          data: 'رحلات سفر',
          onPressed: () {
            setState(() {
              isSelected = 3;
            });
          },
          isSelected == 3 ? AppColors.darkPinkColor : Colors.white,
          backgroundtext: isSelected == 3 ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
