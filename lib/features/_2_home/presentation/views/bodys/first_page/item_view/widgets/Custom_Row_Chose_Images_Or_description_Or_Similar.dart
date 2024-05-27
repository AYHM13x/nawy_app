import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Continer_Chose.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Specifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Specification_Section.dart';

class CustomRowChoseImagesOrdescriptionOrSimilar extends StatefulWidget {
  const CustomRowChoseImagesOrdescriptionOrSimilar({super.key});

  @override
  State<CustomRowChoseImagesOrdescriptionOrSimilar> createState() =>
      _CustomRowChoseImagesOrdescriptionOrSimilarState();
}

class _CustomRowChoseImagesOrdescriptionOrSimilarState
    extends State<CustomRowChoseImagesOrdescriptionOrSimilar> {
  late int isSelected = 0;
  // Widget _buildSelectedContent() {
  //   switch (isSelected) {
  //     case 0:
  //       return CustomRowSpecifications();

  //     case 1:
  //       return Container(child: Text('صور')); // قم باستبدالها بالويدجت المناسب
  //     case 2:
  //       return Container(
  //           child: Text('مشابهة')); // قم باستبدالها بالويدجت المناسب
  //     default:
  //       return Container(child: Text('وصف')); // الافتراضي
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      child: Row(
        children: [
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 0;
                });
              },
              color: isSelected == 0 ? AppColors.darkPinkColor : Colors.white,
              data: "وصف",
            ),
          ),
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 1;
                });
              },
              color: isSelected == 1 ? AppColors.darkPinkColor : Colors.white,
              data: "صور",
            ),
          ),
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
              },
              color: isSelected == 2 ? AppColors.darkPinkColor : Colors.white,
              data: "مشابهة",
            ),
          ),
        ],
      ),
    );
  }
}
