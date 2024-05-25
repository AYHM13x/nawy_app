import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomNumberOfRooms extends StatefulWidget {
  const CustomNumberOfRooms({super.key});

  @override
  State<CustomNumberOfRooms> createState() => _CustomNumberOfRoomsState();
}

class _CustomNumberOfRoomsState extends State<CustomNumberOfRooms> {
  late int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "اجمالي الغرف :",
          style: FontStyles.textStyle14Reg,
        ),
        Gap(10),
        Row(
          children: [
            GusterNumbeerOfRoom(
              color: isSelected == 0 ? AppColors.pickColor : Color(0xffF5F4F8),
              data: "6",
              onTap: () {
                setState(() {
                  isSelected = 0;
                });
              },
            ),
            GusterNumbeerOfRoom(
              color: isSelected == 1 ? AppColors.pickColor : Color(0xffF5F4F8),
              data: "5",
              onTap: () {
                setState(() {
                  isSelected = 1;
                });
              },
            ),
            GusterNumbeerOfRoom(
              color: isSelected == 2 ? AppColors.pickColor : Color(0xffF5F4F8),
              data: "4",
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
              },
            ),
            GusterNumbeerOfRoom(
              color: isSelected == 3 ? AppColors.pickColor : Color(0xffF5F4F8),
              data: "3>",
              onTap: () {
                setState(() {
                  isSelected = 3;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

class GusterNumbeerOfRoom extends StatelessWidget {
  GusterNumbeerOfRoom({
    super.key,
    required this.onTap,
    required this.color,
    required this.data,
  });
  final Function() onTap;
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(data), Image.asset("assets/images/pngs/Text.png")],
        ),
      ),
    );
  }
}
// GestureDetector
