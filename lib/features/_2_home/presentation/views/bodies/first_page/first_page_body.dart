import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/Custom_List_View_Item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/custom_chose_bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/custom_head.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/custom_places.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/custom_searsh.dart';
import 'package:nawy_app/features/_3_filter/bodies/filter_view_body.dart';
import 'package:nawy_app/features/_3_filter/filter_view.dart';

class FirstPagebody extends StatelessWidget {
  const FirstPagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHead(),
        SizedBox(
          height: 10,
        ),
        customSearsh(),
        SizedBox(
          height: 10,
        ),
        customchosebotton(),
        CustomListViewItem(),
        SizedBox(
          height: 20,
        ),
        Text(
          "اهم الاماكن :",
          style: FontStyles.textStyle16Bold,
        ),
        CustomPlaces()
      ],
    );
  }
}