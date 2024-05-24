import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomAppBarAddView extends StatelessWidget {
  const CustomAppBarAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: AppColors.pickColor,
          width: double.infinity,
          height: 64,
          child: Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "اضافة عقار",
                  style:
                      FontStyles.textStyle18Bold.copyWith(color: Colors.white),
                ),
                IconButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
