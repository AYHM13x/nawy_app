import 'package:flutter/material.dart';
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
    return Container(
        width: double.infinity,
        height: 250,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // عدد الأعمدة
            crossAxisSpacing: 8.0, // المسافة بين الأعمدة
            mainAxisSpacing: 8.0,
          ),
          children: [
            Container(
              height: 10,
              width: 10,
              child: customElevatedBotton(
                backgroundtext: isSelected == 0 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    isSelected = 0;
                  });
                },
                isSelected == 0 ? AppColors.pickColor : Colors.white,
                data: "كوخ",
              ),
            ),
            Container(
              height: 74,
              width: 61,
              child: customElevatedBotton(
                backgroundtext: isSelected == 1 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    isSelected = 1;
                  });
                },
                isSelected == 1 ? AppColors.pickColor : Colors.white,
                data: "فيلا",
              ),
            ),
            Container(
              height: 74,
              width: 61,
              child: customElevatedBotton(
                backgroundtext: isSelected == 2 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    isSelected = 2;
                  });
                },
                isSelected == 2 ? AppColors.pickColor : Colors.white,
                data: "فندق",
              ),
            ),
            Container(
              height: 74,
              width: 61,
              child: customElevatedBotton(
                backgroundtext: isSelected == 3 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    isSelected = 3;
                  });
                },
                isSelected == 3 ? AppColors.pickColor : Colors.white,
                data: "شقة",
              ),
            ),
            Container(
              height: 74,
              width: 61,
              child: customElevatedBotton(
                backgroundtext: isSelected == 4 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    isSelected = 4;
                  });
                },
                isSelected == 4 ? AppColors.pickColor : Colors.white,
                data: "بيت",
              ),
            ),
          ],
        ));
  }
}
