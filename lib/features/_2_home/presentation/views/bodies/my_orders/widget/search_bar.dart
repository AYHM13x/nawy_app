import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        maxLines: 1,
        style: FontStyles.textStyle14Reg,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: S.of(context).searchLocation,
          hintStyle: FontStyles.textStyle14Reg.copyWith(
            color: AppColors.grayColor,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grayColor,
          ),
          border: InputBorder.none,
          suffixIcon: const Row(
            mainAxisSize:
                MainAxisSize.min, // Added to prevent Row from expanding
            children: [
              Icon(Icons.camera_alt, color: Colors.grey),
              SizedBox(width: 10),
              Icon(Icons.filter_list, color: Colors.grey),
            ],
          ),
          isDense: true, // To adjust the vertical alignment
        ),
      ),
    );
  }
}
