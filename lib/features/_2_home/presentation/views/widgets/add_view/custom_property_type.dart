import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomPropertytype extends StatefulWidget {
  const CustomPropertytype({super.key});

  @override
  State<CustomPropertytype> createState() => _CustomPropertytypeState();
}

class _CustomPropertytypeState extends State<CustomPropertytype> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 247,
        height: 138,
        child: Column(
          children: [
            Row(
              children: [
                CustomElevatedBotton(
                  backgroundtext: isSelected == 0 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      isSelected = 0;
                    });
                  },
                  isSelected == 0 ? AppColors.pickColor : Colors.white,
                  data: "كوخ",
                ),
                CustomElevatedBotton(
                  backgroundtext: isSelected == 1 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      isSelected = 1;
                    });
                  },
                  isSelected == 1 ? AppColors.pickColor : Colors.white,
                  data: "فيلا",
                ),
                CustomElevatedBotton(
                  backgroundtext: isSelected == 2 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      isSelected = 2;
                    });
                  },
                  isSelected == 2 ? AppColors.pickColor : Colors.white,
                  data: "فندق",
                ),
              ],
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedBotton(
                  backgroundtext: isSelected == 3 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      isSelected = 3;
                    });
                  },
                  isSelected == 3 ? AppColors.pickColor : Colors.white,
                  data: "شقة",
                ),
                CustomElevatedBotton(
                  backgroundtext: isSelected == 4 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      isSelected = 4;
                    });
                  },
                  isSelected == 4 ? AppColors.pickColor : Colors.white,
                  data: "بيت",
                ),
              ],
            )
          ],
        ));
  }
}
