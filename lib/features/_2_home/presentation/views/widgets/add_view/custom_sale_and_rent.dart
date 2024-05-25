import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomSaleAndRent extends StatefulWidget {
  const CustomSaleAndRent({super.key});

  @override
  State<CustomSaleAndRent> createState() => _CustomSaleAndRentState();
}

class _CustomSaleAndRentState extends State<CustomSaleAndRent> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomElevatedBotton(
          backgroundtext: isSelected == 0 ? Colors.white : Colors.black,
          onPressed: () {
            setState(() {
              isSelected = 0;
            });
          },
          isSelected == 0 ? AppColors.pickColor : Colors.white,
          data: "بيع",
        ),
        CustomElevatedBotton(
          backgroundtext: isSelected == 1 ? Colors.white : Colors.black,
          onPressed: () {
            setState(() {
              isSelected = 1;
            });
          },
          isSelected == 1 ? AppColors.pickColor : Colors.white,
          data: "اجار",
        ),
      ],
    );
  }
}
